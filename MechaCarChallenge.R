#Deliverable 1

library(dplyr)

mpg_MechaCar <- read.csv("MechaCar_mpg.csv", stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_MechaCar))

#Deliverable 2

sus_coil <- read.csv("Suspension_Coil.csv", stringsAsFactors = F)

total_summary <- sus_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Varience=var(PSI), StandardDeviation=sd(PSI), .groups = 'keep')

lot_summary <- sus_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Varience=var(PSI), StandardDeviation=sd(PSI), .groups = 'keep')

#Deliverable 3

#all lots vs population
t.test(sus_coil$PSI, mu = mean(sus_coil$PSI))

#each individual lot vs mean
t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot == 'Lot1'), mu = mean(sus_coil$PSI))

t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot == 'Lot2'), mu = mean(sus_coil$PSI))

t.test(subset(sus_coil$PSI, sus_coil$Manufacturing_Lot == 'Lot3'), mu = mean(sus_coil$PSI))

