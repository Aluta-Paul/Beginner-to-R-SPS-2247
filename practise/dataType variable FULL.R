#R- DATA TYPES(6 Data types)
#when  we create VARIABLES we reserve some space in memory for them that why DATA TYPES to be fed in this space is important

#1. @VECTORS(Has 6 data types in it )includes

#1.a logical
#eg..TRUE, FALSE

a.1 <- TRUE
class(a.1)

#1.b Numerical

b.1 <- 12.3
class(b.1)

b.2 <- 5
class(b.2)

#1.c Integer
# The 'L' suffix indicates an integer
#only whole number are accepted

c.1 <- 2L # L is in caps MUST.
class(c.1)

#1.d Complex

d.1 <- 2 + 3i
class(d.1)

real_part <- Re(d.1)
real_part #shows the real number
imaginary_part <- Im(d.1)
imaginary_part #imaginary part of the complex

#1.e Character
#basically stores the TEXTUAL DATA

e.1 <- "good jub!"
class(e.1)

e.2 <- 'TRUE'
class(e.2)

#1.f Raw
#basically stores BINARY DATA

f.1 <- charToRaw("hello")
print(f.1)
class(f.1)

f.2 <- as.raw(7.2)
print(f.2)
class(f.2)

#if you want VECTOR with more than one ELEMENT use: C()function.

#1-Extras
fruits <- c('apple', "oranges","bannana")
print(fruits)
print(class(fruits)) #shows class of this vector

trial <- c(1,7,12.9,99,17.9907)
print(trial)
print(class(trial))

poor_trial <- c(1,7,16L,"super",'will be of mixed class',7L)
print(class(poor_trial)) #solution use list to get private info of each data type

#2 @LISTS
#they can contain many ELEMENTS like vectors, functions, lists ,ETC
 list1 <- list(c(2,7,9), 21.1,sin(30)) #VECTOR & FXN
print(list1)
print(class(list1))


#3 @MATRICES
#all vector must be of the same type
# only for 2-Dimension
#eg, ploting (day n' temp)
m = matrix(c('a','b','c','a','c','a'), nrow = 2,ncol = 3, byrow = T)
print(m)

w.2 = matrix(c(12L,1L,10L,6L,23L,3L,4L,15L), nrow = 4,ncol =2, byrow = F)
print(w.2)


#4 @ARRAYS
#just like matrices
#BUT... allows for many dimension
#use:;:
#Business intelligence and data analysis ( product, region, time)
#example2 Time-series data often { trends, patterns, and changes over time}

a <- array(c('green',"yellow","pink","green","red",'yellow'),dim = c(3,3,4))
#it's like a 3*3 matrix done TWICE
print(a)
 

#EXTRAS
#One dimension looks like
 vector_example <- c(1,2,3,5,6,7,4)
 print(vector_example)

 #5 @FACTORS
 #nlevels -- used to say how many data we have ...think:-
 #data might have only 3 things repeating many times... so we use nlevels() to know
 
 gender <- c("male","female","male","female","male","male","female")
filtered <- factor(gender)

#analysis
print(filtered)
levels(filtered)
nlevels(filtered)
summary(filtered)

#assigning LABELS to levels
education <- c("High School", "Bachelor's", "Master's", "PhD")
factor_education <- factor(education, labels = c("HS", "BSc", "MSc", "PhD"))

levels(factor_education)
summary(factor_education)

#6 @DATA FRAMES
# are tabular data
#unlike matrices here each colum can contain data of different types
#The first column can be numeric while the second column can be 
#character and third column can be logical.

# Creating a data frame with three columns: Name, Age, and Gender

df <- data.frame( #arranges thing as COLUMN
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 22),
  Gender = c("Female", "Male", "Male")
)
#VIEWING A DATA FRAME--is like calling that variable
df
# ACCESSING COLUMNS INFO use "$"
df$Age
# or instead you can
df[,'Age']
#ADDING A NEW COLUMN
df$City <- c('Nakuru',"Nairobi","Kisumu")
df
# Selecting rows where Age is greater than 25
subset_df <- df[df$Age > 25, ]
subset_df

#EXAMPLE 2

BMI <- data.frame(
    gender = c("male","female","female"),
    height = c(154,189,187),
    wight = c(72,89,92),
    age = c(15,19,21)
)
print(BMI)


#NAMING VARIABLES
#1. NEVER start with a number
#2 NEVER  start with (_)
##3 if you start with (.) ensure it is NOT followed by Number
###4 only (.) and(_) are allowed NEVER (%$#@).


#you can see values of VARIABLE using PRINT() or CAT()

#R IS DYNAMICALLY TYPED LANGUAGE
#mean:: we do not assign data type of variable.. it does itself.


#variables currently available in the workspace we use the ls() function
#print(ls())

print(ls())

# List the variables starting with the pattern "var".
print(ls(pattern="var")) #EMPTY
print(ls(pattern = "1"))


#Variables can be deleted by using the rm() function
var.3 <- c(12,14,19,10)
var.2 <- c(12L,45L,20L,113L)
var.1 <- c("goat","beast","regular")
var.3
var.1
print(ls(pattern = "var"))

rm(var.3)
print(ls())

#DONE.......
