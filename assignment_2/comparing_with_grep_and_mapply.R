olx <- heisenberg <- read.csv(file="olx22.csv", header = T,sep=",")

daraz <- heisenberg <- read.csv(file="assgnment2_data_2.csv", header = T,sep=",")



#grep( toupper(daraz$title[1:3]), toupper(olx$title[1:3]) , value = TRUE)


matched <-  mapply(grep, toupper( daraz$title[1:1160]), toupper(olx$title[1:1200]) )
matched
dfrm <- data.frame(matched=matched)

write.csv(dfrm, "matchedddd.csv")

