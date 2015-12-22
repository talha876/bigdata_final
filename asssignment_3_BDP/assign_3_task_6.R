olx <- heisenberg <- read.csv(file="olxnewfirstpage.csv", header = T,sep=",")
duplicate <-  unique(olx$city)
duplicate