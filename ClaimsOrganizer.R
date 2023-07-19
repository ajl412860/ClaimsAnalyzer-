library(readxl)
library(ggplot2)
library(dplyr)
library(lubridate)

Claims <- read_excel("Claims.xlsx")


Claims_Filtered = select(Claims,`Charges`,`Type`, `Referred Date` )

Claims_Filtered$`Referred Date` <- as.Date(Claims_Filtered$`Referred Date`)


Claims_Filtered$Month <- months(Claims_Filtered$`Referred Date`)

Claims_Filtered$Year <- format(Claims_Filtered$`Referred Date`,format="%y")

Claims_Filtered2 <- aggregate( Charges ~ Month + Year , Claims_Filtered , FUN = length )
