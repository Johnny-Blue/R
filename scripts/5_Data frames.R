#data frames - basically a table
pet.names <- c("Rex","Kitscha","Tommy","Jumbo")
pet.species <- c("Dog", "Cat", "Parrot", "Elephant")
pet.nolegs <- factor(c("quadruped","quadruped","biped","quadruped"))

myPets <- data.frame(pet.names, pet.species, pet.nolegs)

typeof(myPets)
myPets
str(myPets)

myPetsNF <- data.frame(pet.names, pet.species, pet.nolegs, stringsAsFactors = FALSE)
typeof(myPetsNF)
myPetsNF
str(myPetsNF)
