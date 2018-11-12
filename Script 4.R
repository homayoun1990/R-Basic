## if structure
## if(condition) {statement}

x = runif(n = 100 , min = 0 , max = 1)
mean(x)


## All of the following scripts, check if the mean value of vector x
## is lower than a specified number and print a sentence or a value
## according to its number.

if( mean(x) < 1 ) { print("Yes. The mean is lower than 1") }
if( mean(x) > 1 ) { print("Yes. The mean is lower than 1") }

if( -1 < mean(x) ) { print("Yes. The mean is greater than -1") }

if( mean(x) == 0 ) {print("Yes")}

if( mean(x) != 0 ) {print("Yes")}

if( mean(x) < 1 ) {2}




## ifelse(test,yes,no)

ifelse( mean(x) < 1, yes = 1 , no = 2 )

y = log( c(3,0.5,2,4) )
ifelse(y < 0, NA, y)





##  if (condition) statement1 else statement2

if( mean(x) > 0 ) y = 1  else y = 2

print(y)


##  if (condition) {statement1} else {statement2}

if( mean(x) < 0 ) {y = 1 ; y = y + 1} else {y = 2; y = y * 8}
print(y)


## An example for if else structure.
client = 'A'
price = 100

if(client=='A'){
  tot.price = price * 1.12      # 12%
} else {
  if(client=='B'){
    tot.price = price * 1.06    # 6% 
  } else {
    tot.price = price * 1       # 0%
  }
}

tot.price






### Loop structure

# for(loop_variable in start:stop) {}

## print the values of 1 up to 10. 

for(i in 1:10){
print(i)
}


x = runif(10 , 0 , 1)
x

for(i in 1:10){
   print( x[i])
}



## Print the difference of two consecutive numbers in vector x
for(i in 2:10){
   print( x[i] - x[i-1] )
}


## Add the constant value 1 to each element of vector x

for(i in 1:10){
	print(x[i] + 1)
}



x = runif(1000)
y = numeric(1000)
for(i in 2:1000){
	y[i] =  x[i] / x[i-1]
}
plot(y)
plot(log(y))

## Grid the plot panel in order to create multiple plots in the same panel
par( mfrow = c(1,2) )
plot(y)
plot(log(y))



## example 1 : for  (loop)
## find the mean value of each column in mat matrix

n = 100 * 100
x = runif(n , min = 0 ,max  =  1)
mat = matrix(x , 100 , 100 , TRUE)

res = numeric( ncol(mat) )
for(i in 1:ncol(mat)){
	res[i] = mean(mat[,i])
}

plot(res , col = "blue")
mean(res)





## example 2 : for  (loop)
## find the transpose of a matrix

x = runif(100 , 0 , 1)
mat = matrix(x , 10 , 10 , TRUE)

t_mat = matrix(0 , nrow(mat) , ncol(mat) )
for(i in 1:nrow(mat)){

	for(j in 1:ncol(mat)){
		t_mat[i,j] = mat[j,i]
	}
}

t_mat

t_mat[1,4] == mat[4,1]
t_mat == t(mat)





## break in a loop

for(i in 1:10){
   print(i)
   if(i>=6){break}
}





## while structure

## print i value while the value is lower than 10
i = 1
while(i < 10)
	{
	print(i)
	i = i + 1
	}


## print values of x while it is lower than 5 and it is not equal to 3
x = 1
while(x < 5) {x = x+1; if(x == 3) next; print(x);}









## Example

nuclotide = c("A" , "T" , "C" ,"G")

p = c( 1/4, 1/4, 1/4, 1/4)

DNA = sample(nuclotide , 1000 , replace = TRUE, prob = p)

str(DNA)
DNA[1]
DNA[24]

A = c()
for(i in 1:1000){

   if(DNA[i] == "A") {A = c(A,i)}
}
A

T = c()
for(i in 1:1000){

   if(DNA[i] == "T") {T = c(T,i)}
}


C = c()
for(i in 1:1000){

   if(DNA[i] == "C") {C = c(C,i)}
}


G = c()
for(i in 1:1000){

   if(DNA[i] == "G") {G = c(G,i)}
}


length(A) / length(DNA)
length(T) / length(DNA)
length(C) / length(DNA)
length(G) / length(DNA)


A = c()
T = c()
G = c()
C = c()
for(i in 1:1000){
  
  if(DNA[i] == "A") {A = c(A,i)}
  if(DNA[i] == "T") {T = c(T,i)}
  if(DNA[i] == "C") {C = c(C,i)}
  if(DNA[i] == "G") {G = c(G,i)}
  
}

length(A) / length(DNA)
length(T) / length(DNA)
length(C) / length(DNA)
length(G) / length(DNA)


