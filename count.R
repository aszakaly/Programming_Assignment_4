setwd("D:/Documents/Study/Coursera_Computing_for_data_analysis/Programming_Assignment_4")

count <- function(cause = NULL){
  if (cause != "Shooting" && cause != "shooting" && cause != "asphyxiation" && cause != "Asphyxiation" && cause != "asphyxiation" && cause != "Blunt Force" && cause != "blunt force" && cause != "Unknown" && cause != "unknown" && cause != "Stabbing" && cause != "stabbing" && cause != "Other" && cause != "other"){
    stop("Cause of Death not Valid")}
  
  
  homicides <- readLines("homicides.txt")
  
  r <- regexec("<dd>Cause: (.*?)</dd>", homicides)
  m <- regmatches(homicides , r)
  cause1 <- sapply(m, function(x) x[2])
  
  
  a <- length(grep(cause, cause1, ignore.case=TRUE))
  return(a)
  
}

