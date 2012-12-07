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
# LISTS
##
print("### LISTS ###")

# Example of a list with 4 components -
# a string, a numeric vector, a matrix, and a scaler
w <- list(name="Fred", mynumbers=a, mymatrix, 5.3)
print(w)

# Example of a list containing two lists
x <- c(list("listpart", 1),w) 
print(x)

# Identify elements of a list using the [[]] convention
# 2nd component of the list
print(x[[3]])

# Component named mynumbers in list
print(x[["mynumbers"]])


##
# FACTORS
##
print("### FACTORS ###")

# Variable gender with 20 "male" entries and 30 "female" entries 
gender <- c(rep("male",20), rep("female", 30))
print(summary(gender))

# Stores gender as 20 1s and 30 2s and associates 
# 1=female, 2=male internally (alphabetically)
# R now treats gender as a nominal variable, also check ordered( ) func
gender <- factor(gender)
print(summary(gender))


##
# USEFUL FUNCTIONS
##
print("### USEFUL FUNCTIONS ###")

# Number of elements or components
print(length(gender))
print(length(x))

# Sructure of an object
print(str(gender))
print(str(x))

# Class or type of an object
print(class(gender))
print(class(x))
print(class(id))

# Names
print(names(gender))
print(names(x))
print(names(id))

# Combine objects into a vector
# c(object,object,...)

# Combine objects as columns
# cbind(object, object, ...)
m<-cbind(1, 1:7)
print(m)
m <- cbind(m, 8:14)[, c(1, 3, 2)]
print(m)

# Combine objects as rows
# rbind(object, object, ...)
m<-rbind(1:3, 2:7, 3)
print(m)

# Mixup example
print(cbind(0, rbind(1, 1:3)))

# List current objects
# ls()       
# Delete an object
# rm(object) 
# Delete all current objects rm(list=ls())

# Edit copy and save as newobject
# newobject <- edit(f) 

# Edit in place
# fix(vol)               
