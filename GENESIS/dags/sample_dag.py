from datetime import datetime, timedelta
from airflow import DAG
from airflow.operators.bash import BashOperator
import pendulum

local_tz = pendulum.timezone("Europe/Paris")

PROJECT_NAME = "GENESIS"
DBT_RUN_SCRIPTS = "/opt/airflow/dags/ms-genesis-data/GENESIS/orchestration/scripts"
DBT_TARGET = "dev_live"
MAILING_LIST = [""]
PROJECT_ENV = DBT_TARGET[:-5]

# To not modified
default_args = {
    'owner': "GENESIS",
    'depends_on_past': False,
    'start_date': datetime(2022, 9, 2, tzinfo=local_tz),
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# unique dag name. Prefix with dag name with project name
dag = DAG(
    f"GENESIS_project_name", 
    schedule_interval="30 9 * * *", 
    default_args=default_args, 
    catchup=False,
    max_active_runs=1
)

with dag:
    start = BashOperator(
        task_id='start',
        bash_command='echo Started ! "run_id={{ run_id }} | dag_run={{ dag_run }}"'
    )

    staging = BashOperator(
        task_id="staging-models",
        bash_command=f"{DBT_RUN_SCRIPTS}/dbt_run.sh .... "
    )
      
    end = BashOperator(
        task_id='end',
        bash_command='echo Ended !'
    )

    # Workflow dependencies
    start >> staging >> end
