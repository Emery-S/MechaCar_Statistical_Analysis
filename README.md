# MechaCar_Statistical_Analysis
## Linear Regression to Predict MPG

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The ground_clearance, vehicle_weight, and mpg variables provide a non-random amount of variance while AWD and spoiler_angle produce random amounts of variance.

#### Is the slope of the linear model considered to be zero? Why or why not?

The slope cannot be considered to be at zero due to the P-value = 6.7×10<sup>-11</sup> which is less than the 0.05 significance level.

#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The R-squared is equivalent to 71.2% which means the model will predict the mpg values 71.2% of the time. While this is high and does mean the regression has high efficacy in the prediction of mpg, 38.8% of the time it will not predict the values correctly which is likely due to other factors involving the sample size.

<img width="550" alt="Screen Shot 2023-02-24 at 1 17 25 AM" src="https://user-images.githubusercontent.com/112206035/221106376-b861a46e-2738-458b-9327-23f630d767fd.png">

## Summary Statistics on Suspension Coils

#### total_summary
<img width="574" alt="Screen Shot 2023-02-24 at 2 30 17 AM" src="https://user-images.githubusercontent.com/112206035/221121078-1f241f0a-943f-4878-ba99-497f3ae6d9e3.png">

#### lot_summary
<img width="430" alt="Screen Shot 2023-02-24 at 2 29 57 AM" src="https://user-images.githubusercontent.com/112206035/221121085-95fba827-7e25-4b5a-8f98-1777d5b88d8d.png">

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

### Summary
briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

#### t-Tests comparing PSI across all Manufacturing_Lots
<img width="350" alt="Screen Shot 2023-02-24 at 3 00 06 AM" src="https://user-images.githubusercontent.com/112206035/221125799-a454e16a-9192-4a90-af05-7f8d89434486.png">

#### t-Tests comparing PSI across individual_Lots

##### Lot_1
<img width="350" alt="Screen Shot 2023-02-24 at 3 08 35 AM" src="https://user-images.githubusercontent.com/112206035/221126065-77ce2c61-e971-44dd-bc2c-f4cc01d775f5.png">

##### Lot_2
<img width="350" alt="Screen Shot 2023-02-24 at 3 09 08 AM" src="https://user-images.githubusercontent.com/112206035/221126144-9ce22d35-2577-445e-b39f-83131a6361cc.png">

##### Lot_3
<img width="350" alt="Screen Shot 2023-02-24 at 3 09 27 AM" src="https://user-images.githubusercontent.com/112206035/221126200-2143a734-70bc-43ee-9339-69fc35ce0145.png">


## Study Design: MechaCar vs Competition

### Caution! Slippery when wet!
Weather hazards on the roads pose great risk to drivers, passengers and pedestrians alike. Having a vehical that can handle wet or icy roads is vital, especially for those residing in colder climates and/or particuarly wet areas. 

If MechaCar is to succeed, a test determining brake speed relative to the cars weight should help determine MechaCar's reliability in poor weather conditions.

#### Hypotheses
Null Hypothesis: MechaCar's Break speed is the same as other cars on wet roads.
Alternate Hypothesis: MechaCar's Break speed not the same as other cars on wet roads.

#### Metrics
- Dependent Variable: Break speed in mph
- Independent Variable: Car weight in lbs
- Independent Variable: Car name/type

The statistical test utilized for a comprehensive understanding of the results would be the one-sample t-test. This is optimal because it can directly compare MechaCar's mean break speed to the mean break speed from a sample size of different car weights, addressing the specified hypothesis. 

The two tests that would need to be conducted on MechaCar is as follows:
* Break speed on asphalt concrete (our control group)
* Break speed on wet asphalt concrete

The data collected would include the car name/type, its break speed in mph and a record of the cars weight in lbs. Once the statistical tests are complete, two heat maps should be created, one for break speed on asphalt and one for break speed on wet roads. The heat maps will display the names of the cars compared to their break speeds with a color change based on car weight.


<sub>This statistical analysis can be performed on similar data sets from differing road conditions including flooded, ice covered, sand covered, snow covered, etc. each with an individual heat map.</sub>

