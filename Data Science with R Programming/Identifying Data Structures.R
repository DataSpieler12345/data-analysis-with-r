# load g-data package
install.packages("readxl")
# Call the Library to use it
library(readxl)

# setting work directory
setwd("E:/RStudio/Data Science with R Programming")
getwd()
BankCustomer <- read_excel("Datacleaned.xlsx")
# another way
setwd(choose.dir())
getwd()
# new Df 
BankCustomer1 <- read.csv("test.csv", sep = ";")
# Viewing the data
View(BankCustomer1)
str(BankCustomer1)
BankCustomer2 <- read.csv("test.csv", stringsAsFactors = FALSE)
str(BankCustomer2)

