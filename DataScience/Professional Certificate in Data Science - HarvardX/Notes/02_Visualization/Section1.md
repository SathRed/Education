# Visualization Section 1
#### [Go to Course](https://learning.edx.org/course/course-v1:HarvardX+PH125.2x+1T2021/home)
**SECTION 1**  
* Data visualization is a powerful way to communicate results of analysis
* Mistakes, biases, and systematic errors can result in flawed data

R
* sd() #standard deviation
* mean()
* z <- scale(x) #obtain standard units of data
* mean(abs(z) < 2) #proportion of vals within 2 stdevs
* F(a) = pnorm(a, avg, stdev) #for normal distributions
* quantile(data,q)
* qnorm(p, avg, stdev)
* summary()
* pnorm and qnorm are inverse functions

Key Terms
* Exploratory Data Analysis
* Data Visualization
* Distribution
* Categorical Variable
 * Ordinal
 * Non Ordinal
* Numerical Variable
 * Discrete 
 * Continuous
* Cumlative distribution function (CDF)
 * F(a) = Pr(x<=a) 
 * Proportion of data below a for all values of a
* Empirical CDF (ECDF)
 * CDF derived from data
* Histogram
* Smooth density plot
* Normal distribution (formula)
 * 68 - 95 - 99.7
 * Standard Unit: how many standard deviations away a value is from the mean
 * Standard Unit: z = (x-avg)/stdev
  * z = 0 mean
  * |z| > 2 extremes 
* Quantile plots
* Define P for intervals instead of values for continuous data
* Discretization
* Quantile quantile plots (qq plots) can check if a normal distribution is applicable to a dataset
* can use 5 number summary for non normal data (ignore outliers when computing range)
* Boxplot

For datasets that are not normal, the CDF can be calculated manually by defining a function to compute the probability above. This function can then be applied to a range of values across the range of the dataset to calculate a CDF. Given a dataset my_data, the CDF can be calculated and plotted like this:
a <- seq(min(my_data), max(my_data), length = 100)    # define range of values spanning the dataset
cdf_function <- function(x) {    # computes prob. for a single value
    mean(my_data <= x)
}
cdf_values <- sapply(a, cdf_function)
plot(a, cdf_values)