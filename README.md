Analysis of data collected from the accelerometers of the Samsung Galaxy S smartphone
=====================================================================================

	What does the analysis file do?
	The analysis file named "run_analysis.R" is an R script that does the following:

1)	Merges the training and the test sets to create one data set.
2)	Extracts only the measurements on the mean and standard deviation for each measurement. 
3)	Uses descriptive activity names to name the activities in the data set
4)	Appropriately labels the data set with descriptive activity names. 
	Writes this dataframe (10299 rows, 69 variables) to file called "TidyDetail.txt" using tab separated variables format.
5)	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
	Write this new dataframe (40 rows, 68 columns) to file called TidySummary.txt using tab separated variables format.

Assumption:	1. run_analysis.R and the Samsung input files are located in the working directory.
			2. The two tidy data sets created by run_analysis.R are also written to the working directory.
==================================================================================================================================================

Notes on how to read a tab separated file into Excel:
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

Items submitted:
1)	Github repo link: https://github.com/BillKillacky/GetAndCleanData
2)	'run_analysis.R' is the script for performing the analysis, and
3)	'CodeBook.md' is the code book that describes the variables, the data, and any transformations or work that I performed to clean up the data. 
4)	'README.md' explains how all of the scripts work and how they are connected.  
5)	'TidyDetail.txt' (tab separated variables) is the first independent a tidy data set
	Contains 10299 rows of merged data from both test and train data sets
	Only columns having to do with mean or std are included.
6)	TidySummary.txt - Tab delimited file with 40 rows of data from 30 subjects 
	summarized by subject and activity with the mean of all the field measures.

###
