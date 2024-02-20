#---
#OPEATORS IN R
#--

# Arithmetic Operators
# Relational Operators
# Logical Operators
# Assignment Operators
# Miscellaneous Operators

#+	addition
#-	subtraction
#*	multiplication
#/	division
#^ or **	exponentiation
#x %% y	modulus (x mod y) 5%%2 is 1
#x %/% y	integer division 5%/%2 is 2


#How do I check if an element is in a vector or list?
# %in% operaton
x <- c(1:10)
x
x > 8
x < 5
x > 8 | x < 5
# to check if x is in the vector c(1, 2, 3)
x %in% c(1, 2, 3)

#What does the %% operator do?
#The %% operator returns the modulus (remainder) of a division operation

5%%2   #as the remainder of 5 divided by 2 is 1.

5%/%2   #as 5 divided by 2 yields a quotient of 2.


val <- 0.1 
list1 <- c(TRUE, 0.1,"apple") 
print (val %in% list1) 

#%*% for gettin matric TRANSPOSE Operation
mat = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3) 
print (mat)                   #original matrix of order 2x3
print( t(mat))                  #transposed matrix of order 3x2
pro = mat %*% t(mat) 
print(pro)                       #product matrix of order 2x2


# R program to illustrate
# Initialization of variables

# using equal to operator
var1 = "hello"
print(var1)

# using leftward operator
var2 <- "hello"
print(var2)

# using rightward operator
"hello" -> var3
print(var3)


# usage of global variables

# global variable
global = 5

# global variable accessed from
# within a function
display = function(){
  print(global)
}
display()

# changing value of global variable
global = 10
display()



