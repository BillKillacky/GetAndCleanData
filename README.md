Analysis of data collected from the accelerometers of the Samsung Galaxy S smartphone
=======================================================================================

Analysis using an R script called run_analysis.R that does the following:
1)	Merges the training and the test sets to create one data set.
2)	Extracts only the measurements on the mean and standard deviation for each measurement. 
3)	Uses descriptive activity names to name the activities in the data set
4)	Appropriately labels the data set with descriptive activity names. 
5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Items submitted:
1)	Github repo link: https://github.com/BillKillacky/GetAndCleanData
2)	'run_analysis.R' is the script for performing the analysis, and
3)	'CodeBook.md' is the code book that describes the variables, the data, and any transformations or work that I performed to clean up the data. 
4)	'README.md' explains how all of the scripts work and how they are connected.  
5)	'BothTrainTestA.txt' (tab separated variables) is the first data set that combines the merged training and test sets 
	Contains 10299 rows with every data row and EVERY COLUMN in both test and train datasets.
6)	'TidyDetail.txt' (tab separated variables) is the first independent a tidy data set
	Contains 10299 rows of merged data from both test and train data sets
	Only columns having to do with mean or std are included.
7)	TidySummary.txt - Tab delimited file with 40 rows of data from 30 subjects 
	summarized by subject and activity with the mean of all the field measures.
