# Vector operations

flowers.count <- c(10, 20, 30,  40) #using combine function
flowers.count #print variable content
str(flowers.count) #get structure

#Vectorized operations :Input - Single vector, Output - Scalar
mean(flowers.count)
#Vectorized operations :Input - Single vector, output - Single vector
flowers.count <- flowers.count + 5 #arithmetic operator
flowers.count
flowers.count >= 30 #logical operator
#Vectorized operations : Multiple vectors, output - Single vector 
flowers.roses.count <- c(20,40,30,50)
flowers.tulips.count <- c(30,20,50,20)
flowers.total.count <- flowers.roses.count + flowers.tulips.count #Addition
flowers.total.count
#repeats
flowers.snowdrops.count <- c(1,2)
flowers.total.count <- flowers.total.count + flowers.snowdrops.count #Addition
flowers.total.count

#checks
is.integer(flowers.count)
is.integer(as.integer(flowers.count)) #check of explicit cast
is.numeric(flowers.count)

#selection
flowers.count[1]
flowers.count[1:3]
flowers.count[flowers.count>10] #select based on condition
flowers.count[c(T,F,F,T)] #select based on true/false

flowers.price <- c( "60.5", 72.5 , 45.2,  47.5) #implicit cast
str(flowers.price)
