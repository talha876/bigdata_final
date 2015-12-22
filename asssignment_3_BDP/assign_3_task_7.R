#Which city included most ads? rank cities according to the number of ads posted
library(sqldf)

#What mobile was available for sale most ? list top 10 mobiles and top 10 tablets

data1 <- read.csv(file="olxnewfirstpage.csv",
                  header = TRUE, sep = ","
)
occur <- data.frame(table(data1$city))
occur[occur$Freq > 1,]






