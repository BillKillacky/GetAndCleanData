CodeBook of data collected from the accelerometers of the Samsung Galaxy S smartphone
=====================================================================================

CODEBOOK

Section headings detailed later in this codebook:
1. Raw Data Sets - List of all variables, summaries calculated, and units.
2. Tidy Data Sets - TidyDetail.txt - List of all variables, summaries calculated, and units.
3. Tidy Data Set -  TidySummary.txt - List of all variables, summaries calculated, and units.
4. Study Design.
5. Detailed log of operations performed on the data to produce the two tidy data sets.
=====================================================================================

1. Raw Data Sets - List of all variables and units.

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

2. Tidy Data Sets - TidyDetail.txt - List of all variables and units.
	Units: 
		The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
		The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
	TidyDetail.txt - Tab delimited file with 10299 rows of data from 30 subjects
	Only columns having to do with mean or std are included.  
		(The number of feature vector with time and frequency domain variables were reduced from 561 in the original test and train datasets to 66 for the tidy data sets)
	Data includes every row of data collected from the accelerometers having merged both test and train data sets.
	Variable List:
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

	3. Tidy Data Set -  TidySummary.txt - List of all variables, summaries calculated, and units.

	Units: 
		The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.
		The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.
	TidySummary.txt - Tab delimited file with 40 rows of data from 30 subjects 
	Created by summarizing the TidyDetail.txt data by subject and activity 
		specifically calculating the mean of all the field measures grouped by Subject and Activity.
	For example:
		Subject: 4 Activity: WALKING, mean value of corresponding 66 measure columns.
		Subject: 4 Activity: WALKING_UPSTAIRS, mean value of corresponding 66 measure columns.
		Subject: 10 Activity: WALKING_DOWNSTAIRS, mean value of corresponding 66 measure columns.
		Subject: 10 Activity: WALKING_UPSTAIRS, mean value of corresponding 66 measure columns.
	Variable List:
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

4. Study Design

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

Citation:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
=====================================================================================

5. Detailed log of operations performed on the data to produce the two tidy data sets.	

#-------------------------
# Read 2 Global Data Files
#-------------------------
Read in activity_labels file and change column names to "actID", and "ActDesc"
Read in features file and change column names to "fvID", and "FvDesc"

#-----------------------------
# Read in Test data (2947 obs)
#-----------------------------
read in test labels file and change column name to "Y"
read in test subject file and change column name to "Subject"
read in test data file for columns V1 to V561

#------------------------------
# Read in Train data (7352 Obs)
#------------------------------
read in test labels file and change column name to "Y"
read in train subject file and change column name to "Subject"
read in train data file for columns V1 to V561

#-----------------------------------------------------------------------
# Uses descriptive activity names to name the activities in the data set
#-----------------------------------------------------------------------

#---------------------------------------
# provide meaning actions for action IDs
#---------------------------------------
merge test labels with activity labels to get 2947 rows with meaningful activity labels in the data by matching up labels Y with activity labels actID. 
merge train labels with activity labels to get 7352 rows with meaningful activity labels in the data by matching up labels Y with activity labels actID. 
Create a "Source" column ("train" or "test") with the correct of number of rows matching the test and train data sets

#---------------------
# put together columns
#---------------------
Create a test data frame with Source column, Subject identifier, Activity, and the 561 data measures for all 2947 rows
Create a train data frame with Source column, Subject identifier, Activity, and the 561 data measures for all 7352 rows

#--------------------------------------------------------------
# Merges the training and the test sets to create one data set.
#--------------------------------------------------------------
bind the train dataframe 7352 rows to the test dataframe 2947 rows to create one dataset of 10299 rows.

#--------------------------------------------------------------------------------------------
# Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
# x <- sqldf("select fvDesc from f where fvDesc like '%-mean()%' or fvDesc like '%-std()%'") 
# to return 66 matching column names from the 561 column names in the original features file.
#--------------------------------------------------------------------------------------------
> fsub <- f[f$fvDesc %in% x$fvDesc,]
fsub$fcolName = paste('V',fsub$fvID, sep="")    # 
		> fsub
