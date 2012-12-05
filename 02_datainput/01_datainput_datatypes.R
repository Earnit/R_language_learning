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
print("### MATRICES ###")

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
print("### DATA FRAMES ###")
  
id <- c(1,2,3,4)
col <- c("red", "white", "red", NA)
bol <- c(TRUE,TRUE,TRUE,FALSE)
vol <- c(3, 5, 7, 11)
age <- c(10, 53, 19, 22)

# Creates data frames, used as the fundamental data structure
mydata <- data.frame(id,col,bol,vol, age)

# Set the variable names of the object
names(mydata) <- c("ID","Color","Passed", "Volume", "Age") 
print(mydata)

# Сolumns 3,4,5 of data frame
print(mydata[3:5])

# Columns ID and Age from data frame
print(mydata[c("ID","Age")])

# Variable Age in the data frame 
print(mydata$Age)


##
# List
##
print("### LIST ###")

