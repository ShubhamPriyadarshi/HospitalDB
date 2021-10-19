DELIMITER //
drop procedure if exists Create_Country_Tables; 
//

DELIMITER $$
CREATE PROCEDURE Create_Country_Tables()
BEGIN
	DROP TEMPORARY TABLE IF EXISTS temp_table;
	CREATE TEMPORARY TABLE temp_table (
		Country char(5)
    );
    
    INSERT temp_table
	SELECT distinct Country FROM staging;
    ALTER TABLE temp_table ADD `idx` INT primary Key NOT NULL AUTO_INCREMENT;
    
    
    SET @v_i = 1;
	SET @v_numrows = (SELECT COUNT(*) FROM temp_table);
	SET @v_indexcount = (SELECT MAX(idx) FROM temp_table);
    
    IF @v_numrows > 0 THEN
    WHILE (@v_i <= @v_indexcount)
    DO
        SET @v_country = (SELECT `Country` FROM temp_table WHERE idx = @v_i);

		
		set @v_drop = CONCAT('DROP TABLE IF EXISTS Table_' , @v_country);
		PREPARE dynamic_statement1  FROM @v_drop;
        EXECUTE dynamic_statement1 ;
        deallocate prepare dynamic_statement1 ;
		
        set @v_sql = CONCAT('create table Table_' , @v_country , ' AS SELECT Name, Cust_I, Open_Dt, Consul_Dt, VAC_ID, DR_NAME,State, DOB, FLAG FROM staging WHERE Country = ''' , @v_country , '''');
		PREPARE dynamic_statement2  FROM @v_sql;
        EXECUTE dynamic_statement2 ;
        deallocate prepare dynamic_statement2;

        SET @v_i = @v_i + 1;
    END WHILE;
    END IF;
    END $$
DELIMITER ;