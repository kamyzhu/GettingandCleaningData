Getting and Cleaning Data Course Project
====================

A script 'run_analysis.R' is written to collect, work with and clean the data sets.

Firstly, download the file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it.

Read data from files to the corresponding data sets:

 	features.txt
 	activity_labels.txt
 	train/X_train.txt
 	train/y_train.txt
 	subject_train.txt
 	train/X_test.txt
 	train/y_test.txt
 	subject_test.txt

Cbind X_train, y_train and subject_train to create the train data set. Do the same to X_test, y_test and subject_test to create the test data set. Then rbind these two data sets.

Select activity, subject, columns whose name contains '.mean..' and columns whose name contains '.std..'.

Change activity into factor variable, as a result it is named descriptively.

Label the data set with descriptive variable names by substitution:

 	'^t' -> 'time'
 	'^f' -> 'frequency'
 	'Acc' -> 'Accelerometer'
 	'Gyro' -> 'Gyroscope'
 	'Mag' -> 'Magnitude'

Finally, group the data set by activity and subject, calculate the mean of every variable for each group, and write the resulting table to 'output.txt'.