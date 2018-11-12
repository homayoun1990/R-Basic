x = rchisq(n=1000, df = 10)
hist(x, main = "none normalized data", col = "red", breaks = 20)


## drawing qqplot
ps = seq(0.01 , 0.99 , by = 0.01)
qs = quantile(x , ps)
normalqs = qnorm(ps , mean = mean(x) ,sd = sd(x))
plot(normalqs , qs , xlab = "QQplot" , ylab = "Data", col = "orange")
abline(0, 1, col = "blue")



## Standard normalization
y = (x - mean(x)) / sd(x)
hist(y , main = "Standard normalozation", xlab = "", ylab = "",
     col = "orange", breaks = 20)



## log transformation
hist(x, main = "none normalized data", col = "red", breaks = 20)
y = log(x)
ps = seq(0.01 , 0.99 , by = 0.01)
qs = quantile(y , ps)
normalqs = qnorm(ps , mean = mean(y) ,sd = sd(y))
plot(normalqs , qs , xlab = "QQplot" , ylab = "Data", col = "orange")
abline(0, 1, col = "blue")



library(MASS)
boxcox( lm(x~1) , plotit = TRUE)
boxcox( lm(x~1) , plotit = FALSE)


boxcox( lm(x~1) , plotit = FALSE)$x[24]
boxcox( lm(x~1) , plotit = FALSE)$y[24]

lambda = boxcox( lm(x~1) , plotit = FALSE)$x[24]

y = (x^lambda - 1) / lambda
hist(y , main = "Normalized data - Boxcox", col = "blue", breaks= 20)


par(mfrow = c(1,2))
hist(y , main = "Normalized data - Boxcox", col = "blue", breaks= 20)
hist(x , main = "none normalized data", col = "red", breaks= 20)


ps = seq(0.01 , 0.99 , by = 0.01)
qs = quantile(y , ps)
normalqs = qnorm(ps , mean(y) , sd(y))
plot(normalqs , qs , xlab = "Normal Dist" , ylab = "Data")
abline(0,1)


## Installing Bioconductor and Bioconductor packages

## Set the source URL to the following web address
source("http://bioconductor.org/biocLite.R")

## Install the necessary Bioconductor packages
biocLite()

biocLite("preprocessCore")
library(preprocessCore)

## a function inside preprocessCore package for quantile normalization
? normalize.quantiles

## a function inside preprocessCore package for median polish normalization
? colSummarizeMedianpolish

biocLite("affyPLM")
library(affyPLM)

## a function inside affyPLM package for scaling normalization
? normalize.scaling

## a function inside preprocessCore package for interquartile 
## range normalization and LOWESS
? LPE

