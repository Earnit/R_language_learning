# I took this code from http://www.statmethods.net/input/datatypes.html


##
# VECTORS
##

# Numeric vector
a <- c(1,2,5.3,6,-2,4)

# Character vector
b <- c("one","two","three") 

# Logical vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE) 

# Get 2nd and 4th elements of vector
z <- a[c(2,4)]


##
# MATRICES
##

# Generates 5 x 4 numeric matrix 
x<-matrix(1:20, nrow=5,ncol=4)

# Another example, 
cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2") 

# Dimnames is names for dimensions of matrix, 
#  rnames could be changed by c("asd", "qwe") for example
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE, 
                   dimnames=list(rnames, cnames))

print("Our matrix")
print(x)

print("4th column of matrix")
print(x[,4]) 

print("3rd row of matrix")
print(x[3,])

print("rows 2,3,4 of columns 1,2,3")
print(x[2:4,1:3])


##
# DATA FRAMES
##

d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)

# Creates data frames, used as the fundamental data structure
mydata <- data.frame(d,e,f)

# Set the variable names of the object
names(mydata) <- c("ID","Color","Passed") 