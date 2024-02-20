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

#ADDING MATRICES
vector1 <- c(1,2,3)
vector2 <- c(3,4,5,6,7,8)
# Take these vectors as input to the array.
array1 <- array(c(vector1,vector2),dim = c(3,3,2))

vector3 <- c(3,2,1)
vector4 <- c(8,7,6,5,4,3)
array2 <- array(c(vector1,vector2),dim = c(3,3,2))

# create matrices from these arrays.
matrix1 <- array1[,,2]
matrix2 <- array2[,,2]
# Add the matrices
result <- matrix1+matrix2
matrix1
matrix2
print(result)

#4 @ARRAYS
#just like matrices

# ###--Array_NAME <- array(data, dim = (row_Size, column_Size, matrices, dimnames)

#-***  row_Size describes the number of row elements that an array can store.---
#****column_Size – Number of column elements that can be stored in an array
#***** Used to change the default names of rows and columns to the user’s preference.

#use:;:
#Business intelligence and data analysis ( product, region, time)
#example2 Time-series data often { trends, patterns, and changes over time}

a <- array(c('green',"yellow","pink","green","red",'yellow'),dim = c(3,3,4))
#it's like a 3*3 matrix done TWICE
print(a)

#EXAMPLE2 
vector1 <- c(2,9,3)
vector2 <- c(10,16,17,13,11,15)
 
result <- array(c(vector1,vector2),dim = c(3,3,2))
print(result)

# Create two vectors of different lengths
vector1 <- c(2,9,6)
vector2 <- c(10,15,13,16,11,12)
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

result <- array(c(vector1,vector2),dim = c(3,3,2),dimnames = list(row.names,column.names,
                                                                  matrix.names))
print(result)

# Print the third row of the second matrix of the array
print(result[3,,2])
# Print the element in the 1st row and 3rd column of the 1st matrix.
print(result[1,3,1])
# Print the 2nd Matrix.
print(result[,,2])

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
#printing the first 2 COLUMN
df[,c("Name","Age")]
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

#example
#Author DataFlair
int_vec <- c(1,2,3) 
char_vec <- c("a", "b", "c")
bool_vec <- c(TRUE, TRUE, FALSE)
data_frame <- data.frame(int_vec, char_vec, 
                         bool_vec)
print(data_frame)

#PRINTIN "x" NO OF COLUMNS
df2 <- data.frame(
  
  student_name = c("A", "B", "C", "D", "E"),
  
  birth_date = c('1988-01-14', '1998-10-02', '2008-12-31', '2004-06-15', '1997-05-25')
  
)

print("Dataframe:")         #prints in a unique way

print(df2)

x <- top_n(df,2,birth_date) #for this to run you must load the necessary library
#install.packages("tidyr")
#library(tidyr)

#print(x)
#ALTERNATIVE
# Using head() function to select the first 10 rows

head_rows <- head(df2, 3) #we print the first 3 ELEMENTS

print("Output using head() function:")

print(head_rows)


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
