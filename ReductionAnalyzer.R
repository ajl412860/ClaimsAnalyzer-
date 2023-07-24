library(readxl)
library(ggplot2)
library(dplyr)

ZF_Sheets <- read_excel("../R/Sheets.xls")


#ZF_Sheets$`Average Reduction %`
#ZF_Sheets$`Assigned To`
#Calculate average 
#has not missing inforation
ZF_Sheets$`Total Charges $ (All Time)`

ZF_Sheets_2 = select(ZF_Sheets, `Assigned To`,`Provider Name` , `Total Bills (All Time)`
                              ,`Average Reduction %`,`Success Rate %`, `Average Charge $ (All Time)`, 
                              `Total Charges $ (All Time)`,
                              )
                              
                              
zf_no_missing <- filter(ZF_Sheets_2,`Assigned To` == "Zach Felder",`Average Reduction %` != ""
                        , ) 
### Has averages, and total amounts 
summary <- summary(zf_no_missing)
###
zf_25_30 = filter(zf_no_missing,`Average Reduction %` >= 25 & `Average Reduction %`<=
                    30,)
sum1 = sum(zf_no_missing$`Average Charge $ (All Time)`)
sum2 = sum(zf_no_missing$`Total Charges $ (All Time)`)

#summary(zf_25_30)

####


####
zf_avg <- mean(zf_no_missing$`Average Reduction %`)
zf_single_column <- zf_no_missing$`Average Reduction %`
zf_avg <- mean(zf_single_column)
print("The summary of the Average Reduction ")
print(zf_avg)
#Total Amount of Bills 


ZF_Sheets$`Total Bills (All Time)`
zf_Total = filter(Zach_Felder_Sheets,`Total Bills (All Time)` Assigned To` == "Zach Felder",)



#Find Bills that are between 25% - 30%,  

zf_25_30 = filter(Zach_Felder_Sheets,
                  `Average Reduction %` != ""
                  & `Average Reduction %` >= 25 & `Average Reduction %`<=
                    30, 
                    )
