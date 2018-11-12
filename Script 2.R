x <- 1   # assigning value 1 to object x
x = 1    # assigning value 1 to object x. We will use = instead of <- in the
         # rest of the class.




x
print(x) # print the value of object x




x = c()  # create an empty vector
x = c(1,2,3,4,5)  # create a vector of values 1 up to 5
x



x = 1:100               # create a sequence of integer numbers
x = seq(1, 100, by = 1) # a function for creating sequence of numbers
x = seq(10.5, 40.2, by = 1) # a function for creating sequence of numbers
x[23]   # subsetting: return the 23-th element of vector x
x[1:5] # return the first 5 elements of x

x = 1
class(x)  # return the class of object x. Class is an attribute.




x = 1L    # define an integer object x.
class(x)  # return the class of object x. Class is an attribute.



x = "This is my first session in R!"  # define a character object
class(x)  # return the class of object x. Class is an attribute.



x = c("A" , "B" , "C" , "D" , "E")
x



####### attributes

length(x)  # return the length of object x. Actually the total number of 
           # values of object x are returned by performing this function. 
names(x)   # names is an attribute of an object.
names(x) = c("A")   # define an attribute for object x
names(x)   # print the name attributes for object x
names(x) = c("A" , "B" , "C" , "D" , "E")
names(x)
dim(x)     # dim is an attribute of object. It shows the dimension of an obj

#######

y = Inf    # infinity
1 / Inf    # dividing 1 by infinity
Inf / Inf  # A wrong mathematical calculation!
1 / 0      # divided by zero


### change the type of variables in R which simply called coercion!

y = c(1.7, "a")  ## character
y = c(TRUE, 2)   ## numeric
y = c("a", TRUE) ## character

x = 0:6
class(x)
y = as.numeric(x)  ##  explicitly convert the class of one object to numeric
class(y)

y = as.logical(x) ##  explicitly convert the class of one object to logical
class(y)

y = as.character(x) ##explicitly convert the class of one object to character
class(y)

x = c("a", "b", "c")
as.numeric(x)
as.logical(x)



## Mathematical and logical operations on objects
##  +	addition
##  -	subtraction
##  *	multiplication
##  /	division
##  ^ or **	exponentiation
##  x %% y	modulus (x mod y) 5 %% 2 is 1
##  <	less than
##  <=	less than or equal to
##  >	greater than
##  >=	greater than or equal to
##  ==	exactly equal to
##  !=	not equal to
##  |   or condition
##  ^   and condition


x = 8
y = 4
x+y
x-y
x*y
x/y
x ^ y
x ** y
x%%y

x = 1:10
y = 11:20
x+y

x = 5
y = 11:20
x + y

x = 5
x > 5   ## check if the value of x is greater than 5
x >= 5  ## check if the value of x is greater and equal to 5
x != 5  ## check if the value of x is not equal to 5
x == 5  ## check if the value of x is equal to 5

x = 1:100
x < 25   ## create a logical vector indicating which element is lower than 25
x[x < 25]  ## subsetting the values: return the values that are lower than 25


## create a logical variable indx, indicating which values of x are 
## greater than 75 and lower than 25

indx = x < 25 | x>75   
x[indx]





### Matrices
x = 1:20
mat = matrix(x , nrow = 4 , ncol = 5)  ## create a matrix 
mat
attributes(mat)
dim(mat)    ## find the dimension of mat matrix

mat = matrix(x , nrow = 4 , ncol = 5 , byrow = TRUE)
mat


mat = 1:20
dim(mat) = c(4,5)
mat
class(mat)
attributes(mat)


mat[1,2]  # subsetting: return the value in first row and second column
mat[1,]   # subsetting: return the first row of mat matrix 
mat[,1]   # subsetting: return the first column of mat matrix 


### Matrix operations

x = 1:16
A = matrix(x , nrow = 4 , ncol = 4)  
y = 1:16
B = matrix(y , nrow = 4 , ncol = 4)  

A * B     # Element multiply
A %*% B   # True matrix multiplication

t(A)




x = 1:3
y = 10:12
mat = cbind(x, y)   ## create a matrix and put the x and y in two columns
mat = rbind(x, y)   ## create a matrix and put the x and y in two rows
class(mat)



### dataframe

ID    = 1:5
Names = c("A" , "B" , "C" , "D" , "E") 
Age   = c(15, 25, 37, 34, 40)
class(ID)
class(Names)
class(Age)

data = data.frame(ID , Names , Age)  ## create a data.frame of 3 objects
data[1]
data$"ID"
data$"Names"
data$"Age"




#### Missing values and finding Not a Number (NaN)
x <- c(1, 2, NA, 10, 3)  # a vector with a missing value
is.na(x)                 # check if the object contains missing values

x <- c(1, 2, NaN, NA, 4) # a vector with missing value and not a number value
is.na(x)
is.nan(x)


bad = (is.na(x)) | (is.nan(x))
y = x[!bad]



### is.vector is.matrix is.data.frame

y = 1:10
is.vector(y)
is.matrix(y)

data
is.vector(data)
is.data.frame(data)
is.matrix(data)

