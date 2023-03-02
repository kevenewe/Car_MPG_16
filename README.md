# MechaCar_Statistical_Analysis

# Background 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked the data analytics team to review the production data for insights that may help the manufacturing team.

# Linear Regression analysis results are as follows

Call:
summary(lm(formula = mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = prototype))

Residuals: 

![image](https://user-images.githubusercontent.com/117044267/222482920-66d05658-a1bb-4e45-8ea1-58b4021d0a8d.png)

Coefficients:

![image](https://user-images.githubusercontent.com/117044267/222483378-354ac44a-5e1d-4584-9853-a504021d4c8b.png)


Residual standard error: 8.774 on 44 degrees of freedom Multiple R-squared:  0.7149,    Adjusted R-squared:  0.6825 F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11
