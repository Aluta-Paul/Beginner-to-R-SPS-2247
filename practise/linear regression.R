# ---
# ***SET.SEED()
# *** LM()
# *** PLOT & GRAPHS
# ***SUM
# *** CORELLATION.
# *** DATA.FRAME()

# height~weight represents a formula object used in modeling, 
# while .seed() is a function used to control random number generation

# *****
#    * LINEAR REGRESSION *
#-====
#--
# Fit a linear regression model to predict weight based on height
model <- lm(weight ~ height, data = women)

# Summary of the linear regression model
summary(model)

# The intercept is the value of the dependent variable when all independent variables are zero, while,
#..the slope represents the change in the dependent variable for a one-unit change in the independent variable

bom <- model$coefficients[1]     # Intercept coefficient
bom

bom2 <- model$coefficients[2]     # Slope coefficient
bom2

error <- model$residuals    # Residuals (errors) of the model
error
#Residuals: Differences between observed and predicted values


yhat <- model$fitted.values    # Predicted values (y-hat) of the model
yhat
# These are the predicted values of the dependent variable based on the independent variables in the dataset used to fit the model
#Y = MX + C

plot(women$height,women$heightweight)


plot(women$height, women$weight)  # Scatter plot of height vs. weight
abline(model)  # Overlay the linear regression line

plot(women$height,women$weight, main = "Plot Of Weight and Height",xlab = "Height",ylab = "Weight",col="orange")
abline(model, col ="green")

#By summing up the residuals, you can get a sense of how well the model fits the data...
#..A smaller sum of residuals indicates a better fit
# Fit a linear regression model
model <- lm(weight ~ height, data = women)

# Calculate the sum of residuals
residual_sum <- sum(model$residuals)
print(residual_sum)

#--->>>CORRELATION>>>>
#---

#EXAMPLE (MAIN~ CLASS)

# Load the women dataset (included in R)
data(women)

# Compute Pearson correlation coefficient between weight and height
pearson_corr <- cor(women$weight, women$height, method = "pearson")

# Compute Spearman correlation coefficient between weight and height
spearman_corr <- cor(women$weight, women$height, method = "spearman")

# Compute Kendall correlation coefficient between weight and height
kendall_corr <- cor(women$weight, women$height, method = "kendall")

# Print correlation coefficients
cat("Pearson correlation coefficient:", pearson_corr, "\n")
cat("Spearman correlation coefficient:", spearman_corr, "\n")
cat("Kendall correlation coefficient:", kendall_corr, "\n")



# EXAMPLE 2.
# Create example data
set.seed(123)
x <- rnorm(100)
y <- 2 * x + rnorm(100, sd = 0.5)  # Linear relationship with noise

# Compute correlation coefficients using different methods
pearson_corr <- cor(x, y, method = "pearson")
spearman_corr <- cor(x, y, method = "spearman")
kendall_corr <- cor(x, y, method = "kendall")

# Print correlation coefficients
cat("Pearson correlation coefficient:", pearson_corr, "\n")
cat("Spearman correlation coefficient:", spearman_corr, "\n")
cat("Kendall correlation coefficient:", kendall_corr, "\n")

#-...>>>CORRELATION 2>>>

# Create example data
set.seed(123)
x <- rnorm(100)
y <- 2 * x + rnorm(100, sd = 0.5)  # Linear relationship with noise

# Fit linear regression models using different methods
model_qr <- lm(y ~ x, method = "qr")
model_model_matrix <- lm(y ~ x, method = "model.matrix")
model_model_frame <- lm(y ~ x, method = "model.frame")

# Summarize models
summary(model_qr)
summary(model_model_matrix)
summary(model_model_frame)


# -----EXTRAS
#E--X--T--R--A--S
#----
#background color of the entire plot area, you can use the par() function in combination with the bg paramete
plot(women$height, women$weight, bg = "grey") #BACKGROUND

plot(women$height, women$weight, col.axis = "blue") #AXIS COLOR

plot(women$height, women$weight, col.lab = "green") #AXIS LABEL COLOR

plot(women$height, women$weight, main = "Plot Of Weight and Height", col.main = "red") # TITLE COLOR

points(women$height, women$weight, col = "purple")  #POINT COLOR

# Set the background color of the entire plot area
par(bg = "lightblue")

# Create the plot
plot(women$height, women$weight, main = "Scatter Plot of Weight and Height", xlab = "Height", ylab = "Weight", col = "orange")

# Overlay the linear regression line
abline(model, col = "green")

#----
#DISPLAY DATA as table
#----

# Create a data frame containing the height and weight columns
data_table <- data.frame(Height = women$height, Weight = women$weight)

# Display the table
print(data_table)

#---
#OTHER WAYS OF DISPLAY
#>>>>>>>>

# Display the entire dataset
print(women)

# Display the entire height column
print(women$height)

# Display the entire weight column
print(women$weight)

#IF THERE ARE MORE DATA I WANT TO DISPLAY
#>>>>>>
#>#You can use the options() function to set these options

# Set options to display all rows and columns
options(max.print = 10000, width = 200)


# Now you can print the dataset or columns again to see all values
print(women)
print(women$height)
print(women$weight)

#-----
#     REVISED
#-----
# Example: Linear regression model
# Predicting weight based on height

# Fit a linear regression model
model <- lm(weight ~ height, data = women)

# Retrieve coefficients
intercept <- model$coefficients[1]
slope <- model$coefficients[2]

# Print coefficients
cat("Intercept:", intercept, "\n")
cat("Slope:", slope, "\n")

# Get residuals
residuals <- model$residuals

# Print residuals
cat("Residuals:", residuals[1:5], "... (truncated for brevity)\n")

# Get fitted values
fitted_values <- model$fitted.values

# Print fitted values
cat("Fitted Values:", fitted_values[1:5], "... (truncated for brevity)\n")


# ---- 
#-- GENERATING RANDOM NUMBERS
#---USE {SET.SEED()}

#. By setting the seed to a specific value using set.seed(),..
#..you ensure that the sequence of random numbers generated by the RNG is always the same.

# Example: Simulating data with random noise

# Set the seed for reproducibility
set.seed(123)

# Generate random data
x <- seq(1, 10, by = 0.1)  # Independent variable
y <- 2 * x + rnorm(length(x), mean = 0, sd = 1)  # Dependent variable with random noise

# Display the first few values of x and y
head(data.frame(x, y))

# Plot the simulated data
plot(x, y, main = "Simulated Data", xlab = "x", ylab = "y")

# Fit a linear regression model
model <- lm(y ~ x)

# Overlay the regression line
abline(model, col = "red")


#---
#    >> as.data.frame()
#----

#as.data.frame() is a versatile function that allows you to convert various types of objects into data frames
#can also be used to convert other types of objects, such as lists, factors, and vectors, into data frames.

# Create a matrix
mat <- matrix(1:6, nrow = 2, ncol = 3)

# Convert the matrix into a data frame
df <- as.data.frame(mat)

# View the resulting data frame
print(df)