#==================================================
# subset of new dataframe for std() and mean() only
#==================================================
		> fsub
			fvID                      fvDesc fcolName
		1      1           tBodyAcc-mean()-X       V1
		2      2           tBodyAcc-mean()-Y       V2
		3      3           tBodyAcc-mean()-Z       V3
		4      4            tBodyAcc-std()-X       V4
		5      5            tBodyAcc-std()-Y       V5
		6      6            tBodyAcc-std()-Z       V6
		41    41        tGravityAcc-mean()-X      V41
		42    42        tGravityAcc-mean()-Y      V42
		43    43        tGravityAcc-mean()-Z      V43
		44    44         tGravityAcc-std()-X      V44
		45    45         tGravityAcc-std()-Y      V45
		46    46         tGravityAcc-std()-Z      V46
		81    81       tBodyAccJerk-mean()-X      V81
		82    82       tBodyAccJerk-mean()-Y      V82
		83    83       tBodyAccJerk-mean()-Z      V83
		84    84        tBodyAccJerk-std()-X      V84
		85    85        tBodyAccJerk-std()-Y      V85
		86    86        tBodyAccJerk-std()-Z      V86
		121  121          tBodyGyro-mean()-X     V121
		122  122          tBodyGyro-mean()-Y     V122
		123  123          tBodyGyro-mean()-Z     V123
		124  124           tBodyGyro-std()-X     V124
		125  125           tBodyGyro-std()-Y     V125
		126  126           tBodyGyro-std()-Z     V126
		161  161      tBodyGyroJerk-mean()-X     V161
		162  162      tBodyGyroJerk-mean()-Y     V162
		163  163      tBodyGyroJerk-mean()-Z     V163
		164  164       tBodyGyroJerk-std()-X     V164
		165  165       tBodyGyroJerk-std()-Y     V165
		166  166       tBodyGyroJerk-std()-Z     V166
		201  201          tBodyAccMag-mean()     V201
		202  202           tBodyAccMag-std()     V202
		214  214       tGravityAccMag-mean()     V214
		215  215        tGravityAccMag-std()     V215
		227  227      tBodyAccJerkMag-mean()     V227
		228  228       tBodyAccJerkMag-std()     V228
		240  240         tBodyGyroMag-mean()     V240
		241  241          tBodyGyroMag-std()     V241
		253  253     tBodyGyroJerkMag-mean()     V253
		254  254      tBodyGyroJerkMag-std()     V254
		266  266           fBodyAcc-mean()-X     V266
		267  267           fBodyAcc-mean()-Y     V267
		268  268           fBodyAcc-mean()-Z     V268
		269  269            fBodyAcc-std()-X     V269
		270  270            fBodyAcc-std()-Y     V270
		271  271            fBodyAcc-std()-Z     V271
		345  345       fBodyAccJerk-mean()-X     V345
		346  346       fBodyAccJerk-mean()-Y     V346
		347  347       fBodyAccJerk-mean()-Z     V347
		348  348        fBodyAccJerk-std()-X     V348
		349  349        fBodyAccJerk-std()-Y     V349
		350  350        fBodyAccJerk-std()-Z     V350
		424  424          fBodyGyro-mean()-X     V424
		425  425          fBodyGyro-mean()-Y     V425
		426  426          fBodyGyro-mean()-Z     V426
		427  427           fBodyGyro-std()-X     V427
		428  428           fBodyGyro-std()-Y     V428
		429  429           fBodyGyro-std()-Z     V429
		503  503          fBodyAccMag-mean()     V503
		504  504           fBodyAccMag-std()     V504
		516  516  fBodyBodyAccJerkMag-mean()     V516
		517  517   fBodyBodyAccJerkMag-std()     V517
		529  529     fBodyBodyGyroMag-mean()     V529
		530  530      fBodyBodyGyroMag-std()     V530
		542  542 fBodyBodyGyroJerkMag-mean()     V542
		543  543  fBodyBodyGyroJerkMag-std()     V543

Create a new data frame that consists of 10299 rows with the Source, Subject, Activity, and the above 66 data measures.
replace 66 column names with the correct features column names
		
		 [1] "Source"                      "Subject"                     "Activity"                   
		 [4] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"          
		 [7] "tBodyAcc.std...X"            "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
		[10] "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"       
		[13] "tGravityAcc.std...X"         "tGravityAcc.std...Y"         "tGravityAcc.std...Z"        
		[16] "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"      
		[19] "tBodyAccJerk.std...X"        "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
		[22] "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"         
		[25] "tBodyGyro.std...X"           "tBodyGyro.std...Y"           "tBodyGyro.std...Z"          
		[28] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"     
		[31] "tBodyGyroJerk.std...X"       "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
		[34] "tBodyAccMag.mean.."          "tBodyAccMag.std.."           "tGravityAccMag.mean.."      
		[37] "tGravityAccMag.std.."        "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."      
		[40] "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."          "tBodyGyroJerkMag.mean.."    
		[43] "tBodyGyroJerkMag.std.."      "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
		[46] "fBodyAcc.mean...Z"           "fBodyAcc.std...X"            "fBodyAcc.std...Y"           
		[49] "fBodyAcc.std...Z"            "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
		[52] "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"       
		[55] "fBodyAccJerk.std...Z"        "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
		[58] "fBodyGyro.mean...Z"          "fBodyGyro.std...X"           "fBodyGyro.std...Y"          
		[61] "fBodyGyro.std...Z"           "fBodyAccMag.mean.."          "fBodyAccMag.std.."          
		[64] "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."   "fBodyBodyGyroMag.mean.."    
		[67] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.." 

