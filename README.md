# README

###Analysis of data collected from the accelerometers of the Samsung Galaxy S smartphone
========================================================================================

	What does the analysis file do?
	The analysis file named "run_analysis.R" is an R script that does the following:

	1)	Merges the training and the test sets to create one data set.
	2)	Extracts only the measurements on the mean and standard deviation for each measurement. 
	3)	Uses descriptive activity names to name the activities in the data set
	4)	Appropriately labels the data set with descriptive activity names. 
		Writes this dataframe (10299 rows, 69 variables) to file called "TidyDetail.txt" using tab separated variables format.
	5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
		Write this new dataframe (40 rows, 68 columns) to file called TidySummary.txt using tab separated variables format.

#####Assumption:
		1. run_analysis.R and the Samsung input files are located in the working directory.
		2. The two tidy data sets created by run_analysis.R are also written to the working directory.
==================================================================================================================================================

#####Notes on how to read a tab separated file into Excel:
	0. I'm assuming you have already downloaded the two tidy data sets to your computer.
	1. Open a blank excel workbook.
	2. On the very top of Excel, choose the "Data" menu/tab, select "From Text"
	3. A dialog box opens, now select the correct directory and file 
		("TidyDetail.txt" or "TidySummary.txt") and double click or hit "Import" button.
	4. File type Delimited and hit [Next]
	5. Delimiters choose Tab (check mark to the left of "Tab") not hit[Next]
	6. Hit [Finish]
	7. Hit [OK] and the data will be imported to the existing (blank excel worksheet).
==================================================================================================================================================

#####Items submitted:
	1)	Github repo link: https://github.com/BillKillacky/GetAndCleanData
	2)	'run_analysis.R' is the script for performing the analysis, and
	3)	'CodeBook.md' is the code book that describes the variables, the data, and any transformations or work that I performed to clean up the data. 
	4)	'README.md' explains how all of the scripts work and how they are connected.  
	5)	'TidyDetail.txt' (tab separated variables) is the first independent a tidy data set
		Contains 10299 rows of merged data from both test and train data sets
		Only columns having to do with mean or std are included.
	6)	TidySummary.txt - Tab delimited file with 40 rows of data from 30 subjects 
		summarized by subject and activity with the mean of all the field measures.
==================================================================================================================================================

####Detailed log of operations performed by run_analysis.R script on the data to produce the two tidy data sets.

###### Read 2 Global Data Files
* Read in activity_labels file and change column names to "actID", and "ActDesc".
* Read in features file and change column names to "fvID", and "FvDesc".

###### Read in Test data (2947 obs)
- read in test labels file and change column name to "Y"
- read in test subject file and change column name to "Subject"
- read in test data file for columns V1 to V561

###### Read in Train data (7352 Obs)
- read in test labels file and change column name to "Y"
- read in train subject file and change column name to "Subject"
- read in train data file for columns V1 to V561

###### Uses descriptive activity names to name the activities in the data set

###### provide meaning actions for action IDs
- merge test labels with activity labels to get 2947 rows with meaningful activity labels in the data by matching up labels Y with activity labels actID. 
- merge train labels with activity labels to get 7352 rows with meaningful activity labels in the data by matching up labels Y with activity labels actID. 
- Create a "Source" column ("train" or "test") with the correct of number of rows matching the test and train data sets

###### put together columns
- Create a test data frame with Source column, Subject identifier, Activity, and the 561 data measures for all 2947 rows
- Create a train data frame with Source column, Subject identifier, Activity, and the 561 data measures for all 7352 rows

###### Merges the training and the test sets to create one data set.

- bind the train dataframe 7352 rows to the test dataframe 2947 rows to create one dataset of 10299 rows.

###### Extracts only the measurements on the mean and standard deviation for each measurement. 
-  x <- sqldf("select fvDesc from f where fvDesc like '%-mean()%' or fvDesc like '%-std()%'") to return 66 matching column names from the 561 column names in the original features file.

		fsub <- f[f$fvDesc %in% x$fvDesc,]
		fsub$fcolName = paste('V',fsub$fvID, sep="") 
		
###### subset of new dataframe for std() and mean() only
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

######Write this dataframe (10299 rows, 69 variables) to file called "TidyDetail.txt" using tab separated variables format

######Creates a second, independent tidy data set with the mean of each variable for each activity and each subject. 
		tidyDF <- ddply(tidyDFdetail, .(Subject, Activity), numcolwise(mean)) 

###### prepend field names after Subject and Activity with "Mean."
		for (i in 3:68) {
			colnames(tidyDF)[i] = paste("Mean.", colnames(tidyDF)[i], sep="")
		}

###### Write this dataframe (40 rows, 68 columns) to file called TidySummary.txt using tab separated variables format

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
==================================================================================================================================================
