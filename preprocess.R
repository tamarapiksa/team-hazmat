setwd("~/Documents/Sideprojects/bayeshack-transportation-hazmat/data")
library(plyr)

citycodes <- read.csv('city_codes.csv')
citycodes <- citycodes[,c(1:3)]
colnames(citycodes) <- c("dms_orig", "FAF.Regions.Orig", "FAF.State.Orig")

destcitycodes <- citycodes
colnames(destcitycodes) <- c("dms_dest", "FAF.Regions.Dest", "FAF.State.Dest")

freight <- read.csv('freight_data.csv')


pp <- join(freight, citycodes, by="dms_orig" )

pp <- join(pp, destcitycodes, by ="dms_dest")