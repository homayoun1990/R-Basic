x = rnorm(100 , 0, 1)
y = mean(x)

## Generate 100 sample from N(0,1) and repeat this process 500 times 
## and compute mean of these values in each time.
for(i in 1:500){
  x = rnorm(100, 0, 1)
  y = c(y,mean(x))
}

hist(y , col = "orange", breaks = 20)



## central limit theorem 
y = runif(100)
x = mean(y)
hist(x , col = "orange")

for(i in 1:400) {
  y = runif(100)  
  x = c(x , mean(y))  
  hist(x , col = "orange", breaks = 20)
  print(i)
  Sys.sleep(0.05)
}


library(MASS)
data(package = "MASS")   # lists the datasets in MASS package 
str(beav1)  # shows the structure of an object
head(beav1)  ## return some of the rows inside Animals datasets
help(beav1)  ## access help about the variables in the dataset



w = beav1$temp
y = sample(w , 10, replace = TRUE)
x = mean(y)

for(i in 1:400) {
  y = sample(w , 10, replace = TRUE)
  x = c(x , mean(y))  
}

hist(x , col = "orange" , breaks = 20)
sd(w)
sd(x)



w = beav1$temp
y = sample(w , 100, replace = TRUE)
x = mean(y)

for(i in 1:400) {
  y = sample(w , 100, replace = TRUE)
  x = c(x , mean(y))  
}

hist(x , col = "orange" , breaks = 20)

sd(w)
sd(x)
