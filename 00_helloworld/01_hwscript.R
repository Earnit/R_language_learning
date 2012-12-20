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



###############################################################################
###############################################################################
###############################################################################

##
# base: basic value
# pc: percent, which we want to get
# return: value
##
percent_val <- function(base, pc) {
  (base / 100) * pc
}

##
# base: basic value - 100%
# val: value
# return: ratio between base & val in percents
##
percent_pc <- function(base, val) {
  (val * 100) / base
}


###############################################################################
##
# Otnoshenie prosrat' k zarabotat'
# 
##
losegain <- function() {
  depo = 100000
  needtogain = vector()
  lose = vector()
  plotdata = vector()
  
  for (i in 1:80) {
    deposizeloss = percent_val(depo, i)
    plotdata <- c(plotdata, percent_pc(depo-deposizeloss, deposizeloss))
  }
  data.frame(plotdata, row.names=NULL)
}
  
require(ggplot2)
df <- foo()
print(ggplot(df, aes(1:length(df$plotdata), df$plotdata)) + geom_point() + 
      xlab("Percents of our start depo that we have lost") +
      ylab("Percent of our current depo that we need to gain to return base depo") +
      #opts(strip.background = theme_rect(colour = 'purple', fill = 'pink', size = 3, linetype='dashed')))
      theme(panel.background = theme_rect(fill='green', colour='red')))





###############################################################################
# Otnoshenie minimalnogo spreda k precenty pribuli
# TODO: kol-vo sdelok dlya ybutka 20% (+ comission)
# 1% profit will be gained on ?% grow base active

##
# stopperc: maximum depo loss in percents (80)
# lossperc: maximum single trade loss in percents (2)
# return: quantity of trades that you can lose
##
losetrades <- function(stopperc,  lossperc) {
  depo = 100000
  stoploss = percent_val(depo, stopperc)
  for(i in 1:10000) {
    depo <- depo - percent_val(depo, lossperc)
    if (depo < stoploss)
      break
  }
  return(i)
}

##
# maxslump: maximum depo slump in percents (80)
# range: pecents, that we can lose in sigle trade, could be defined as array 
#        seq(from = 0.5, to = 5, by =0.1)
# return: statistic data for plotting
##
losetrades_statdata <- function(maxslump, pcrange) {
  mas = vector()
  for(i in pcrange) {
    trades <- losetrades(maxslump, i)
    mas <- rbind(mas, c(i, trades))
  }
  return(mas)
}

##
## NOT FUNC, CONSOLE CMDs
##
# statdata <- losetrades_statdata(80, seq(from = 0.5, to = 5, by =0.1))
# #print(qplot(statdata[,1], statdata[,2]))
# print(ggplot(as.data.frame(statdata), aes(statdata[,1], statdata[,2])) + geom_point() +
#         scale_x_continuous(breaks=seq(0, 5, 0.5)) +
#         scale_y_continuous(breaks=seq(0, 50, 2)))


###############################################################################
# Hlam

foo <- function() {
  mas <- c(1:100)
  df <- data.frame(mas)
  print(mas)
  ggplot(df, aes(x = 1:100, y = 1:100)) + geom_point()
}
#print(foo())

##
#
##
f <- function() {
  a <- 1:10
  b <- a ^ 2
  #qplot(a, b)
  df <- data.frame(gp = factor(rep(letters[1:3], each = 10)), y = rnorm(30))
  ggplot(df, aes(x = gp, y = y)) + geom_point()
}
#print(f())