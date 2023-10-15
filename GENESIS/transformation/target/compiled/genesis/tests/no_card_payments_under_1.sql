 -- configuration directly in sql is done like this

-- Singular "business-like" example test to verify there are no credit card payments with amount less than 1.00 EUR

select *
from GENESIS_UAT.PBL_GENESIS.FACT_PAYMENTS
where payment_method = 'credit_card'
and amount < 1