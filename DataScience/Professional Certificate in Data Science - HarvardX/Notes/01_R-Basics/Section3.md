# R Basics Section 3
#### [Go to Course](https://learning.edx.org/course/course-v1:HarvardX+PH125.1x+1T2021/home)

**SECTION 3**  

R
* which() # returns the indices of a logical vector that are true
* match() # returns the index needed to access entries in a vector
* %in% #checks which elements in one vector are in a second vector
* sum() #on a logical vector returns number of true entries
* mean()

dplyr package
* mutate() #adds or changes columns to a data table
 *Can use data from data frame argument
* filter() #subsets rows in a data frame
* select() #subsets columns in a data frame
* %>% #pipe operator
* data.frame() #creates a data frame with arg vectors
 * stringsAsFactors = FALSE #strings stored as chars instead of factors
* plot() #scatter plot from two vectors
* hist() #creates a histogram from a vector
* boxplot() #creates a boxplot from a vector
* mean() #on logical vector returns proportion of true observations

Key Terms
* Indexing