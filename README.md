README - Getting and Cleaning Data Class Project
=========================

The purpose of this script is to process a large dataset, transform the data according to rules set in the project and then end up with a useable and tidy result.

The main large data set is available here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Here were the steps we were asked to complete in the script:

* You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

The script run_analysis.R in this repo goes through these specific steps:

* install any needed extra libraries and pull in all files that will be needed from the local working directory
* combine the test and train main raw data
* rename the variables (columns) to the values from the features.txt file
* extract only functions that use the functions mean() and std(). This is done using grepl and regex
* combine the test and train subject raw data and name the variable "subject"
* combine the test and train label data and name the variable activity
* combine into one data set all the variables
* clean up the variable names and make them more readable and descriptive. Put characters to lower case, clear (), replace "-" with ".", and finally add more descrptive naming for certain headers. f = frequency and t = time.
* update all activity ids in new tidy data set with the full descriptive terms in the activity_labels.txt file
* create a seperate full data set of all subject and activity possibilities using the melt function 
* cast back using dcast to a tidy dataset with the mean of each variable across subject and activity 
* write this tidy data back to a local file named tidydata.txt - this matches the uploaded file on the project page

Other files besides this file and the script are:
* CodeBook.md

This code book goes through the variables and what they are and what the possible values are
