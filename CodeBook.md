Data Set Information
====================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

Feature Selection
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. The acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

 	timeBodyAccelerometer-XYZ
 	timeGravityAccelerometer-XYZ
 	timeBodyAccelerometerJerk-XYZ
 	timeBodyGyroscope-XYZ
 	timeBodyGyroscopeJerk-XYZ
 	timeBodyAccelerometerMagnitude
 	timeGravityAccelerometerMagnitude
 	timeBodyAccelerometerJerkMagnitude
 	timeBodyGyroscopeMagnitude
 	timeBodyGyroscopeJerkMagnitude
 	frequencyBodyAccelerometer-XYZ
 	frequencyBodyAccelerometerJerk-XYZ
 	frequencyBodyGyroscope-XYZ
 	frequencyBodyAccelerometerMagnitude
 	frequencyBodyAccelerometerJerkMagnitude
 	frequencyBodyGyroscopeMagnitude
 	frequencyBodyGyroscopeJerkMagnitude

There are 33 signals in total.

The set of variables that were estimated from these signals are: 
 	mean: Mean value
 	std: Standard deviation

There are 66 variables in total.

Average Calculation 
===================
The average of each variable for each activity and each subject was calculated and then stored in the dataset 'output.txt'.

Attribute Information
=====================
For each record in the dataset it is provided:
- activity: its activity label
- subject: an identifier of the subject who carried out the experiment
- attributes representing the average of a specific meansurement of a specific signal: 
  '.mean' is used to denote meansurement on mean
  '.std' is usd to denote measurement on standard deviation
  '.[XYZ]' is used to denote signal in the X/Y/Z direction