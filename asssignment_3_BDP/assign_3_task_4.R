library(sqldf)

#Which ad was viewed the most? list top 10 ads

data1 <- read.csv(file="detail.csv",
                  header = TRUE, sep = ","
)

tail(sort(data1$views),10)

