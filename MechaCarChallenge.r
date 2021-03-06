library(dplyr)
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = MechaCar_Table)
summary (lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = MechaCar_Table))

Suspension_Coil_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
Total_summary <- Suspension_Coil_Table %>% summarize(Mean=mean(PSI), Median=median(PSI),  Variance=var(PSI), Standard_Deviation=sd(PSI), .groups = 'keep')
lot_summary <- Suspension_Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),  Variance=var(PSI), Standard_Deviation=sd(PSI), .groups = 'keep')

t.test(Suspension_Coil_Table$PSI, mu=1500)
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot =="Lot1", select = c("PSI")), mu = 1500)
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot =="Lot2", select = c("PSI")), mu = 1500)
t.test(subset(Suspension_Coil_Table, Manufacturing_Lot =="Lot3", select = c("PSI")), mu = 1500)
