
# Call the Library to use it
library(readxl)

BankCustomer <- read_excel("Datacleaned.xlsx")

# Viewing the data
View(BankCustomer)

install.packages("plyr")
library(plyr)

# field list
str(BankCustomer)

# rename the field age to Age
BankCustomer <- rename(BankCustomer, c("age" = "Age"))
str((BankCustomer))
View(BankCustomer)

# 87
max(BankCustomer$Age)
# 19
min(BankCustomer$Age)

BankCustomerAgeCategorized <- transform(BankCustomer, Generation = ifelse(Age<22, "Z", ifelse(Age<41, "Y", ifelse(Age<53, "X", "Baby Boomers"))))
BankCustomerAgeCategorized


# 2 way frequency table 
table(BankCustomerAgeCategorized$Generation, BankCustomerAgeCategorized$poutcome)
