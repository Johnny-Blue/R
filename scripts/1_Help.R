help(rnorm) #search exact term 
example(rnorm) #Use example in the documentation
?rnorm #short syntax to search exact term
help.search("rnorm") #search similar terms
??rnorm #short syntax to search similar terms

demo() #List demonstrations in attached packages
demo(package = .packages(all.available = TRUE)) #List demonstrations in all installed packages
demo(package = 'graphics') #List demonstrations in graphics package
demo(graphics) #demonstrate graphics 

vignette() #List all vignettes in attached packages
vignette(package = .packages(all.available = TRUE)) #List all vignettes in all installed packages
vignette(package = 'parallel') #List all vignettes in parallel package
vignette('parallel', package = 'parallel') #Show vignette for parallel

RSiteSearch("arithmetic mean") #Search on http://search.r-project.org
RSiteSearch("{arithmetic mean}") #Use braces for exact search

if(!require("sos"))
{
  #Download and install package
  install.packages("sos") #Install sos package
  library(sos) #Load SOS package
}


findFn("{arithmetic mean}") #Search using findFn
findFn("{arithmetic mean}",maxPages=2) #Use maxPages parameter to get top pages
???"{arithmetic mean}"(2) #Shortcut for using findFn with maxPages parameter
detach("package:sos", unload = TRUE)

