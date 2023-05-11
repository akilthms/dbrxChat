from databricks import sql
import os
import pandas as pd
import streamlit as st

# conn = snowflake.connector.connect(
#     user=st.secrets["USER_NAME"],
#     password=st.secrets["PASSWORD"],
#     account=st.secrets["ACCOUNT"],
#     warehouse=st.secrets["WAREHOUSE"],
#     role=st.secrets["ROLE"],
#     database=st.secrets["DATABASE"],
#     schema=st.secrets["SCHEMA"],
# )
# create a connection to databricks
connection = sql.connect(
                        server_hostname = st.secrets["SERVER_HOSTNAME"],
                        http_path =st.secrets["HTTP_PATH"],
                        access_token = st.secrets["ACCESS_TOKEN"])

# Create a cursor object.


cur = connection.cursor()



# function - run sql query and return data
def query_data_warehouse(sql: str, parameters=None) -> any:
    """
    Executes snowflake sql query and returns result as data as dataframe.
    Example of parameters
    :param sql: sql query to be executed
    :param parameters: named parameters used in the sql query (defaulted as None)
    :return: dataframe
    """    
    if parameters is None:
        parameters = {}
    query = sql
    
    try:
        cur.execute("USE CATALOG " + st.secrets["CATALOG"])
        cur.execute("USE SCHEMA " + st.secrets["SCHEMA"])
        print(query, parameters)
        cur.execute(query, parameters)
        all_rows = cur.fetchall()
        field_names = [i[0] for i in cur.description]
        
    except Exception as e:
        return e
    
    finally:
        print("closing cursor")

    df = pd.DataFrame(all_rows)
    df.columns = field_names
    return df
