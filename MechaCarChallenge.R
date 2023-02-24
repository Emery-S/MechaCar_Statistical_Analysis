# add library
library(tidyverse)

# read in csv
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# check the columns
head(MechaCar)

# create a linear regression using lm with all six variables
lm(vehicle_length ~ ., MechaCar)
summary(lm(vehicle_length ~ ., MechaCar))

# read in csv
SusCoil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# check columns
head(SusCoil)

# create a data frame for the suspension coil PSI summary
total_summary <- SusCoil %>% summarize(Mean=mean(PSI),
                                       Median=median(PSI),
                                       Varience=var(PSI),
                                       Std_Dev =sd(PSI),
                                       Num_Coil=n(),
                                       .groups = 'keep')

# create a data frame for the suspension coil lot summary 
lot_summary <- SusCoil %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),
            Median=median(PSI),
            Varience=var(PSI),
            Std_Dev =sd(PSI), 
            Num_Coil=n() ,
            .groups = 'keep')

?t.test()

# Use t-test to determine PSI across all Manufacturing_lots
t.test(SusCoil$PSI, mu=1500)

# Use t-test and subset by lot
t.test(subset(SusCoil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(SusCoil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(SusCoil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

