Getting and Cleaning Data
Course Project
==================================================================
Kamy Zhu
==================================================================

A script 'run_analysis.R' is written to collect, work with and clean the data sets.

Download the file from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and unzip it.

Read data from files to the corresponding data sets:

file name               data name       column names
'features.txt'          features        default
'activity_labels.txt'   a_l             default
'train/X_train.txt'     X_train         the list from features
'train/y_train.txt'     y_train         'activity'
'subject_train.txt'     subject_train   'subject'
'train/X_test.txt'      X_test          the list from features
'train/y_test.txt'      y_test          'activity'
'subject_test.txt'      subject_test    'subject'

Cbind X_train, y_train and subject_train to create the train data set. Do the same to X_test, y_test and subject_test to create the test data set. Then rbind these two data sets.

Select activity, subject, columns whose name contains '.mean..' and columns whose name contains '.std..'.

Change activity into factor variable using the links between levels and lables from data set a_l.

Label the data set with descriptive variable names by substitution:

pattern   replacement
'^t'      'time'
'^f'      'frequency'
'Acc'     'Accelerometer'
'Gyro'    'Gyroscope'
'Mag'     'Magnitude'

Finally, group the data set by activity and subject, calculate the mean of every variable for each group, and write the resulting table to 'output.txt'.