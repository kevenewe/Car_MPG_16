# MechaCar_Statistical_Analysis

# Background 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked the data analytics team to review the production data for insights that may help the manufacturing team.

# Linear Regression analysis results are as follows

Call:
summary(lm(formula = mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = prototype))

Residuals: 

![image](https://user-images.githubusercontent.com/117044267/222482920-66d05658-a1bb-4e45-8ea1-58b4021d0a8d.png)

Coefficients:

![image](https://user-images.githubusercontent.com/117044267/222483854-ed2a07de-1fbc-4401-95eb-640958369b7f.png)



Residual standard error: 8.774 on 44 degrees of freedom Multiple R-squared:  0.7149,    Adjusted R-squared:  0.6825 F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

# Suspension Coils

Summary statistics of the mean, median, variance, and standard deviation of the PSI were pulled and are shown below for all of the suspension coils and for the differnt manufacturing lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Based on the variance of the suspension coils in the total summary, the suspension coils overall meet the MechaCar design specifications. However, the lot summary shows that while manufacturing Lots 1 and 2 meet the design specifications and have variances under 100 PSI, Lot 3 does not meet the design specifications as its variance is much over the 100 PSI limit.

## Total Summary

Call:
total_summary <- Coil_table %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

![image](https://user-images.githubusercontent.com/117044267/222487534-9a76f4ad-6fd6-4a73-b086-e9dde5ccd0dd.png)

## Lot Summary

Call:
lot_summary <- Coil_table %>% group_by (Manufacturing_Lot) %>% summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

![image](https://user-images.githubusercontent.com/117044267/222489088-98917fba-439d-4bf1-b7d4-ba363a796f61.png)

# T-Tests on Suspension Coils

Call:
t.test((Coil_table$PSI),mu=1500)

        One Sample t-test

data:  (Coil_table$PSI)
t = -1.8931, df = 149, p-value = 0.06028
  alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1497.507 1500.053
sample estimates: 
  mean of x 
    1498.78 

The results of the t-test to show if the PSI mean is statistically different from the population mean of 1500 pounds per suare inch. At a 95% confidence level, the two means are not statistically different. The p-value of 0.06028 is higher the the critical value of 0.05. The null hypothesis is accepted. 

# Lot 1 Suspension Coil T-Test:

Call:
t.test((subset(Coil_table, Manufacturing_Lot == "Lot1")$PSI),mu=(1500))

	One Sample t-test

data:  (subset(Coil_table, Manufacturing_Lot == "Lot1")$PSI)
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 

The results of the t-test to test if the PSI mean for Lot1 is statistically different from the population mean of 1,500 pounds per square inch. At a 95% confidence level, the two means are not statistically different. The p-value of 1 shows that the mean for Lot1 is exactly the same same as the population mean of 1500 PSI.

# Lot 2 Suspension Coil t-test:

Call: 
t.test((subset(Coil_table, Manufacturing_Lot == "Lot2")$PSI),mu=(1500))

	One Sample t-test

data:  (subset(Coil_table, Manufacturing_Lot == "Lot2")$PSI)
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval: 1499.423 1500.977
sample estimates:
mean of x 
1500.2 

The results of the t-test to test if the PSI mean for Lot2 is statistically different from the population mean of 1,500 pounds per square inch. At a 95% confidence level, the two means are not statistically different. The p-value of 0.6072 is higher than the critical value of 0.05, the null hypothese is acceped as there is not a difference between the means of the PCI for the population. 

# Lot 3 Suspension Coil t-test:

Call:
t.test((subset(Coil_table, Manufacturing_Lot == "Lot3")$PSI),mu=(1500))

	One Sample t-test

data:  (subset(Coil_table, Manufacturing_Lot == "Lot3")$PSI)
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 
 
The results of the t-test to test if the PSI mean for Lot3 is statistically different from the population mean of 1,500 pounds per square inch show that the two means are statistically different. Because the p-value of 0.04168 is lower than the critical value of 0.05, the null hypothesis should be rejected because there is a difference between the means of the PSI for the population and Lot3 and the true mean is not equal to 1500. 


## Study comparing the MechaCar Vs Competition

In looking at how the MechaCar performs againts the competition an independant t-test could be used to determine the estimated total cost including initial price, repairs and maintenance costs. An additional study on highway and city fuel effciency incomparison to the competitions will help with the total costs to drive. 

The metric that is going to be tested is the overall cost of ownership.  This will include the initial price, estimated costs of repairs and maintenance, as well as the cost to drive including fuel efficiencty. 

The null Hypothesis is that the MechaCar will have lower overall cost of ownership it is 10% more efficient than the competetors. 

An independent t-test could be used because it will compare the means of the total costs of the two different groups, MechaCar and the competition, to determine whether the associated population means are significantly different.

The data needed include the average highway and city miles per gallon, initial cost, estimated repair costs, estimated maintenance costs.


