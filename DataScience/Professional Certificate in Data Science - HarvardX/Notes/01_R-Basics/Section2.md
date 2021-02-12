# R Basics Section 2
#### [Go to Course](https://learning.edx.org/course/course-v1:HarvardX+PH125.1x+1T2021/home)

**SECTION 2**  
R
* c(dt1, dt2, dt3...) #create/concatenate vector (can only contain data of one type)
* names(data_vector) <- #create a named vector 
* seq(start, end, skip) #creates a sequence
* as.character() #coerces values into characters
* as.numeric() #coerces values into numerics
* sort() #sorts vector in increasing order
* order() #returns indices that sort a vector
* max() # gets largest value in a vector
* which.max() #gets index of max()
* min() # gets smallest value in a vector
* which.min() #gets index of min()
* rank() #returns rank of vector vals (smaller vals have smaller rank)
* data.frame() creates a dataframe

Subsetting
*[...] to access elements of a vector (1 based)
 * x:y #access values from indices x to y
 * c(x,y) #access values at indices x and y
 * "name" #access the value with name "name"

Coercion
* When creating a vector, R attempts to coerce values that do not match
* When coercing values into an incompatible data type, they become NA (missing data)

Key Terms
* Coercion
* Vector
* Concatenate
* Sequence
* Subsetting