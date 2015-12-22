library("XML")

library(httr)


fileurl <- GET( "https://www.daraz.pk/mobile-phones/")
 for( i in  1:29)
 {
   url <- paste(fileurl,i, sep = '')

doc <- htmlTreeParse(url,useInternal =TRUE )

title <- xpathSApply(doc,"//span[@class='name']", xmlValue)
brand <- xpathSApply(doc,"//span[@class='brand ']", xmlValue)
brand
title

dfrm <- data.frame(title=title, brandname=brand)

write.table(dfrm, file="assgnment2_data_2.csv",
            append=TRUE,
            col.names = FALSE
            )
 }