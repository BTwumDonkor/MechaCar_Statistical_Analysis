### MechaCar_Statistical_Analysis

## Overview
The purpose of this project was to undertake some statistical analysis using the R programming language to assist AutosRU, a company with "MechaCar" prototype with some statistical exploratory analysis such as linear regressions and t-test analysis. The datasets used were MechaCar_mpg.csv and Suspension_Coil.csv which were loaded into the Rstudio programming tool. The `dplyr` library package was installed as well.

# Linear Regression to Predict MPG

The MechaCar_mpg.csv dataset was read and a snippet showing the columns follows below:
  
  ![](images/Mecha_head.png)
  
The summary results of the multiple linear regression to predict MPG is presented below with some questions answered.

  ![](images/linear_reg.png)
  
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The variable coefficients which provided a non-random amount of variance to the mpg values are the statistically significant variables which had P-values less the significance level of 5 percent. These variables were `vehicle_lenth` and `ground_clearance`. The remaing variables were not statistically significant at 5 percent.
- Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not considered to be zero as the P-value (5.35e-11 was less than the significance level at 5 percent thus there was enough evidence to reject the null hypothesis which stated "the slope was equal to zero".

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model does predict mpg of MechaCar prototypes effectively. This is measured by the R-squared which was approximately 71 percent.  This meant that 71 percent of the variability in MPG could be explained by the variability in the independent variables of the linear regression thus the model having a good fit and doing a good job in it's predictive ability.

## Summary Statistics on Suspension Coils

  
