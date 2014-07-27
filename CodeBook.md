
# CODEBOOK

###CodeBook of data collected from the accelerometers of the Samsung Galaxy S smartphone
=====================================================================================

Section headings detailed later in this codebook:
####1. Raw Data Sets - List of all variables, summaries calculated, and units.
####2. Tidy Data Set 1 - TidyDetail.txt - List of all variables, summaries calculated, and units.
####3. Tidy Data Set 2 -  TidySummary.txt - List of all variables, summaries calculated, and units.
####4. Study Design.

=====================================================================================

####1. Raw Data Sets - List of all variables and units.

	The raw datasets [1] comes from the following publication:
	[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

	Units: 
		The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
		The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
	
	The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
	These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
		
		Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
		
		Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
		(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

		Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
		tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
		Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (
		tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

		Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
		fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
		(Note the 'f' to indicate frequency domain signals). 

		These signals were used to estimate variables of the feature vector for each pattern:  
		'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

		tBodyAcc-XYZ
		tGravityAcc-XYZ
		tBodyAccJerk-XYZ
		tBodyGyro-XYZ
		tBodyGyroJerk-XYZ
		tBodyAccMag
		tGravityAccMag
		tBodyAccJerkMag
		tBodyGyroMag
		tBodyGyroJerkMag
		fBodyAcc-XYZ
		fBodyAccJerk-XYZ
		fBodyGyro-XYZ
		fBodyAccMag
		fBodyAccJerkMag
		fBodyGyroMag
		fBodyGyroJerkMag

		The set of variables that were estimated from these signals are: 

		mean(): Mean value
		std(): Standard deviation
		mad(): Median absolute deviation 
		max(): Largest value in array
		min(): Smallest value in array
		sma(): Signal magnitude area
		energy(): Energy measure. Sum of the squares divided by the number of values. 
		iqr(): Interquartile range 
		entropy(): Signal entropy
		arCoeff(): Autorregresion coefficients with Burg order equal to 4
		correlation(): correlation coefficient between two signals
		maxInds(): index of the frequency component with largest magnitude
		meanFreq(): Weighted average of the frequency components to obtain a mean frequency
		skewness(): skewness of the frequency domain signal 
		kurtosis(): kurtosis of the frequency domain signal 
		bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
		angle(): Angle between to vectors.

		Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

		gravityMean
		tBodyAccMean
		tBodyAccJerkMean
		tBodyGyroMean
		tBodyGyroJerkMean
=====================================================================================

####2. Tidy Data Set 1 - TidyDetail.txt - List of all variables and units.
	######Tidy Data:
		'''
1. each variable is in one column.
2. Each observation is in a different row.
3. There is one table for each kind of variable (one for Detail, one for Summary).
4. Two tables can be linked by using the subject and activity but source column was lost when we summarized by subject and activity.
5. There is a row at the top of the file with variable names.
6. Variable names are human readable (including a prefix of "Mean." to indicated that this table's variable represent a mean of grouped observations).
7. There is one file per table.
		'''
	######Units: 
		The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
		The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
	######TidyDetail.txt - Tab delimited file with 10299 rows of data from 30 subjects
		Only columns having to do with mean or std are included.  
		(The number of feature vector with time and frequency domain variables were reduced from 561 in the original test and train datasets to 66 for the tidy data sets)
		Data includes every row of data collected from the accelerometers having merged both test and train data sets.
	######Variable List:
		Source: indicating whether individual was part of "Train" or "Test" study group.
		Subject: a number used to identify the subject (person) (range: 1 to 30) for the 30 study participants.
		Activity: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
		tBodyAcc.mean...X, tBodyAcc.mean...Y, tBodyAcc.mean...Z
		tBodyAcc.std...X, tBodyAcc.std...Y, tBodyAcc.std...Z
		tGravityAcc.mean...X, tGravityAcc.mean...Y, tGravityAcc.mean...Z
		tGravityAcc.std...X, tGravityAcc.std...Y, tGravityAcc.std...Z
		tBodyAccJerk.mean...X, tBodyAccJerk.mean...Y, tBodyAccJerk.mean...Z
		tBodyAccJerk.std...X, tBodyAccJerk.std...Y, tBodyAccJerk.std...Z
		tBodyGyro.mean...X, tBodyGyro.mean...Y, tBodyGyro.mean...Z
		tBodyGyro.std...X, tBodyGyro.std...Y, tBodyGyro.std...Z
		tBodyGyroJerk.mean...X, tBodyGyroJerk.mean...Y, tBodyGyroJerk.mean...Z
		tBodyGyroJerk.std...X, tBodyGyroJerk.std...Y, tBodyGyroJerk.std...Z
		tBodyAccMag.mean.., tBodyAccMag.std.., 
		tGravityAccMag.mean.., tGravityAccMag.std..
		tBodyAccJerkMag.mean.., tBodyAccJerkMag.std..
		tBodyGyroMag.mean.., tBodyGyroMag.std..
		tBodyGyroJerkMag.mean.., tBodyGyroJerkMag.std..
		fBodyAcc.mean...X, fBodyAcc.mean...Y, fBodyAcc.mean...Z
		fBodyAcc.std...X, fBodyAcc.std...Y, fBodyAcc.std...Z
		fBodyAccJerk.mean...X, fBodyAccJerk.mean...Y, fBodyAccJerk.mean...Z
		fBodyAccJerk.std...X, fBodyAccJerk.std...Y, fBodyAccJerk.std...Z
		fBodyGyro.mean...X, fBodyGyro.mean...Y, fBodyGyro.mean...Z
		fBodyGyro.std...X, fBodyGyro.std...Y, fBodyGyro.std...Z
		fBodyAccMag.mean.., fBodyAccMag.std..
		fBodyBodyAccJerkMag.mean.., fBodyBodyAccJerkMag.std..
		fBodyBodyGyroMag.mean.., fBodyBodyGyroMag.std..
		fBodyBodyGyroJerkMag.mean.., fBodyBodyGyroJerkMag.std..
=====================================================================================

####3. Tidy Data Set 2 -  TidySummary.txt - List of all variables, summaries calculated, and units.

	######Tidy Data:
		'''
1. each variable is in one column.
2. Each observation is in a different row.
3. There is one table for each kind of variable (one for Detail, one for Summary).
4. Two tables can be linked by using the subject and activity but source column was lost when we summarized by subject and activity.
5. There is a row at the top of the file with variable names.
6. Variable names are human readable (including a prefix of "Mean." to indicated that this table's variable represent a mean of grouped observations).
7. There is one file per table.
		'''
	######Units: 
		The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
		The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
	######TidySummary.txt - Tab delimited file with 40 rows of data from 30 subjects 
	######Created by summarizing the TidyDetail.txt data by subject and activity 
		specifically calculating the mean of all the field measures grouped by Subject and Activity.
	######For example:
		Subject: 4 Activity: WALKING, mean value of corresponding 66 measure columns.
		Subject: 4 Activity: WALKING_UPSTAIRS, mean value of corresponding 66 measure columns.
		Subject: 10 Activity: WALKING_DOWNSTAIRS, mean value of corresponding 66 measure columns.
		Subject: 10 Activity: WALKING_UPSTAIRS, mean value of corresponding 66 measure columns.
	######Variable List:
		Subject: a number used to identify the subject (person) (range: 1 to 30) for the 30 study participants.
		Activity: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
		Mean.tBodyAcc.mean...X, Mean.tBodyAcc.mean...Y, Mean.tBodyAcc.mean...Z
		Mean.tBodyAcc.std...X, Mean.tBodyAcc.std...Y, Mean.tBodyAcc.std...Z
		Mean.tGravityAcc.mean...X, Mean.tGravityAcc.mean...Y, Mean.tGravityAcc.mean...Z
		Mean.tGravityAcc.std...X, Mean.tGravityAcc.std...Y, Mean.tGravityAcc.std...Z, 
		Mean.tBodyAccJerk.mean...X, Mean.tBodyAccJerk.mean...Y, Mean.tBodyAccJerk.mean...Z, 
		Mean.tBodyAccJerk.std...X, Mean.tBodyAccJerk.std...Y, Mean.tBodyAccJerk.std...Z, 
		Mean.tBodyGyro.mean...X, Mean.tBodyGyro.mean...Y, Mean.tBodyGyro.mean...Z, 
		Mean.tBodyGyro.std...X, Mean.tBodyGyro.std...Y, Mean.tBodyGyro.std...Z, 
		Mean.tBodyGyroJerk.mean...X, Mean.tBodyGyroJerk.mean...Y, Mean.tBodyGyroJerk.mean...Z, 
		Mean.tBodyGyroJerk.std...X, Mean.tBodyGyroJerk.std...Y, Mean.tBodyGyroJerk.std...Z, 
		Mean.tBodyAccMag.mean.., Mean.tBodyAccMag.std..
		Mean.tGravityAccMag.mean.., Mean.tGravityAccMag.std..
		Mean.tBodyAccJerkMag.mean.., Mean.tBodyAccJerkMag.std..
		Mean.tBodyGyroMag.mean.., Mean.tBodyGyroMag.std..
		Mean.tBodyGyroJerkMag.mean.., Mean.tBodyGyroJerkMag.std..
		Mean.fBodyAcc.mean...X, Mean.fBodyAcc.mean...Y, Mean.fBodyAcc.mean...Z, 
		Mean.fBodyAcc.std...X, Mean.fBodyAcc.std...Y, Mean.fBodyAcc.std...Z, 
		Mean.fBodyAccJerk.mean...X, Mean.fBodyAccJerk.mean...Y, Mean.fBodyAccJerk.mean...Z, 
		Mean.fBodyAccJerk.std...X, Mean.fBodyAccJerk.std...Y, Mean.fBodyAccJerk.std...Z, 
		Mean.fBodyGyro.mean...X, Mean.fBodyGyro.mean...Y, Mean.fBodyGyro.mean...Z, 
		Mean.fBodyGyro.std...X, Mean.fBodyGyro.std...Y, Mean.fBodyGyro.std...Z, 
		Mean.fBodyAccMag.mean.., Mean.fBodyAccMag.std..
		Mean.fBodyBodyAccJerkMag.mean.., Mean.fBodyBodyAccJerkMag.std..
		Mean.fBodyBodyGyroMag.mean.., Mean.fBodyBodyGyroMag.std..
		Mean.fBodyBodyGyroJerkMag.mean.., Mean.fBodyBodyGyroJerkMag.std..

	=====================================================================================

####4. Study Design

Data was collected by researchers in Genoa, Italy [1]

	The experiments have been carried out with a group of 30 volunteers 
	within an age bracket of 19-48 years.  
	Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
	wearing a smartphone (Samsung Galaxy S II) on the waist. 

	Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration 
	and 3-axial angular velocity at a constant rate of 50Hz. 

	The obtained dataset has been randomly partitioned into two sets, 
	where 70% of the volunteers was selected for generating the training data and 30% the test data.

	The sensor signals (accelerometer and gyroscope) were pre-processed 
	by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
	The sensor acceleration signal, which has gravitational and body motion components, 
	was separated using a Butterworth low-pass filter into body acceleration and gravity. 
	The gravitational force is assumed to have only low frequency components, 
	therefore a filter with 0.3 Hz cutoff frequency was used. 
	
	From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

######Citation:
#####[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
=====================================================================================

