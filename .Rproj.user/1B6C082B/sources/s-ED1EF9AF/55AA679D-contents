library(dplyr)
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = MechaCar_Table)
summary (lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = MechaCar_Table))