# i = 0
# repeat {
#   Sys.sleep(0.1)
#   i = i+1
#   print(i)
#   if(i==60000)
#     break
# }
# 
# # create a data frame from scratch
# age <- c(25, 30, 56)
# gender <- c("male", "female", "male")
# weight <- c(160, 110, 220)
# mydata <- data.frame(age,gender,weight)

# # enter data using editor
#mydata <- data.frame(age=numeric(0), gender=character(0), weight=numeric(0))
#mydata <- edit(mydata)
# # note that without the assignment in the line above,
# # the edits are not saved! 



rm(list = ls())

percent <- function(val, per) {
  (val / 100) * per
}
# 
# earn = 35000
# spend = 30000
# 
# nakoplenie_mas = vector()
# i = 0
# earnplus = 0
# plus = 0
# 
# repeat {
#   earnplus <- earn+percent(earn, i)
#   plus <- earnplus - spend
#   nakoplenie_mas <- c(nakoplenie_mas, plus)
#   i <- i+1
#   if(i==38)
#     break
# }
# 
# otnoshenie = 0
# otnoshenie_mas = vector()
# 
# print("=======================")
# for(i in nakoplenie_mas) {
#   otnoshenie <- (i/head(nakoplenie_mas, 1)) * 100
#   cat("Otn ", otnoshenie, "==", head(nakoplenie_mas, 1), "==", i , "==\n")
#   otnoshenie_mas <- c(otnoshenie_mas, otnoshenie)
# }
# 
# lines(otnoshenie_mas)


###############################################################################
# Otnoshenie minimalnogo spreda k precenty pribuli
# TODO: kol-vo sdelok dlya ybutka 20% (+ comission)
# 1% profit will be gained on ?% grow base active

##
# depo: depo size, (100000)
# stopperc: maximum depo loss in percents (80)
# lossperc: maximum single trade loss in percents (2)
# return: quantity of trades that you can lose
##
losetrades <- function(depo, stopperc,  lossperc) {
  stoploss = percent(depo, stopperc)
  for(i in 1:10000) {
    depo <- depo - percent(depo, lossperc)
    if (depo < stoploss)
      break
  }
  return(i)
}

##
# Customizable function
##
plotlosetrades <- function() {
  depo = 100000
  mas = vector()
  for(i in seq(from = 0.5, to = 5, by =0.1)) {
    trades <- losetrades(depo, 80, i)
    cat("i:", i, " trades:", trades, "\n")
    mas <- rbind(mas, c(i, trades))
  }
  df <- data.frame(mas)
  names(df) <- c("percent", "trades")
  # !!! 7.22 Why do lattice/trellis graphics not work?
  library(ggplot2)
  gp <- ggplot(df, aes(df$percent, df$trades)) + geom_point() + 
    scale_x_continuous(breaks=seq(0, 5, 0.5)) + 
    scale_y_continuous(breaks=seq(0, 50, 2))
#  print(gp)  # WTF!!!!!!!!!!!
}


foo <- function(val) {
  
}

mydata = data.frame(cbind(1:80, 10:30))
#print(library(ggplot2))
#print(qplot(1:80, 1:100, mydata, geom = "density"))
qplot(mydata, geom = "density")