library(tidyr)
library(readxl)
babies<-read_excel("/Users/ortegap1/Desktop/SCI Data/DS 104 Data Rangling VIZ/babies.xlsx")
babies1 <- unite(babies, Address, StreetAddress, City, Zipcode, sep = "/")


fake<-read_excel("/Users/ortegap1/Desktop/SCI Data/DS 104 Data Rangling VIZ/FakeNews.xlsx")
head(fake)
fake$Storytype<-"fake"
#remove column 
fake1 <- fake[, 2:4]

fake2 <- separate(fake1, url, c("Website", "Domain"), sep="_")
fake3 <- unite(fake2, FullSiteName, Website, Domain, sep = "_")
fake4 <- fake3[1:10,]
