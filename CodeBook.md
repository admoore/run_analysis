##*Code Book for run_analysis.r*

## **Analysis Overview**

#####The run_analysis.r program performs the following actions:

#####	- Reads in the test and train data from the data files "x_test.TXT" and "x_train.TXT"
#####	- Applies collumn headers to the test and train data using the labels in the "features.TXT" file.
#####	- Reads in the activity decription data (y_test and y_train) creates collumn headers for both data sets using the "activity_labels.TXT" data set
#####	- Reads in the subject data (subject_test and subject_train) and creates a collumn header of "subject" for these data sets
##### 	- The program merges the test and train data together and removes all observations that are not a mean or standard deviation calculation and ouputs the data set "tidy_data.txt" in the users work directory.
#####	- The program outputs another data set called "tidy_data_avg.txt" that that contains the average of every numerical column in the "tidy_data.txt" data set.



## **Output Data**

#####The program outputs two data sets "tidy_data.txt" and "tidy_data_avg.txt". Both data sets contain the exact same variables, however, the "tidy_data_avg.txt" numeric variables are the average of the numeric variables in the data set
#####"tidy_data.txt". Both data sets are output to the users work directory.



## **Variable definitions**.

###Character variables

#####Both the "tidy_data.txt" and "tidy_data_average.txt" data sets contain the following two character variables:

#####	1. Subject 

#####	2. Activity

###Numeric variables

#####The "tidy_data.txt" data set contains the mean and std deviations of each of the following variables.

#####1. tBodyAcc-XYZ
#####2. tGravityAcc-XYZ
#####3. tBodyAccJerk-XYZ
#####4. tBodyGyro-XYZ
#####5. tBodyGyroJerk-XYZ
#####6. tBodyAccMag
#####7. tGravityAccMag
#####8. tBodyAccJerkMag
#####9. tBodyGyroMag
#####10. tBodyGyroJerkMag
#####11. fBodyAcc-XYZ
#####12. fBodyAccJerk-XYZ
#####13. fBodyGyro-XYZ


####The "tidy_data_average.txt" data set contains the average of all numeric variables in the "tidy_data.txt" data set.



## **Data transformations**

#####	-The "tidy_data_average.txt" data set is the average of each numeric column in the "tidy_data.txt" data set.
#####	-Data sets were sorted and combined as described in the Analysis Overview section. The run_analysis.r program conducts
#####  no other data cleansing.





