import sqlalchemy as db
from sqlalchemy import exc
import pandas as pd
import MySQLdb


def open_file():
    """
        For reading the csv file.
    """
    try:
        df = pd.read_csv("data/Sample_input.csv", sep="|", index_col=None)
    except IOError:
        print('Cannot open file')
        df = pd.DataFrame()
        return df
    return df


def shape_dataframe(df):
    """
        Shapes the dataframe by deleting the irrelevant columns, renames the columns and changes
        the DOB columns format
    """
    df.pop(df.columns.values[0]), df.pop(df.columns.values[0])
    df.columns = ['Name', 'Cust_I', 'Open_Dt', 'Consul_Dt',
                  'VAC_ID', 'DR_NAME', 'State', 'Country', 'DOB', 'FLAG']
    df['DOB'] = pd.to_datetime(df['DOB'], format='%d%m%Y').dt.strftime('%Y%m%d')
    return df


def create_tables(df):
    """
        Creates the database connection, calls the procedures to create the staging table
        and then loads the data to the staging and calls the procedure to create the final tables.
    """
    try:
        engine = db.create_engine('mysql://root:shubham123@localhost:3306/hospital')
        conn = engine.raw_connection()
        cur = conn.cursor()
    except exc.OperationalError as exp:
        print("Could not connect to the database Error:" + str(exp))

    try:
        cur.callproc('Create_Staging_Table')
    except MySQLdb._exceptions.OperationalError as exp:
        print('Procedure not found Error:' + str(exp))

    try:
        df.to_sql(name='staging', con=engine, if_exists='append', index=False)
    except NameError as exp:
        print('Could not create Table Error:' + str(exp))

    except exc.DataError as exp:
        print('Could not create Table Error:' + str(exp))

    try:
        cur.callproc('Create_Country_Tables')
    except MySQLdb._exceptions.OperationalError as exp:
        print('Procedure not found Error:' + str(exp))


if __name__ == '__main__':
    df = open_file()
    if not df.empty:
        df = shape_dataframe(df)
        create_tables(df)
        print("Tables successfully Created.")
