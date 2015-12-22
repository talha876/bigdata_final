library(XML)
for (i in 1:390)
{
fileURL <- paste("http://olx.com.pk/mobiles-tablets/?page=",i, sep ="")
doc <- htmlTreeParse(fileURL, useInternal = TRUE)
title <- xpathSApply(doc, "//h3[@class='large lheight20 margintop10']/a/ span", xmlValue)
detailLink <- xpathSApply(doc, "//h3[@class='large lheight20 margintop10']/a/@href")
price <- xpathSApply(doc, "//p[@class='price x-large margintop10']",xmlValue)
date <- xpathSApply(doc,"//p[@class='color-9 lheight14 margintop3 small']", xmlValue)
date
city <- xpathSApply(doc,"//small[@class='breadcrumb small']/span",xmlValue);

category <- xpathSApply(doc,"//p[@class='color-9 lheight14 margintop3']/small",xmlValue)
category
verified <- xpathSApply(doc,"//td[@class='wwnormal tright td-price']/span")

lapply(verified["//td[@class='wwnormal tright td-price']/span"], function(x){
  verified 
}
)
dfrm <- data.frame(title=title,detailLink=detailLink,price=price,date=date,city=city, category=category ,verified="verified")

write.table(dfrm, file="olxnewfirstpage.csv",
            append=TRUE,
            col.names = FALSE,
            sep = ',')


}







