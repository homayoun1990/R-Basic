# Some useful statistical functions in R. Check them out!
x = c()
x = runif(n = 100 , min = -1 , max = 1)  ## generate 100 random numbers from interval [0,1]
mean(x)  ## find the mean value of the numeric vector x
var(x)   ## find the variance of the numeric vector x
sd(x)    ## find the standard deviation of the numeric vector x
sqrt(var(x))  ## the same as sd(x)
min(x)   ## find the minimum value inside vector x
max(x)   ## find the maximum value inside vector x
range(x) ## find the range (min value and max value) of the object x
median(x) ## find the meadian of the vector x
quantile(x) ## find the quantile for vector x
quantile(x , prob = c(0.3 , 0.453, 0.56) ) ## find arbitrary quantile values for vector x
sort(x)  ## sort the vector x
summary(x)  ## a brief summary about values in x
abs(x)   ## find the absolute value inside x
log(abs(x))   ## compute the logarithm value of each element inside vector x
exp(x)   ## find the exponential value of each element inside vector x
paste("A", 1:6, sep = "")   


toupper(x)   ## find the upper case of a character or vector of characters
tolower(x)   ## find the lower case of a character or vector of characters
seq(from=1 , to=100, by=1)  # the same as 1:100
rep(1:3, 2)  ## repeat the first element (1:3) n times (n=2)

hist(x)     ## create the histogram of a numeric vector
plot(x)     ## can create plots and time series plot. for example y = x + 1

x = 1:100
y = x^2
plot(x, y, type = "l")



data()    			 # lists the preloaded datasets

## Albeit all the packages in R include some functions to perform definite jobs,
## most of the R packages includes some real datasets. It is great to work with these datasets.
## We can install packages on R either manually or via internet and R repositories. 
## I will show you how to manually install packages on R. We will learn how to install them
## via internet later. 

library(MASS)        # load a library. When a library is loaded, all of the included functions and datasets are returned
data(package = "MASS")   # lists the datasets in a package
str(Animals)  # shows the structure of an object
head(Animals)  ## return some of the rows inside Animals datasets
help(Animals)  ## access help about the variables in the dataset



## accessing the variables inside the dataframe

Animals$body   ## return the body variable in dataframe
body = Animals$body
str(body)
mean(body)
var(body)
hist(body , breaks = 20, col= "orange")

brain = Animals$brain  ## return the brain variable in dataframe
str(brain)
mean(brain)
var(brain)
hist(brain , breaks = 20, col = "orange")  ## draw a histogram 

plot(Animals)   # plot all the variables in dataframe

## plot the log of variables in dataframe
plot(log(Animals) , type = "p", col = "blue")


str(Pima.te)
help(Pima.te)
plot(Pima.te$npreg , Pima.te$glu)

## return the mean of glu in women with 1 preg
mean( Pima.te$glu[Pima.te$npreg==1] )   

## return the mean of glu in women with 4 preg
mean( Pima.te$glu[Pima.te$npreg==4] )

mean( Pima.te$bmi[Pima.te$type=="Yes"] )
mean( Pima.te$bmi[Pima.te$type=="No"] )


## reading data from external sources (outside R studio)

## getwd   get working directory

setwd("D://FaraDars.Org//T1030//FVR9311//Files And Codes//Session 3")
uniprot = read.table(file = 'uniprot.txt', header = TRUE, sep = "\t")
str(uniprot)
