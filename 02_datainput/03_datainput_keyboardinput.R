# Create data frame from scratch
age <- c(25, 30, 56)
gender <- c("male", "female", "male")
weight <- c(160, 110, 220)
mydata <- data.frame(age, gender, weight)

# Reset info in data frame
mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))

# Enter data using editor
# mydata <- edit(mydata)


# Terminal using  
cat('Number of populations:', '\n')
x<-scan(nlines=1, quiet=TRUE)

# ! IMPORTANT ! WARNING !
# You have to hit Ctrl+Z on Windows(Ctrl+D on Mac) to end scan in Rscript
# Also it invokes hanging in RStudio
# x<-scan(file("stdin"), what=character())