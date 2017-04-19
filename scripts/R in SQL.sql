/*
 sp_configure 'external scripts enabled' , 1
 reconfigure
 */

EXEC sp_execute_external_script  
   @language =N'R',    
   @script=N'OutputDataSet<-InputDataSet',      
   @input_data_1 =N'SELECT 1 AS hello'    
   WITH RESULT SETS (([hello] int not null));    
 GO

EXECUTE sp_execute_external_script    
  @language = N'R'      
  , @script = N' SQL_out <- SQL_in;'    
  , @input_data_1 = N' SELECT 12 as Col;'    
  , @input_data_1_name  = N'SQL_in'    
  , @output_data_1_name =  N'SQL_out'    
  WITH RESULT SETS (([NewColName] int NOT NULL));    

EXECUTE sp_execute_external_script    
      @language = N'R'    
    , @script = N' 
	dframe <- data.frame(InputDataSet)
	aggAR26 <- aggregate(x = dframe$AR26_PrimaryIncome_MNY, by = list(dframe$AR21_EmploymentStatus_LST), FUN = sum, na.rm=TRUE)
	aggAR67x26 <- aggregate(x = dframe$AR67_CurrentBalance_MNY * dframe$AR26_PrimaryIncome_MNY, by = list(dframe$AR21_EmploymentStatus_LST), FUN = sum, na.rm=TRUE)
	res <- data.frame(aggAR67x26[1], aggAR67x26[2]/aggAR26[2])
	OutputDataSet <- res'    
    , @input_data_1 = N'SELECT [AR21_EmploymentStatus_LST],[AR26_PrimaryIncome_MNY],[AR67_CurrentBalance_MNY] FROM [SQLDEV01_DEBUG].[ttool_ecb_latest].[ttool].[RMBS_ASSETS];'    
    WITH RESULT SETS (([EmploymentType] int NOT NULL, [AR26_WA] decimal(19,4)));



