setwd("C:/Users/Dominique/OneDrive/Documents/Spring 2018/Applied Statistical Programming/git/Week 9/MIdterm/MIdterm")
# load the libraries that'll do all the work
library(devtools)
library(roxygen2)
rm(list=ls())

#now we're gonna run skeleton to set up the bones of our package

package.skeleton()
current.code<-as.package("easyRasch")
load_all(current.code)
document(current.code)
check(current.code)
