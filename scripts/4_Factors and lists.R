#factors
flower.species <- c("Rose","Tulip","Petunia","Iris") # Character vector
flower.species
flower.species <- factor(c("Rose","Tulip","Petunia","Iris")) # factor
flower.species
str(flower.species)

#lists
pet.names <- c("Rex","Kitscha","Tommy","Jumbo")
pet.species <- factor(c("Dog", "Cat", "Parrot", "Elephant"))
pet.nolegs <- factor(c("quadruped","quadruped","biped","quadruped"))
str(pet.nolegs)

#Creating unnamed list
myPets <- list(pet.names, pet.species, pet.nolegs)
str(myPets)
typeof(myPets)
myPets


#Creating unnamed list
myPets1 <- list(pet.names[1], pet.species[1], pet.nolegs[1])
str(myPets1)
myPets1
myPets1[2]

#Creating named list
myNamedPets <- list(names = pet.names, 
                    species = pet.species, 
                    legs = pet.nolegs)
myNamedPets
str(myNamedPets)
myNamedPets$species[2]
myNamedPets[c("names", "species")]