Write this dataframe (10299 rows, 69 variables) to file called "TidyDetail.txt" using tab separated variables format

#-----------------------------------------------------------------------
# Creates a second, independent tidy data set 
# with the mean of each variable for each activity and each subject. 
# tidyDF <- ddply(tidyDFdetail, .(Subject, Activity), numcolwise(mean)) 
#-----------------------------------------------------------------------

#============================================================
# prepend field names after Subject and Activity with "Mean."
#============================================================
for (i in 3:68) {
  colnames(tidyDF)[i] = paste("Mean.", colnames(tidyDF)[i], sep="")
}

#
# Write this dataframe (40 rows, 68 columns) to file called TidySummary.txt using tab separated variables format
#
	> names(tidyDF)
		 [1] "Subject"                          "Activity"                        
		 [3] "Mean.tBodyAcc.mean...X"           "Mean.tBodyAcc.mean...Y"          
		 [5] "Mean.tBodyAcc.mean...Z"           "Mean.tBodyAcc.std...X"           
		 [7] "Mean.tBodyAcc.std...Y"            "Mean.tBodyAcc.std...Z"           
		 [9] "Mean.tGravityAcc.mean...X"        "Mean.tGravityAcc.mean...Y"       
		[11] "Mean.tGravityAcc.mean...Z"        "Mean.tGravityAcc.std...X"        
		[13] "Mean.tGravityAcc.std...Y"         "Mean.tGravityAcc.std...Z"        
		[15] "Mean.tBodyAccJerk.mean...X"       "Mean.tBodyAccJerk.mean...Y"      
		[17] "Mean.tBodyAccJerk.mean...Z"       "Mean.tBodyAccJerk.std...X"       
		[19] "Mean.tBodyAccJerk.std...Y"        "Mean.tBodyAccJerk.std...Z"       
		[21] "Mean.tBodyGyro.mean...X"          "Mean.tBodyGyro.mean...Y"         
		[23] "Mean.tBodyGyro.mean...Z"          "Mean.tBodyGyro.std...X"          
		[25] "Mean.tBodyGyro.std...Y"           "Mean.tBodyGyro.std...Z"          
		[27] "Mean.tBodyGyroJerk.mean...X"      "Mean.tBodyGyroJerk.mean...Y"     
		[29] "Mean.tBodyGyroJerk.mean...Z"      "Mean.tBodyGyroJerk.std...X"      
		[31] "Mean.tBodyGyroJerk.std...Y"       "Mean.tBodyGyroJerk.std...Z"      
		[33] "Mean.tBodyAccMag.mean.."          "Mean.tBodyAccMag.std.."          
		[35] "Mean.tGravityAccMag.mean.."       "Mean.tGravityAccMag.std.."       
		[37] "Mean.tBodyAccJerkMag.mean.."      "Mean.tBodyAccJerkMag.std.."      
		[39] "Mean.tBodyGyroMag.mean.."         "Mean.tBodyGyroMag.std.."         
		[41] "Mean.tBodyGyroJerkMag.mean.."     "Mean.tBodyGyroJerkMag.std.."     
		[43] "Mean.fBodyAcc.mean...X"           "Mean.fBodyAcc.mean...Y"          
		[45] "Mean.fBodyAcc.mean...Z"           "Mean.fBodyAcc.std...X"           
		[47] "Mean.fBodyAcc.std...Y"            "Mean.fBodyAcc.std...Z"           
		[49] "Mean.fBodyAccJerk.mean...X"       "Mean.fBodyAccJerk.mean...Y"      
		[51] "Mean.fBodyAccJerk.mean...Z"       "Mean.fBodyAccJerk.std...X"       
		[53] "Mean.fBodyAccJerk.std...Y"        "Mean.fBodyAccJerk.std...Z"       
		[55] "Mean.fBodyGyro.mean...X"          "Mean.fBodyGyro.mean...Y"         
		[57] "Mean.fBodyGyro.mean...Z"          "Mean.fBodyGyro.std...X"          
		[59] "Mean.fBodyGyro.std...Y"           "Mean.fBodyGyro.std...Z"          
		[61] "Mean.fBodyAccMag.mean.."          "Mean.fBodyAccMag.std.."          
		[63] "Mean.fBodyBodyAccJerkMag.mean.."  "Mean.fBodyBodyAccJerkMag.std.."  
		[65] "Mean.fBodyBodyGyroMag.mean.."     "Mean.fBodyBodyGyroMag.std.."     
		[67] "Mean.fBodyBodyGyroJerkMag.mean.." "Mean.fBodyBodyGyroJerkMag.std.."

###
=====================================================================================
