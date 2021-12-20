library(gtrendsR)
library(tidyverse)

trends <- gtrends(keyword = c("Machine Learning"),time = "now 1-d")
iot2020 <- trends$interest_by_country

ibc1d<-trends$interest_by_country
df[!is.na(df$hits),]
ibc1d2<-df[!is.na(df$hits),]
first_10_rows<-head(ibc1d2,10)

barplot(first_10_rows$hits,names.arg=first_10_rows$location,xlab="Country Names",ylab="No. Of Machine Learning Hits",col="blue",
        main="Search Query Bar chart (Machine Learning)")
