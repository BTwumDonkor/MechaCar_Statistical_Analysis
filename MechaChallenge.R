### Model 15 Challenge ###

## Deliverable 1 ##

# Load Library

library(dplyr)

# Import and read csv 
MechaCar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(MechaCar_df)

# Linear Regression Model

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df)

# Summary Statistics to show P-value and R-squared

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df))


## Deliverable 2 ##

# Import and read csv 
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Total summary statistic

total_summary <- Suspension_Coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups ='keep')

# Lot summary statistic using group_by()

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups ='keep')


## Deliverable 3 ##

# t-test for all lots combined with population mean = 1500 psi

t.test(Suspension_Coil_df$PSI,mu = 1500)

# t-test for individual lots

t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)

t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)

t.test(subset(Suspension_Coil_df, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)

