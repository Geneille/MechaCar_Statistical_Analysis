# load the dplyr package and read in csv file
library(dplyr) 
mecha_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data=mecha_mpg) 

#generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=mecha_mpg)) 


# Import and read in the Suspension_Coil dataset
suspension_coil <- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)

# PSI total summary
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI),
                                           Median = median(PSI),
                                           Variance = var(PSI),
                                           SD = sd(PSI), .groups = 'keep') 

# Lot summary
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                         Median = median(PSI),
                                                                         Variance = var(PSI),
                                                                         SD = sd(PSI), .groups = 'keep')


# t test to determine if the PSI across ALL manufacturing lots is 
# statistically different from the population mean

t.test(suspension_coil$PSI,mu=1500)

# t test to determine if the PSI across EACH manufacturing lot is 
# statistically different from the population mean

lot1 <- subset(suspension_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)
