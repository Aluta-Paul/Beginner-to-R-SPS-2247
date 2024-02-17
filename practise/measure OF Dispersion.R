#--
#        Measure of Dispersion:
#   - RANGE, QUARTILES
#  - VARIANCE& STD
# -SKEWNESS & KURTOSIS
#---

#--
#  RANGE
#--
data <- c(12,23,43,55,66,28,80,75,90,25)
range(data)

#inter-quantile range
qr <- IQR(data)
qr
 
#--
#   VARIANCE & STD DEV
#     1/(n-1) SUM(Xi -Mean)^2 = variance
#---
variance <- sum((data - mean(data))^2) / length(data)
variance
# Step 4: Calculate the standard deviation
std_dev <- sqrt(variance)
std_dev

#---
# long process
#--

# Step 1: Calculate the mean
mean_data <- sum(data) / length(data)
mean_data

# Step 2: Calculate the squared differences from the mean
squared_diff <- (data - mean_data)^2
squared_diff
# Step 3: Calculate the variance
variance <- sum(squared_diff) / length(data)
variance
# Step 4: Calculate the standard deviation
std_dev <- sqrt(variance)
std_dev
# Output the results
print(paste("Variance:", variance))
print(paste("Standard Deviation:", std_dev))

#****
#*-* SKEWNESS & KURTOSIS
#*

# SKEWNESS >-  we compute the third central moment divided by the cube of the standard deviation, using the mean-centered data
#KURTOSIS >-  we compute the fourth central moment divided by the fourth power of the standard deviation, using the mean-centered data, and then subtract 3 to obtain excess kurtosis.

# Load the e1071 package
library(e1071)

# Sample dataset
data2 <- c(1, 2, 3, 4, 5)

# Compute skewness and kurtosis using built-in functions
skewness <- skewness(data2)
kurtosis <- kurtosis(data2)

# Output the results
print(paste("Skewness:", skewness))
print(paste("Kurtosis:", kurtosis))


# ...
# Long method KURTOSIS, SKEWNESS ....
# ----

# Sample dataset
data3 <- c(1, 2, 3, 4, 5)

# One-liner for skewness
skewness <- sum((data3 - mean(data3))^3) / (length(data3) * (sqrt(sum((data3 - mean(data3))^2) / length(data3)))^3)

# One-liner for kurtosis
kurtosis <- sum((data3 - mean(data3))^4) / (length(data3) * (sqrt(sum((data3 - mean(data3))^2) / length(data3)))^4) - 3

# Output the results
print(paste("Skewness:", skewness))
print(paste("Kurtosis:", kurtosis))













