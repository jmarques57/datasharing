# Readme.md

## Objective
This file contains a step by step description of how to create a tidyDataset.csv file
as required by the Project Assignment for Week 4 of the "Getting and Cleaning Data" course.

## Sources
There are two sources for the data required by this project:
- [Article describing the project and its goals](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- [Zip file containing all required data sources](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Please download them into a ./data subdirectory in your local workspace directory

## Files included with this dataset package
- Readme.md: this file.
- tidyDataSet.csv: dataset file produced by run_analysis.R from source files above
- CodeBook.md: describes the contents of the tidyDataSet.csv file
- run_analysis.R: the R script file that gets the data from sources and executes all the steps required to produce the tidyDataSet.csv file.

## Environment
### Hardware: 
- iMac (Retina 5K, 27-inch, Late 2014)
- 4GHz Intel Core i7
- 32 GB 1600 MHz DDR3
- AMD Radeon R9 M295X 4096 MB
### Software: 
- RStudio Version 0.99.896
### OS: 
- OS X El Capitan Version 10.11.6


## Procedure
- Copy run_analysis.R script to our local workspace directory
- Load run_analysis.R into RStudio
- Run the complete run_analysis.R from RStudio
- Once the script runs, the tidyDataSet.csv file will be written to your local workspace directory
- Compare tidyDataSet.csv to the original copy of the same file included with this dataset package
- Verify that the two files are identical

## Step by Step Description of the run_analysis.R script 

- Clean R environment
- Save original home directory
- Initialize all required directories and paths
- Set workspace directory as new home directory
- Download and unzip Dataset file
- Set unzipped Dataset directory as new working directory
- Read activity labels and features files
- Read subject data files
- Read accelerometer measurements data files
- Read activity data files
- Go back to home directory
- Now check dimentions and contents of all data tables just read 
- Check Train data summary
- Check Test data summary
- Set column names in all data tables just read
- 1.-Merge the training and the test sets to create one data set.
- Make sure columns are merged in Subject > Activity > Accelerometer Measurements order
- Check that final dimensions make sense
- 2.-Extract only the measurements on the mean and standard deviation for each measurement
- 3.-Use descriptive activity names to name the activities in the data set
- In the Activity column, replace activity ids with descriptive activity names
- 4.-Appropriately label the data set with descriptive variable names
- Set up pattern->replacement lookup table
- Use lookup table to search for patterns in oneDataSet column labels and replace them with their corresponding replacement values
- 5.-From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- Write final tidyDataSet to a file in the workspace directory
- Restore original home directory

The above steps are detailed in the run_analysis.R script so you can follow the code that goes with each step.

