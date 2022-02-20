# MechaCar_Statistical_Analysis

## Overview and Objectives

The production company MechaCar is facing production issuses in their new protype which is blocking the manufacturing team’s progress. In an effort to determine the cause of the problem, several statistical analysis is excecuted on specific production elements. The statistical analysis conducted include:

* multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes,
* summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots, and
* t-tests to determine if the manufacturing lots are statistically different from the mean population.

In addition, another objective of the report was to design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Language and Tools
* R script and RStudio

## Results & Summary

The following subsections discusses the main findings from the conducted statistical analysis.

#### Linear Regression to Predict MPG

The general form of the multiple linear regression model is:

y = β~0~ + X~1~β~1~ + X~2~β~2~ +...+X~k~β~k~

where, y denotes the dependent variable, in our study case mpg, that is linearly related to the k~th~ independent (or explanatory) variables X~1~, X~2~,...,X~k~ through the parameters β~1~, β~2~,...,β~k~.

The parameters β~k~ are the regression coefficient output from the statistical analysis as shown in Figure 1 below, associated with the independent variables vehicle weight, vehicle_length, spoiler_angle, ground_clearance and AWD. In general the model is predicting how the mpg (miles per gallon) will change with respect to these independent varables. 

Based on the regression coefficients shown in Figure 1, the vehicle length and vehicle ground clearance are likely to provide non-random amounts of variance to the model. That is, the vehicle length and vehicle ground clearance have a greater impact on mpg of the MechaCar prototype. This is supported by the very low p-values (in the pr column) output shown in Figure 2 at the 0.1% statisctical level. In contrast, the vehicle weight, spoiler angle, and AWD have higher p-Values (p-value > 0.05) which indicate they are more likely to contribute a random amount of variance with the dataset.

Figure 1.

Figure 2.

The slope of the linear model cannot be zero and is estimated to be -104 as shown in Figure 1. The evidence that further supports a non-zero slope is the very small p-value when compared at the 0.1% significane level. 

As shown in Figure 2, the model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. This result suggest that the regression model does predict mpg of MechaCar prototypes effectively. 

### Summary Statistics on Suspension Coils

The weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI. Thus, statistical analysis in the form of selective descriptive statistics was conducted on the dataset to determine if this condition was meet. The results of the analysis for the entire dataset and per individual lots are displayed in Figures 3 and 4 below, respectively.
 
Figure 3.

Figure 4. 


As can be observed from Figure 3, considering all manufacturing lots, with a variance of 62.29 this criteria is meet. However, per individual lot (see Figure 4), while Lot 1 and 2 are within the design specifications, Lot 3 exceeds the allowed variation threshold by 70%. 

### T-Tests on Suspension Coils

For this study it was important to determine if the mean PSI of the manufacturing lots are statistically different from the population mean of 1500 PSI. The following points highlight the most important results.

* Across all manufacturing lots, the recorded p-value is 0.06 is greater than the tested significance level of 0.05, therefore then we fail to reject the null hypothesis.  This implies that there is no significant difference between the sample mean and the population mean PSI of 1500. See Figure 5 below.

Figure 5

* For Lots 1 and 2 the calculated p-statistics is 1 and 0.61, respectively. Since this is greater than the significance level of 0.05, therefore then we fail to reject the null hypothesis.  This implies that there is no significant difference between the sample mean and the population mean PSI of 1500. See Figures 6 and 7 below.

Figure 6

Figure 7

* For Lot 3 the p-value (=0.04) is less than significance level of 0.05, therfore we can reject the null hypothesis. This implies that the alternative hypothesis is correct and that the data is significant. The statical result of the t-test is shown in Figure 8 below.

## Study Design: MechaCar vs Competition

Coil springs are an integral part of modern automotive suspension systems. Shock absorbers and springs work in unison to manage the way a car behaves on the road and rider experience. When combined with shock absorbers, coil springs serve to minimize the vibrations coming from the road surface. Springs serve to soak up all of the energy coming from the road imperfections, acceleration, braking, etc and thus play an integral role in riders comfort. 

MechaCar is trying to determine which type of spring coil system is best suited to their protype vehicle. While the company's goal is to improve rider comfort they also want to be cost effective and promote afforability. Thus they decide to conduct a study to aid in their decision to determine which coil spring to use in the design. 

In the study they will compare the type of coil springs utilized by most car manufacturers when releasing the vehicle off the market. The null hypothesis of the study is that most manufacturers select a coil spring system that is cost effective.

Some of the variables that will be collected and used in the study include: unit cost for the different coil springs, count of the different types of coil spring system used by different car manufacturers, weight and height of the different car types utilizing the specific coil spring system, and durability of the coils. Though not directly, over time of wear and tear, a vehicle's suspension system may affect its handling and performance. 

The following statistical analysis will be conducted in the study:

1. Mutiple linear regression to determine the factors influencing the selection of a coil spring system and their significane at the 5% level.

2. Summary statistics such as mean, variance and standard deviation on the total types of coil spring system used. In addition, summary statistic of coil spring system used by the different car manufacturers and for the different vehicle types (such as sedan, racing, SUV, etc.). Knowing the mean coil spring will help to identify the most utilize coil spring, more importanlty though, knowing the mean per vehicle type is very important to know if car type is influential in selecting a specific coil spring. After all we cannot compare apples to oranges.

2. T-test and ANOVA statistic to determine how significant are the coil springs among the different car types.



 