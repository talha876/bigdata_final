library(sqldf)

#What mobile was available for sale most ? list top 10 mobiles and top 10 tablets

data1 <- read.csv(file="olxnewfirstpage.csv",
                  header = TRUE, sep = ","
)

upper <- toupper(data1$title)
                 nn <- factor(upper)
                 nn


