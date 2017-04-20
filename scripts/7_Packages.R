library() #List all installed packages
packages <- installed.packages()

search() 

#Load package using library function
library("parallel") 
library(parallel) #without quotes
search()

#Unload or detach a package 
detach(package:parallel) 

#Load a library, which is not installed will give error
library(newpackage)
#Use require function, which returns a TRUE or FALSE
if(!require("newpacakge"))
{
  #Download and install package
}

# package management
setRepositories()
install.packages("plyr") #Single package
install.packages(c("ggplot2","randomForest","RColorBrewer")) #Multiple packages
install.packages("devtools") #Required for installation from github
library(devtools) #Load package
install_github("slidify", "ramnathv") #Install package from github

#update.packages()
update.packages(ask = FALSE)
remove.packages("ggplot2")
remove.packages(c("sos","ggplot2"))