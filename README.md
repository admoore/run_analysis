# run_analysis
#####The run_analysis.r program performs the following actions:

#####- Reads in the test and train data from the data files "x_test.TXT" and "x_train.TXT"

#####- Applies collumn headers to the test and train data using the labels in the "features.TXT" file.

#####- Reads in the activity decription data (y_test and y_train) creates collumn headers for both data sets using the "activity_labels.TXT" data set

#####- Reads in the subject data (subject_test and subject_train) and creates a collumn header of "subject" for these data sets

#####- The program merges the test and train data together and removes all observations that are not a mean or standard deviation calculation and ouputs the data set "tidy_data.txt" in the users work directory.

#####- The program outputs another data set called "tidy_data_avg.txt" that that contains the average of every numerical column in the "tidy_data.txt" data set.
