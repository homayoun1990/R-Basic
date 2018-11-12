## loading the datasets library although the package will automaticlly
## loads when R starts  
library(datasets)


data(package = "datasets")   # lists the datasets in a package
str(sleep)  # shows the structure of an object
head(sleep)  ## return some of the rows inside sleep datasets
help(sleep)  ## access help about the variables in the dataset


## Creates box plot for two different groups
plot(extra ~ group, data = sleep)

## retrieve the extra values for each group and save the results in two object.
## Remember the subsetting procedure in the past modules
group1 = sleep$extra[sleep$group == 1]
group2 = sleep$extra[sleep$group == 2]

mean(group1)
mean(group2)

## One sample t test. test: H0: mean of population is equal 0.5
##                          H1: mean of population is not equal 0.5
t.test(x = group1 , y = NULL , mu = 0.5)


## Two sample t test. test: H0: mean of population 1 is equal to population 2
##                          H1: mean of population 1 is not equal to population 2
t.test(x = group1 , y = group2 , var.equal = TRUE)


## Welch t test. test:      H0: mean of population 1 is equal to population 2
##                          H1: mean of population 1 is not equal to population 2
t.test(x = group1 , y = group2 , var.equal = FALSE)



## To check if the variances in two populations are equal, we can use F test as 
## follows. The F test is not the same as ANOVA. it is called Levene's test. 
help(var.test)
var.test(x= group1 , y = group2, ratio = 1)




## It seems that group1 and group2 variables are not normally distributed
hist(group1)
hist(group2)



## how to hypothetically test for normality?
help(shapiro.test)

z1=rnorm(100, mean = 5, sd = 3)
z2=runif(100, min = 2, max = 4)
shapiro.test(z1)
shapiro.test(z2)


shapiro.test(x = group1)
shapiro.test(x = group2)



## Albeit the shapiro test indicates that the data is normaly distributed 
## but it would be a good idea to test the differences of means in two populations
## using nonparametric tests.

help(wilcox.test)
wilcox.test(x = group1, y = group2)
