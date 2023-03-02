#Deliverable 1

# 3. Use the library() function to load the dplyr package.

library (dplyr)

# 4. Import and read the MechaCar_mpg.csf file as a dataframe./

prototype <- read.csv(file="MechaCar_mpg.csv")

head(prototype)

# 5. Perform linear regression using the lm() function. in the lm() function, pass in all six variables (i.e. columns), 
# and add the dataframe you created in step 4 as the data parameter.

lm(formula = mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = prototype) 

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model. 

summary(lm(formula = mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = prototype))




#Deliverable 2

#2 In your MechacarChallenge.RScript, import and read in the suspension_coil.csv file as a table.

Coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

head(Coil_table)

#3 Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, 
# variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- Coil_table %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

head(total_summary)

#4 Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group 
# each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

lot_summary <- Coil_table %>% group_by (Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

head(lot_summary)

#Deliverable 3

#1. write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test((Coil_table$PSI),mu=1500)


#2. write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

t.test((subset(Coil_table, Manufacturing_Lot == "Lot1")$PSI),mu=(1500))
t.test((subset(Coil_table, Manufacturing_Lot == "Lot2")$PSI),mu=(1500))
t.test((subset(Coil_table, Manufacturing_Lot == "Lot3")$PSI),mu=(1500))