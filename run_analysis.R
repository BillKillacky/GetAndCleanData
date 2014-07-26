# run_analysis.R
# bill.killacky@gmail.com
#

# Project
# You should create one R script called run_analysis.R that does the following. 
# 1.  Merges the training and the test sets to create one data set.
# 2.	Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.	Uses descriptive activity names to name the activities in the data set
# 4.	Appropriately labels the data set with descriptive activity names. 
# 5.	Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

rm(m,y,bad,good,u,x)
setwd("C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData")
getwd()

# C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/train
# 3:  X_test.txt, y_test.txt, subject_test.txt
#
# C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/test
# 3:  X_train.txt y_train.txt subject_train.txt
#
#fileUrl_features <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/features.txt"
#fileUrl_activity_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/activity_labels.txt"

#fileUrlxtest_dataset <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/test/X_test.txt"
#fileUrlytest_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/test/y_test.txt"
#fileUrlytest_subject <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/test/subject_test.txt"

#fileUrlxtrain_dataset <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/train/X_train.txt"
#fileUrlytrain_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/train/y_train.txt"
#fileUrlytrain_subject <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/data/UCI HAR Dataset/train/subject_train.txt"
#
#----- The code should have a file run_analysis.R in the main directory 
#----- that can be run as long as the Samsung data is in your working directory.
#
#fileUrl_features <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/features.txt"
#fileUrl_activity_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/activity_labels.txt"
#
#fileUrlxtest_dataset <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/X_test.txt"
#fileUrlytest_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/y_test.txt"
#fileUrlytest_subject <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/subject_test.txt"
#
#fileUrlxtrain_dataset <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/X_train.txt"
#fileUrlytrain_labels <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/y_train.txt"
#fileUrlytrain_subject <- "C:/Users/Bill Killacky/Documents/Coursera/GetAndCleanData/subject_train.txt"

fileUrl_features <- "features.txt"
fileUrl_activity_labels <- "activity_labels.txt"

fileUrlxtest_dataset <- "X_test.txt"
fileUrlytest_labels <- "y_test.txt"
fileUrlytest_subject <- "subject_test.txt"

fileUrlxtrain_dataset <- "X_train.txt"
fileUrlytrain_labels <- "y_train.txt"
fileUrlytrain_subject <- "subject_train.txt"

#--------------------------------------------------------------------------
# 1.  Merges the training and the test sets to create one data set.
#--------------------------------------------------------------------------

