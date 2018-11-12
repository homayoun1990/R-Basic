## Writing your own functions


## function name = function(arg1,arg2,...){
## 	codes
## }


My_First_Function = function(x){
	mean(x)
}

x = runif(100 , -1, 1)
My_First_Function(x)
mean(x)



myf = function(x , ...){
	hist(x , ...)
}
myf(x)

myf(x , breaks = 10, col = "green", main = "", xlab = "X values" , ylab = "Frequency")






## apply functions

help(apply)

## Compute row and column sums for a matrix:

x = runif(100)
mat = matrix(x , 10, 10)
mat

apply(mat, MARGIN = 2, FUN = mean)

col.sums = apply(mat, MARGIN = 2, FUN = sum)
row.sums = apply(mat, 1, sum)


f = function(x){ length(x[x<0.5]) }

apply(mat, 2, FUN = f)

f = function(x){ x^2 }
help(sapply)
sapply(1:3, f)
lapply(1:3, f)




## which function

help(which)
mat
which( mat < 0.3 )
indx = which( mat < 0.3 )
mat.new = mat[indx]

indx = which( mat < 0.3 , arr.ind = TRUE)
mat.new = mat[indx,]
              




## required time for a function

nuclotide = c("A" , "T" , "C" ,"G")
p = c(1/4, 1/4, 1/4, 1/4)
DNA = sample(nuclotide , 100000 , replace = TRUE, prob = p)

myf1 = function(x){
	if( class(x) != "character") {stop("Class of x is not character")}
	indx = c()
	for(i in 1:length(x)){
	if(x[i] == "A") {indx = c(indx, i)}
	}
}

myf2 = function(x){
	if( class(x) != "character") {stop("Class of x is not character")}

	indx = which( x == "A" )
	y = x[indx]
}

myf3 = function(x){
	if( class(x) != "character") {stop("Class of x is not character")}

	indx = (x == "A")
	y = x[indx]
}


system.time(myf1(DNA))
system.time(myf2(DNA))
system.time(myf3(DNA))




myf = function(mat,...){
res = numeric( ncol(mat) )
for(i in 1:ncol(mat)){
  res[i] = mean(mat[,i])
}
}

x = runif(n = 1000*1000 , min = 0 , max = 1)
mat = matrix(x , 1000 , 1000 , TRUE)

system.time( myf(mat) )
system.time(apply(mat, 2, FUN = mean))




## some functions regarding statistical distributions
?Normal
?Binomial
?TDist
?Chisquare
?Geometric
?Hypergeometric
?Uniform

## generate a random sample with size = 100 from N(0,1)
x = rnorm(n = 100 , mean = 0, sd = 1)

## finds the value of density function for a N(0,1) at x = 1.5
dnorm( x = 1.5 , mean = 0 , sd = 1)

## plot the normal distribution
x = seq(-4 , 4 , by = 0.01)
plot(x , dnorm(x , mean = 0 , sd = 1) , type = "l")

## cumulative distribution function
pnorm( q = 0 , mean = 0 , sd  = 1)

## the inverse value of cumulative function
qnorm( p = 0.90 , mean = 0 , sd = 1)
qnorm( p = 0.95 , mean = 0 , sd = 1)
qnorm( p = 0.99 , mean = 0 , sd = 1)

qnorm( p = 6 , mean = 0 , sd = 1)




### t - student distribution

x = rt(n=100 , df = 10)

dt( x = 0 ,  df = 10)

x = seq(-6,6,by = 0.1)
plot(x , dt(x, df = 10) , type = "l")

pt( q = 0.5 , df = 10)
pt( q = 1.5 , df = 10)

qt( p = 0.91774 , df = 10 )
qt( p = 0.9177463 , df = 10 )




## Uniform distribution

runif( n = 100 , min = 0 , max = 1)

dunif(0.2 , min = 0  , max =1)

x = c(-5, -1, 0, 0.1, 0.2, 0.4, 0.9, 1, 2, 3, 4)
dunif(x , min = 0  , max =1)


punif()

qunif()
