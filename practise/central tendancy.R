#measure of central tendancy

#DATA
x <- c(45,32,37,46,39,41,48,32)
print(x)

#Arithmetic Mean
print(mean(x))

#Geometric Mean

prod(x)^(1/length(x))
                  #ALTERNATIVE
geo_mean <- exp(mean(log(x)))
print(geo_mean)
                  #ALTERNATIVE 3..USING PACKAGETS
              #instal "PSYCH" PACKAGE
library("psych")              #loading the package
geometric.mean(x)

#Harmonic mean
print(1/mean(1/x))

#median
median(x)

#mode
y <- table(x)
print(y)
#Mode of 'X'
mode <- names(y)[which(y==max(y))]
print(mode)

#--
#NOTE median: for ODD & EVEN
#--
DaT1 <- c(12, 13, 14,15,16,17,10,22,22,23)
length(DaT1)
median(DaT1)

DaT2 <- c(12, 13, 14,15,16,17,10,22,22,23,34)
length(DaT2)
median(DaT2)

#--
#Quartiles
#--
Q1 <- quantile(DaT1,0.25)
Q1


Q3 <-quantile(DaT1,0.75)
Q3

Q2 <- quantile(DaT1,0.50)   #median
Q2

inter_QuartileRange <- IQR(DaT1)  #(Q3 - Q1)
inter_QuartileRange

IQR(DaT2)

#--
#RANGE
#---
#Range = (max value in datatset) - (min value in dataset)
max(DaT1)
min(DaT1)
range(DaT1)

#---
#TURKEY'S FIVE NUMBER SAMMARY
#(lowest value),(Q1),(Q2),(Q3),(Maximum value)
#----
summary_Dat <- fivenum(DaT1)
summary_Dat

fivenum(DaT2)

#--
#CREATING "BIN"
#--
cut(DaT1,5)
cut(DaT1,5,labels = c("first","second","third","forth","fifth"))
