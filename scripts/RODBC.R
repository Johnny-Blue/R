library("RODBC")
startTime1 <- Sys.time()
cn <- odbcDriverConnect(connection="Driver={SQL Server Native Client 11.0};server=sqldev01_debug;database=ttool_ecb_latest;trusted_connection=yes;")

dframe <- sqlQuery(cn, "SELECT [AR21_EmploymentStatus_LST],[AR26_PrimaryIncome_MNY],[AR67_CurrentBalance_MNY] FROM [ttool].[RMBS_ASSETS]")
#View(dframe)

odbcClose(cn)

startTime2 <- Sys.time()

#sumAR67 <- sum(dframe$AR67_CurrentBalance_MNY, na.rm=TRUE)
aggAR26 <- aggregate(x = dframe$AR26_PrimaryIncome_MNY, by = list(dframe$AR21_EmploymentStatus_LST), FUN = sum, na.rm=TRUE)
aggAR67x26 <- aggregate(x = dframe$AR67_CurrentBalance_MNY * dframe$AR26_PrimaryIncome_MNY, by = list(dframe$AR21_EmploymentStatus_LST), FUN = sum, na.rm=TRUE)

res <- data.frame(aggAR67x26[1], aggAR67x26[2]/aggAR26[2])
res
#crtbal.emplstat <- aggregate(x = (dframe$AR26_PrimaryIncome_MNY *  dframe$AR67_CurrentBalance_MNY)/sumAR67, by = list(dframe$AR21_EmploymentStatus_LST), FUN = sum)
#str(crtbal.emplstat)
endTime1 <- Sys.time()
timeRun <- difftime(endTime1,startTime1,units="secs")
timeRun

timeRunNoFetch <- difftime(endTime1,startTime2,units="secs")
timeRunNoFetch

