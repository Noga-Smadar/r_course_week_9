 # R Course Assignment #9
This is a repository I created for the 9th assignment in the 2024/25 R course. In this assignment, we were asked to create an analysis script and a functions script. 

## Analysis
You can see this part in *analysis.R*.
It has two parts:
> ### Dataframe generation
I generated data as per the assignment and put it into a dataframe named "df".
The df has the following columns:
- subID: A unique identifying number from 1 to N for each subject.
- gender
- rt: Average response time
- depression
- sleep_hours
> ### Descriptives
I created descriptive statistics for the data by applying a function I created in *functions.R*.

## Functions
You can see this part in *functions.R*.
<br/><br/>
In this script I created a function which, as per the assignment, receives a dataframe argument, a subject_start argument and a subject_end argument.
It then takes the data within the subject_start/end values, and returns a results dataframe, specifying the following:
- For a numeric variable: mean, min and max.
- For a factor: a count of how many observations are in each group.
<br/><br/>

If there are less than 10 rows in the dataframe the functions instead returns "data is too short". 
