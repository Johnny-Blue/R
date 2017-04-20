flower.species <- c("Rose","Tulip","Petunia","Iris") # Character vector
flower.species
flower.species <- c(2L,2L,1L,1L) # Integer vector
flower.species
flower.species <- factor(c("Rose","Tulip","Petunia","Iris")) # factor
flower.species
as.numeric(flower.species) #Explicit conversion
flower.blood.groups <- factor(c("A","AB","O","AB"), levels = c("A","B","AB","O")) 
str(flower.blood.groups)
