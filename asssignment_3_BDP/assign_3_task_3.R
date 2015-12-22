library(sqldf)


data1 <- read.csv(file="detail.csv",
                  header = TRUE, sep = ","
)
data1$
minviews <- 422
maxviews <- 300
mer <- sqldf(paste("select detaildesc........  from data1 where views 100 ", sep = ""))
print(mer)
