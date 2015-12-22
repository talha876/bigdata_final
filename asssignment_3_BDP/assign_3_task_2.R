olx <- heisenberg <- read.csv(file="olx22.csv", header = T,sep=",")

daraz <- heisenberg <- read.csv(file="assgnment2_data_2.csv", header = T,sep=",")

nomatch <- grep(daraz,olx$title, value = FALSE)
nomatch





