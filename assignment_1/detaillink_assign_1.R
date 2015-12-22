library(XML)



chundi <- heisenberg <- read.csv(file="olx22.csv", header = T,sep=",")

chundi[3]


for(i in 2:19500)
{
  
  
  doc <-   htmlTreeParse(chundi$dlink[i], useInternal = TRUE)
  
  
  adid <-  xpathSApply(doc,"//span[@class='nowrap']/span", xmlValue)
  descriptionn <- xpathSApply(doc, "//div[@class='clr']/p", xmlValue)
  views <- xpathSApply(doc, "//div[@class='pdingtop10']/strong", xmlValue)
  userinfo <- xpathSApply(doc,"//span[@class='block color-5 brkword xx-large']", xmlValue)
  contactss <- xpathSApply(doc,"//div[@class='clr fleft marginleft5 pp  contactitem brkword']/strong", xmlValue)
  
  
  dfrm <- data.frame(  Adid=adid, descriptionn=descriptionn, views=views)
  write.table(dfrm, file="detail.csv",
              append=TRUE,
              col.names = FALSE,
              sep = ',')
}













