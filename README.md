# HospitalDB

## Requirements

-    Python 3.8.8 (tested)
-    numpy==1.21.2
-    SQLAlchemy==1.4.25
-    pandas==1.3.3
-    mysqlclient==2.0.3
-    MySQL Server 

## Project Structure
  
-   /MySQL Files/hospital.sql - It contains the dump of the database along with the stored procedures used in the project
-   /MySQL FIles/Stored Procedures/Create_DB_and_Staging.sql - This procedure is written to create the database and has the DDL query to construct Staging tables.
-   /MySQL FIles/Stored Procedures/Create_Countries_Tables.sql - This procedure creates the individual country tables from the staging table.
-   /data/Sample_input.csv - This file consists of the raw data to be ingested by the python script.
-   /main.py -  This python file ingests the data from Sample_input, shapes it and ingests it to the mysql database, calling relevant procedures for the problem statement.
-   /tests.py - This python file consists of several unit tests.  
