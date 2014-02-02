setwd("D:/Documents/Study/Coursera_Computing_for_data_analysis/Programming_Assignment_4")

agecount <- function(age=NULL){
  homicides <- readLines("homicides.txt")
  r<-regexpr("[0-9]+ [Yy]ears [Oo]ld",homicides)
  m<-regmatches(homicides,r)
  
  
  a <- length(grep(age, m, ignore.case=TRUE))
  return(a)
}