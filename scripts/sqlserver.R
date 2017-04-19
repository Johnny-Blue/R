library("RSQLServer", lib.loc="~/R/win-library/3.2")
startTime1 <- Sys.time()
sqlconn <- dbConnect(SQLServer(), 'sqldev01_debug:1433/ttool_ecb_latest;user=sql_user;password=*****')

# dbGetInfo(sqlconn)
result <- dbSendQuery(conn = sqlconn, statement = 'SELECT [AR21_EmploymentStatus_LST],[AR26_PrimaryIncome_MNY],[AR67_CurrentBalance_MNY] FROM [ttool].[RMBS_ASSETS]')
dframe <- fetch(result, -1)
dbDisconnect(sqlconn)

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


x <- as.factor(res$Group.1)
y <- res$x

plot(x,y)

#install.packages("ggplot2")
library(ggplot2)
ggplot(data=data.frame(x), aes(x=x, y=y)) + stat_identity() + geom_bar() 


#https://docs.microsoft.com/en-us/sql/advanced-analytics/r-services/sql-server-r-services-tutorials