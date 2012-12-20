# Significant part of the code was taken from
# http://www.statmethods.net/input/importingdata.html


# Data file c:/mydata.cvs
# Year,Make,Model
# 1997,Ford,E350
# 2000,Mercury,Cougar
#
mycsvdata <- read.csv("c:/mydata.csv")

# header=TRUE: First row contains variable names, comma is separator
# sep=",": Assign the variable id to row names
# row.names=: Note the names
mydata <- read.table("c:/mydata.csv", header=TRUE, sep=",", row.names=c("1st car", "2nd car"))

