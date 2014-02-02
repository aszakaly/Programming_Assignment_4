setwd("D:/Documents/Study/Coursera_Computing_for_data_analysis/Programming_Assignment_4")
homicides <- readLines("homicides.txt")
shoot <- length(grep("[Cc]ause: [Ss]hooting", homicides))
asphy <- length(grep("[Cc]ause: [Aa]sphyxiatio", homicides))
blunt <- length(grep("[Cc]ause: [Bb]lunt [Ff]orce", homicides))
other <- length(grep("[Cc]ause: [Oo]ther", homicides))
stab <- length(grep("[Cc]ause: [Ss]tabbing", homicides))
unkn <- length(grep("[Cc]ause: [Uu]nknown", homicides))
names <- c("Shootings", "Asphyxiatio", "Blunt Force", "Other", "Stabbing", "Unknown")
counts <- c(shoot, asphy, blunt, other,stab, unkn)
names(counts)<- names

