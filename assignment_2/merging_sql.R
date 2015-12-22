library(sqldf)


data1 <- read.csv(file="assgnment2_data.csv",
                     header = TRUE, sep = ","
            )
data2 <- read.csv(file="brand.csv",
                  header = TRUE, sep = ","
)
data2$brand.
print(data2$X1.brand)
iphone <- "iphone"
samsumg <- "Galaxy"
qmobile <- "Qmobile"
nokia <-"nokia"
motorolla <-"motorolla"
htc <- "phone"

#merg <- sql = "select * from data where title like '%phone%' ";

mer <- sqldf(paste("select *  from data1 where title like '%",htc,"%'", sep = ""))
print(mer)
