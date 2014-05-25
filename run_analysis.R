## install reshape2 needed below if not installed
if ("reshape2" %in% row.names(installed.packages())  == FALSE)  {
        install.packages("reshape2")
}

## pull in reshape2 library 
library(reshape2)

##pull in form files train/y_train.txt and train/X_train.txt and test/y_test.txt and X_test.txt
ytrain <- read.table("train/y_train.txt")
xtrain <- read.table("train/X_train.txt")
ytest <- read.table("test/y_test.txt")
xtest <- read.table("test/X_test.txt")

##pull in subject data
subtest <- read.table("test/subject_test.txt")
subtrain <- read.table("train/subject_train.txt")

##pull in feature headers and activity types - make sure to not treat strings as factors
features <- read.table("features.txt",stringsAsFactors = F)
activitylabels <- read.table("activity_labels.txt",stringsAsFactors = F)

## build the set of feature data in raw form
feature.data.merged <- rbind(xtrain,xtest)

## rename variables to the feature set
names(feature.data.merged)[1:561]= features[,2]

## extract variables that do mean() or std() functions
feature.data.merged <- feature.data.merged[grepl("mean[:(:][:):]",names(feature.data.merged)) | grepl("std[:(:][:):]",names(feature.data.merged))]

## build the subject ids of all the participants - values 1-30
subject.data.merged <- rbind(subtrain,subtest)
names(subject.data.merged) <- "subject"

## built and merge the activity train and test data
activity.labels <- rbind(ytrain,ytest)
names(activity.labels) <- "activity"

## combine all the current data into one tidy data set
tidy.result <- cbind(feature.data.merged,subject.data.merged,activity.labels)

## set names to lower case to be more readable 
names(tidy.result) <- tolower(names(tidy.result))

## take out () in data to be cleaner
names(tidy.result) <- gsub("\\(\\)", "", names(tidy.result))

## take out - and replace with .
names(tidy.result) <- gsub("-", ".", names(tidy.result))

## add in better english language descriptors 
names(tidy.result) <- gsub("^f","frequency.",names(tidy.result))
names(tidy.result) <- gsub("^t","time.", names(tidy.result))

## update all activity codes with english activities
tidy.result$activity[tidy.result$activity==1]<-"WALKING"
tidy.result$activity[tidy.result$activity==2]<-"WALKING_UPSTAIRS"
tidy.result$activity[tidy.result$activity==3]<-"WALKING_DOWNSTAIRS"
tidy.result$activity[tidy.result$activity==4]<-"SITTING"
tidy.result$activity[tidy.result$activity==5]<-"STANDING"
tidy.result$activity[tidy.result$activity==6]<-"LAYING"

## create seperate full data set of all subject and activity possibilities 
tidy.mean.result <- melt(tidy.result,id=c("subject","activity"))

## cast back to a tidy dataset with the mean of each variable across subject and activity 
tidy.mean.result <- dcast(tidy.mean.result, subject + activity ~ variable, fun.aggregate=mean)

## write out dataset to local file
write.table(tidy.mean.result,file="tidydata.txt")