#---------------
# Read 2 Global Data Files
#---------------
library(data.table)
#--------------------------
# activity_labels
#
a <- read.table(fileUrl_activity_labels, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(a) <- c("actID","actDesc")
#str(a)
#dim(a)       # [1] 6 2
#tail(a, n=2)
#   actID  actDesc
# 5     5 STANDING
# 6     6   LAYING
#--------------------------

#--------------------------
# features.txt
#
f <- read.table(fileUrl_features, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(f) <- c("fvID","fvDesc")
#str(f)
#dim(f)      #[1] 561   2
#tail(f, n=2)
#     fvID               fvDesc
# 560  560 angle(Y,gravityMean)
# 561  561 angle(Z,gravityMean)
#--------------------------

#---------------
# Read in Test (2947 obs)
#---------------
testY <- read.table(fileUrlytest_labels, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(testY) <- c("Y")
# dim(testY)   #[1] 2947    1
# tail(testY, n=2)
#      testY
# 2946     2
# 2947     2

testSubject <- read.table(fileUrlytest_subject, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(testSubject) <- c("Subject")
# dim(testSubject)  #[1] 2947    1
# tail(testSubject, n=2)
#      testSubject
# 2946          24
# 2947          24

testDat <- read.table(fileUrlxtest_dataset, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(testDat) <- colnames(testDat,do.NULL=FALSE)
# dim(testDat)  #[1] 2947  561
# tail(testDat, n=2)
#             V1          V2          V3         V4         V5         V6         V7         V8         V9
# 2946 0.2375938  0.01846687 -0.09649893 -0.3231143 -0.2297754 -0.2075736 -0.3923802 -0.2796102 -0.2894774
# 2947 0.1536272 -0.01843651 -0.13701846 -0.3300460 -0.1952533 -0.1643388 -0.4309738 -0.2182947 -0.2299329
# ...
#            V559      V560      V561
# 2946 -0.6597186 0.2647816 0.1875629
# 2947 -0.6600802 0.2639362 0.1881034



#---------------
# Read in Train (7352 Obs)
#---------------
trainY <- read.table(fileUrlytrain_labels, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(trainY) <- c("Y")
# dim(trainY)  #[1] 7352    1
# tail(trainY, n=2)
#      trainY
# 7351      2
# 7352      2


trainSubject <- read.table(fileUrlytrain_subject, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(trainSubject) <- c("Subject")
# dim(trainSubject)  #[1] 7352    1
# tail(trainSubject, n=2)
#      trainSubject
# 7351           30
# 7352           30

trainDat <- read.table(fileUrlxtrain_dataset, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
colnames(trainDat) <- colnames(trainDat,do.NULL=FALSE)
# dim(trainDat)  #[1] 7352  561
# tail(trainDat, n=2)
#             V1          V2         V3         V4          V5        V6         V7          V8        V9
# 7351 0.2896542 -0.01884304 -0.1582806 -0.2191394 -0.11141169 0.2688932 -0.3104875 -0.06820033 0.3194733
# 7352 0.3515035 -0.01242312 -0.2038672 -0.2692704 -0.08721154 0.1774039 -0.3774040 -0.03867806 0.2294295
# ...
#            V558       V559      V560       V561
# 7351 -0.5894789 -0.7851814 0.2464322 0.02533948
# 7352 -0.6169564 -0.7832669 0.2468085 0.03669484

#--------------------------------------------------------------------------
# 3.  Uses descriptive activity names to name the activities in the data set
#--------------------------------------------------------------------------

#-------------------
# provide meaning actions for action IDs
#-------------------
names(a)
names(testY)
# merge(reviews,solutions,by.x="solution_id",by.y="id",all=TRUE)
testYa <- merge(testY, a, by.x="Y",by.y="actID", all=TRUE)
table(testYa)
tail(testYa, n=2)
#      testY actDesc
# 2946     6  LAYING
# 2947     6  LAYING

names(a)
names(trainY)
# merge(reviews,solutions,by.x="solution_id",by.y="id",all=TRUE)
trainYa <- merge(trainY, a, by.x="Y",by.y="actID", all=TRUE)
table(trainYa)
tail(trainYa, n=2)
#      trainY actDesc
# 7351      6  LAYING
# 7352      6  LAYING
a

nrow(trainYa)
nrow(testYa)

trainLab <- rep("train", nrow(trainYa))
testLab <- rep("test", nrow(testYa))
#colnames(trainLab) <- c("source")
#---------------------
# put together columns
#
trainDF <- data.frame(trainLab, trainSubject, trainYa, trainDat)
testDF <- data.frame(testLab, testSubject, testYa, testDat)
names(trainDF)
names(testDF)
colnames(trainDF)[1] = "Source"
colnames(testDF)[1] = "Source"
names(trainDF)
names(testDF)

#---------------------
nrow(trainYa) + nrow(testYa)

# put together test and train
allDF <- rbind(trainDF, testDF)
head(allDF, n=1)
# read.table(fileUrlxtrain_dataset, header=FALSE, sep="", stringsAsFactors=F, na.strings="?")
##write.csv(allDF, file = "BothTrainTestA.csv")
#write.table(allDF, file = "BothTrainTestA.txt", sep="\t")
#---------------------

#--------------------------------------------------------------------------
# 2.  Extracts only the measurements on the mean and standard deviation 
#     for each measurement. 
#--------------------------------------------------------------------------

#===================================================
# subset of new dataframe for std() and mean() only
#===================================================
library(sqldf)
#fs1 <- sqldf("select * from f where fvDesc like '%-mean()' or fvDesc like '%-std()'")
#fs2 <- sqldf("select * from f where fvDesc like '%-mean()%' or fvDesc like '%-std()%'")

x <- sqldf("select fvDesc from f where fvDesc like '%-mean()%' or fvDesc like '%-std()%'")
str(x)
dim(x)
str(f)
fsub <- f[f$fvDesc %in% x$fvDesc,]    # 
fsub
tail(fsub, n=2)

fsub
fsub$fcolName = paste('V',fsub$fvID, sep="")     #create a new column fcolName: V1 or v41 or v543
fsub
nrow(fsub)

names(allDF)

#tsub <- fsub$fcolName
#tsub
#tsub <- as.vector(tsub)
#tsub


tidyDF1 <- data.frame(allDF$Source, allDF$Subject, allDF$actDesc)
colnames(tidyDF1) <- c("Source", "Subject", "Activity")
names(tidyDF1)

#tidyDF2 <- subset(allDF, select = tsub)
tidyDF2 <- subset(allDF, select = fsub$fcolName)  #include only columns with mean or std variables
names(tidyDF2)
colnames(tidyDF2) <- fsub$fvDesc     #convert to colnames from v1 to tBodyAcc-mean()-x for subset 66 of 541 columns
names(tidyDF2)

tidyDFdetail <- data.frame(tidyDF1, tidyDF2)
names(tidyDFdetail)
tail(tidyDFdetail, n=2)
dim(tidyDFdetail)
names(tidyDFdetail)
colnames(tidyDFdetail)

colnames(tidyDF2)[2]   
n <- dim(tidyDFdetail)[2]    #n = number of columns
for (i in 1:n) {
  print(paste(i, colnames(tidyDFdetail)[i]) )
}
tail(tidyDFdetail, n=1)
tidyDFdetail[10299,69]
n <- dim(tidyDFdetail)[1]    #n = number of rows/obs
n <- dim(tidyDFdetail)[2]    #n = number of columns
for (i in 1:n) {
  #print(paste(i, colnames(tidyDFdetail)[i], tidyDFdetail[10299, i] ))  #last data row
  print(paste(i, colnames(tidyDFdetail)[i], tidyDFdetail[1, i] ))   #first data row
}

# Values with specific characteristics
#table(restData$zipCode %in% c("21212"))
#table(restData$zipCode %in% c("21212","21213"))
#
#restData[restData$zipCode %in% c("21212","21213"),]
#restData[restData$zipCode %in% c("21212","21213"),1:2]
#sum(restData$zipCode %in% c("21212", "21213"), 2)
#===================================================



#colnames(m2) <- colnames(m2,do.NULL=FALSE)
#DT <- read.table(fileUrl, header=TRUE, sep=";", na.strings="?")
#------ put together the data frame
# X <- data.frame("var1"=sample(1:5),"var2"=sample(6:10),"var3"=sample(11:15))
# Adding rows and columns to dataframes
#
# X$var4 <- rnorm(5)    #random normal
#---------------------



# install.packages("plyr")
# load(plyr)
#
# Creating a new variable
# 
#spraySums <- ddply(InsectSprays,.(spray),summarise,
#                   sum=ave(count,FUN=sum))
#trainEsd <- ddply(testDat, transform, mu = mean())
# ddply(InsectSprays,.(spray),summarise,sum=sum(count))
# 
#   spray sum
# 1     A 174
# 2     B 184
# 3     C  25
# 4     D  59
# 5     E  42
# 6     F 200

#tapply(InsectSprays$count,InsectSprays$spray,sum)
# apply (to count) along an index (spray), function=sum
#   A   B   C   D   E   F 
# 174 184  25  59  42 200 

#--------------------------------------------------------------------------
# 4.  Appropriately labels the data set with descriptive activity names. 
#--------------------------------------------------------------------------

#write.csv(tidyDFdetail, file = "TidyDetail.csv")
write.table(tidyDFdetail, file = "TidyDetail.txt", sep="\t", row.names=FALSE)

#--------------------------------------------------------------------------
# 5.  Creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject. 
#--------------------------------------------------------------------------
load(plyr)
#library("plyr", lib.loc="C:/Users/Bill Killacky/Documents/R/win-library/3.0")

#tidyDF2 <- ddply(tidyDFdetail, .(Subject, Activity), mutate, numcolwise(mean), sigma=(numcolwise(sd)))
tidyDF <- ddply(tidyDFdetail, .(Subject, Activity), numcolwise(mean))
str(tidyDF)
names(tidyDF)
tidyDF
dim(tidyDF)
length(tidyDF)  #68 columns - subject and activity = 66 columns
#============================================================
# prepend field names after Subject and Activity with "Mean."
#============================================================
#tidyDF$fcolName) = paste("Mean.", tidyDF$fcolName)
names(tidyDF)
for (i in 3:68) {
  colnames(tidyDF)[i] = paste("Mean.", colnames(tidyDF)[i], sep="")
}
names(tidyDF)
# colnames(trainDF)[1] = "Source"
# fsub$fcolName = paste('V',fsub$fvID, sep="")
# colnames(tidyDF2) <- fsub$fvDesc

#write.csv(tidyDF, file = "TidySummary.csv")
write.table(tidyDF, file = "TidySummary.txt", sep="\t", row.names=FALSE)
#write.csv(tidyDFdetail, file = "BothTrainTest.txt")
