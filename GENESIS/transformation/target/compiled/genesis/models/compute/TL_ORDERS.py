# SnowPark model example 

import snowflake.snowpark.functions as f
from snowflake.snowpark.functions import col, iff, lit
from functools import reduce
from decimal import *

payment_methods = ['credit_card', 'coupon', 'bank_transfer', 'gift_card']

def model(dbt, session):
    dbt.config(materialized = "table")

    df_ord = dbt.ref("SL_ORDERS")
    df_pay = dbt.ref("SL_PAYMENTS")
    
    df_payment_types= df_pay.drop("payment_id").pivot('PAYMENT_METHOD',payment_methods).sum('AMOUNT').na.fill(Decimal(0))
    df_renamed=renameColumns(df_payment_types)

    df_order_payments = df_pay.group_by(col("order_id")).agg([f.sum(col("amount")).alias("total_amount")])
    df_new = df_order_payments.join(df_renamed, df_renamed.order_id == df_order_payments.order_id).drop(df_order_payments.order_id).with_column_renamed(df_renamed.order_id, "order_id")
    df_final = df_ord.join(df_new, df_ord.order_id == df_new.order_id, join_type="left").drop(df_new.order_id).with_column_renamed(df_ord.order_id, "order_id").with_column_renamed(df_new.total_amount, "amount")
    return df_final

def renameColumns(df):
    colscleaned = [col[2:-2] if col.startswith('"') and col.endswith('"') else col for col in df.columns ]
    df_cleaned = reduce(lambda df, 
            idx: df.with_column_renamed(df.columns[idx], colscleaned[idx]), 
            range(len(df.columns)), df)

    colsrenamed = [col+"_AMOUNT" if col.lower() in payment_methods else col for col in df_cleaned.columns ]
    df_renamed = reduce(lambda df_cleaned, 
            idx: df_cleaned.with_column_renamed(df_cleaned.columns[idx], colsrenamed[idx]), 
            range(len(df_cleaned.columns)), df_cleaned)
    return df_renamed


# This part is user provided model code
# you will need to copy the next section to run the code
# COMMAND ----------
# this part is dbt logic for get ref work, do not modify

def ref(*args, **kwargs):
    refs = {"SL_ORDERS": "GENESIS_UAT.STG_GENESIS.SL_ORDERS", "SL_PAYMENTS": "GENESIS_UAT.STG_GENESIS.SL_PAYMENTS"}
    key = '.'.join(args)
    version = kwargs.get("v") or kwargs.get("version")
    if version:
        key += f".v{version}"
    dbt_load_df_function = kwargs.get("dbt_load_df_function")
    return dbt_load_df_function(refs[key])


def source(*args, dbt_load_df_function):
    sources = {}
    key = '.'.join(args)
    return dbt_load_df_function(sources[key])


config_dict = {}


class config:
    def __init__(self, *args, **kwargs):
        pass

    @staticmethod
    def get(key, default=None):
        return config_dict.get(key, default)

class this:
    """dbt.this() or dbt.this.identifier"""
    database = "GENESIS_UAT"
    schema = "CMP_GENESIS"
    identifier = "TL_ORDERS"
    
    def __repr__(self):
        return 'GENESIS_UAT.CMP_GENESIS.TL_ORDERS'


class dbtObj:
    def __init__(self, load_df_function) -> None:
        self.source = lambda *args: source(*args, dbt_load_df_function=load_df_function)
        self.ref = lambda *args, **kwargs: ref(*args, **kwargs, dbt_load_df_function=load_df_function)
        self.config = config
        self.this = this()
        self.is_incremental = False

# COMMAND ----------

# To run this in snowsight, you need to select entry point to be main
# And you may have to modify the return type to text to get the result back
# def main(session):
#     dbt = dbtObj(session.table)
#     df = model(dbt, session)
#     return df.collect()

# to run this in local notebook, you need to create a session following examples https://github.com/Snowflake-Labs/sfguide-getting-started-snowpark-python
# then you can do the following to run model
# dbt = dbtObj(session.table)
# df = model(dbt, session)

