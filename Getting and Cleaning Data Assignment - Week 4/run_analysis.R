# Peer Graded Assignment - Getting and Cleaning Data Course Project
# Author: jmarques57
# Date: 9-10-2016

# Hardware: iMac (Retina 5K, 27-inch, Late 2014), 4GHz Intel Core i7, 32 GB 1600 MHz DDR3, AMD Radeon R9 M295X 4096 MB
# Software: RStudio Version 0.99.896
# OS: OS X El Capitan Version 10.11.6

# clean environment
rm(list = ls(all = TRUE))

# save old home directory
oldDir <- getwd()

# initialize all required directories and paths
homeDir <- "/Users/jmmg57/workspace"
dataDir <- "./data"
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "Dataset.zip"
zipFilePath <- paste(dataDir,zipFile,sep="/")
datasetDir <- paste(dataDir,"UCI HAR Dataset",sep="/")

# set workspace directory as new home directory
setwd(homeDir)

# download and unzip Dataset file
if(!file.exists(dataDir)){dir.create(dataDir)}
download.file(zipUrl,zipFilePath,method="curl")
unzip(zipFilePath,exdir=dataDir)

# set unzipped Dataset directory as new working directory
setwd(datasetDir)

## Read activity labels and features files
activityLabels <- read.table('activity_labels.txt',stringsAsFactors = FALSE)
features <- read.table('features.txt',stringsAsFactors = FALSE)

## Read subject data files
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")

## Read accelerometer measurements data files
x_train <- read.table("./train/X_train.txt")
x_test <- read.table("./test/X_test.txt")

## Read activity data files
y_train <- read.table("./train/y_train.txt")
y_test <- read.table("./test/y_test.txt")

# go back to home directory
setwd(homeDir)

# Now check dimentions and contents of all data tables just read 
# Check Train data summary
summary(subject_train)  # 7352x1, each value between 1 and 30
dim(subject_train)

summary(x_train)  # 7352x561, each value between -1 and 1
dim(x_train)

summary(y_train)  # 7352x1, each value between 1 and 6
dim(y_train)

# Check Test data summary
summary(subject_test)  # 2947x1, each value between 2 and 24
dim(subject_test)

summary(x_test)  # 2947x561, each value between -1 and 1
dim(x_test)

summary(y_test)  # 2947x1, each value between 1 and 6
dim(y_test)

# Set column names in all data tables just read
colnames(activityLabels) <- c("Activity","Label")
colnames(subject_train) <- c("Subject")
colnames(subject_test) <- c("Subject")
colnames(y_train) <- c("Activity")
colnames(y_test) <- c("Activity")
colnames(x_train) <- features[,2]
colnames(x_test) <- features[,2]

# 1.-Merge the training and the test sets to create one data set.
# Make sure columns are merged in Subject > Activity > Accelerometer Measurements order
train <- cbind(subject_train,y_train,x_train)
test <- cbind(subject_test,y_test,x_test)
oneDataSet <- rbind(train,test)

# check that final dimensions make sense
dim(oneDataSet)     # 10299 rows = 7352 + 2947 and 563 columns = 1 + 1+ 561

# 2.-Extract only the measurements on the mean and standard deviation for each measurement
keeps <- grep("mean\\(\\)|std\\(\\)|Subject|Activity",names(oneDataSet))      
oneDataSet <- oneDataSet[,keeps]

# 3.-Use descriptive activity names to name the activities in the data set
# In the Activity column, replace activity ids with descriptive activity names
library(plyr)
oneDataSet$Temp <- oneDataSet$Activity
oneDataSet$Activity <- plyr::mapvalues(oneDataSet$Temp, from = activityLabels$Activity, to = activityLabels$Label)
oneDataSet$Temp <- NULL

# 4.-Appropriately label the data set with descriptive variable names
# Set up pattern->replacement lookup table
lookup <- data.frame(Pattern = c("Acc","BodyBody","^f","Gyro","Mag","mean\\(\\)","std\\(\\)","^t"),
           Replacement = c("Acceleration","Body","Frequency","Gyroscope","Magnitude","Mean","SD","Time"),stringsAsFactors = FALSE)
# Use lookup table to search for patterns in oneDataSet column labels and replace them with their corresponding replacement values
top <- length(names(oneDataSet))
for (i in 1:nrow(lookup))
  names(oneDataSet)[3:top] <- as.character(lapply(names(oneDataSet)[3:top], function(x)gsub(lookup$Pattern[i],lookup$Replacement[i],x,perl=TRUE)))

# 5.-From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
tidyDataSet <- aggregate(. ~Subject + Activity, oneDataSet, mean)
tidyDataSet <- tidyDataSet[order(tidyDataSet$Subject, tidyDataSet$Activity),]

# Write final tidyDataSet to a file in the workspace directory
write.csv(tidyDataSet, file="tidyDataSet.csv", row.names=FALSE)

# restore original home directory
setwd(oldDir)