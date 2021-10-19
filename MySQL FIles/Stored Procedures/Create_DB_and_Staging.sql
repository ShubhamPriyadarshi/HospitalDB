DELIMITER //
drop database if exists hospital;
create database hospital;
use hospital;
drop procedure if exists Create_Staging_Table;
//

DELIMITER $$
CREATE PROCEDURE Create_Staging_Table()
BEGIN
	DROP TABLE IF EXISTS staging;
	CREATE TABLE staging
         (Name VARCHAR(255) PRIMARY KEY     NOT NULL,
         Cust_I VARCHAR(18)  NOT NULL,
         Open_Dt DATE                NOT NULL,
         Consul_Dt        DATE,
         VAC_ID         CHAR(5),
         DR_Name        CHAR(255),
         State        CHAR(5),
         Country        CHAR(5),
         DOB        DATE,
         FLAG        CHAR(1));
END$$
DELIMITER ;