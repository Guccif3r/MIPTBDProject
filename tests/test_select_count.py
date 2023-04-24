import os
import pytest
from . import execute_sql_to_df
from . import read_sql

@pytest.fixture()
def select_script():
    path = os.getenv("SCRIPT_PATH")
    return read_sql(path)

@pytest.fixture()
def select_df(select_script, sqlalchemy_conn):
    return execute_sql_to_df(
        conn=sqlalchemy_conn,
        sql=select_script
    )

def test(select_df):
    assert select_df.query("table_name == 'Customer'", is_local=True)['cnt'].iloc[0] == 3
#     assert select_df.query("table_name == 'Operations1'")['cnt'].iloc[0] == 2
#     assert select_df.query("table_name == 'Operations2'")['cnt'].iloc[0] == 5
    assert select_df.query("table_name == 'Dishes'")['cnt'].iloc[0] == 45
