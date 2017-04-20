#Assignment

pies.count <- 300 #Using assignment operator
pies.count #print variable content
assign("pies.count",400) #Using assign function
pies.count #print variable content

350 -> pies.count
pies.count


#Arithmetic operators
10 + 5  #Addition
10 - 5  #Subtraction
10 * 5  #Multiplication
10 / 5  #Division
10 ^ 5  #Exponentiation
format(10 ^ 5, scientific=FALSE) #Without scientific notation
10 ** 5 #Exponentiation
10 %% 3  #Modulus 
10 %/% 3  #Integer division


#Logical operators
5 > 2  #greater than
5 >= 2 #greater than equal to 
5 < 2  #less than
5 <=2  #less than equal to
5 == 2 #exactly equal to
5 != 2 #not equal to
"b" > "a" #comparing characters
!(TRUE) #logical NOT operator
TRUE | FALSE #logical OR operator
TRUE & FALSE #logical AND Operator

#Mathematical functions
abs(-5)  #Absolute 
log(2) #Natural logarithm
log(2,base = 10 ) #Logarithm
exp(5) #Exponential
factorial(5) #factorial

#Special constants
pi #PI
options() #Get global options
options(digits=22) #Set digits to 10
pi #PI


#Infinity
1 / 0 #Positive infinity
-1 / 0 #Negative infinity
Inf + 5 #Operation on Inf
is.finite(1 / 0) #Check if finite
is.infinite(1 / 0) #Check if infinite

#Undefined
Inf / Inf #NaN (Not a Number)
is.nan(Inf/Inf) #Check if NaN

#Missing values
NA + 5 #Operation on NA
sum(NA, 5, na.rm = TRUE)
is.na(NA) #Check if NA


