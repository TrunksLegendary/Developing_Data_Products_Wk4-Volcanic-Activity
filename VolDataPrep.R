
library(dplyr)
library(lubridate)
library(tidyr)

# Load and transform dataset
VolDat <- read.csv("volcano.csv", header = TRUE)
VolDat <- unite(VolDat,Region,Location,Name,sep="_" )
colnames(VolDat) <- c("year","Region","latitude","longitude","Elevation","VEI")
write.csv(VolDat,file = "Voldata.csv",row.names = FALSE)