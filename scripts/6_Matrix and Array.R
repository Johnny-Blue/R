#Matrix 2D homogenous structures
oil.temp <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=2,nrow=4)
oil.temp
oil.temp2 <- matrix(c( 70L , 75L , 80L,  85L, 60L, 70L, 85L, 70L),ncol=2,nrow=4
                        ,byrow=TRUE)
oil.temp2
oil.temp[1,1] # 1st element
oil.temp[1:3,1] # first 3 rows of col 1
oil.temp[1:3,] # first 3 rows
oil.temp[,1] # first col
oil.temp[1,] # first row


# Arrays
oilTempRace1 <- c( 70L , 71L , 72L,  73L, 80L, 81L, 82L, 83L) #Race 1 Session 1(4) Session2(4)
oilTempRace2 <- c( 90L , 91L , 92L,  93L, 60L, 61L, 62L, 63L) #Race 2 Session 1(4) Session2(4)

oilTempPerSessionPerRace <- array(c(oilTempRace1,oilTempRace2), dim=c(4,2,2))
oilTempPerSessionPerRace #RaceNo, Session_Col, Measurement
oilTempPerSessionPerRace[2,2,2] #2nd race 2nd session 2nd value measured
oilTempPerSessionPerRace[1:2,1,1:2]

