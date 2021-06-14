# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
Conducting a Linear Regression test to the MechaCar Miles-Per-Gallon(mpg), we find the resulting statistics:

From this, we find that there are multiple pieces of information, based on pre-set guidlines:
* Vehicle Length and Ground Clearance provide MechaCar's prototype very little variance to MPG, as their probability for variance is essentially 0
* Our slope for the linear regression model cannot be considered 0, as our p-value is smaller than 0.05%, and therefore allows us to reject our null hypothesis
* With an R-Squared value of 0.71, the model strongly supports accurate predictions of mpg within MechaCar prototypes

## Summary Statistics on Suspension Coils
Conducting a Statistics Summary on the MechaCar prototypes suspension coils, we find the resulting statistics:

From this, we discover something interesting. Overall, on average, the specificed PSI varience maintains below the maximum 100 PSI. However, it is rather high. Investigating deeper, we find the following statistics for each individual lot:

Lot 3 is very much over allowed variance maximum, at 170 PSI, while Lot 1 and Lot 2 are under regulations.

## T-Tests on Suspension Coils
Conducting a T-Test on the Suspension Coils, we find the following statistics:

Overall, the combined three lots are 1.22 PSI under the population mean. Investigating each lot individually, we find these statistics:

Lot 1 and 2 are much closer to the average 1,500 PSI, with very small p-values resulting in low varience. However, Lot 3 boasts a high p-value, over 0.05, as well as a much lower average PSI compared to the overall average as well as lot average, signifying that we cannot reject our null hypothesis. Something is occuring within the Lot 3 development/production, and someone should look into it to make sure those at Lot 3 are following procedure.


## Study Design: MechaCar vs Competition
Fuel efficiency, both city and highway efficiency, is a highly valued factor consumers search for in new vehicles, and is something we should test to confirm that the MechaCars prototypes are competitive.

Using hypothesis testing, we set up our guidelines for our expected results:
* Null Hypothesis: MechaCars Prototypes are similar to other competitive companies
* Alternative Hypothesis: MechaCars Prototypes are not similar to other competitive companies (and hopefully more efficient)

To conduct this comparison, we would need to conduct ANOVA testing, one for each road-type, pitting both the city fuel efficiency of the prototypes against the competitors, as well as the highway fuel efficiency.
ANOVA is excellent for comparing a dependant variable (fuel efficiency) across single independant variables (vehicle types) with multiple groups (competitors).
As for the data itself, we would need to collect data on the fuel efficiency of the MechaCars Prototypes for both city and highway fuel efficiency.
