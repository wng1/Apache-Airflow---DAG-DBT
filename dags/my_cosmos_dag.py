import os
from pathlib import Path
from datetime import datetime
from cosmos import DbtDag, ProjectConfig, ProfileConfig, ExecutionConfig

#Apache Airflow DAG to orchestrate DBT jobs

DEFAULT_DBT_ROOT_PATH = Path(__file__).parent.parent / "dags" / "____________NAME OF FILE___________"
DBT_ROOT_PATH = Path(os.getnev("DBT_ROOT_PATH", DEFAULT_DBT_ROOT_PATH)

profile_config = ProfileConfig(
    profile_name= "_______NAME OF FILE__________"
    target_name="fabric-dev",
    profile_yml_filepath=DBT_ROOT_PATH / "profiles.yml",
)

dbt_fabric_dag = DbtDag(
     project_config=ProjectConfig(DBT_ROOT_PATH,),
     operator_args={"install_deps": True},
     profile_config=profile_config,
     schedule_interval="@daily",
     start_date=datetime(2025, 2, 15),
     catchup=False,
     dag_id="dbt_fabric_dag",
)
