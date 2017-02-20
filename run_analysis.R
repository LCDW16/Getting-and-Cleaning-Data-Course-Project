# You should create one R script called run_analysis.R that does the following.
# 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement.
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names.
# From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.

setwd("D:")

## download the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile ="data.zip", method = "libcurl")
list.files() ## checking whether the download is succed
unzip(zipfile="data.zip") # unzip the datafiles

## read train subjects and activity
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
trainActivity<- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")

## read test subjects and activity
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
testActivity<- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")

## read activity labels
activityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                             col.names = c("activityNumber","activityName"))

## read training data
trainData <- read.table("./UCI HAR Dataset/train/X_train.txt")
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")

## merge train and test data
subjects <- rbind(trainSubject,testSubject)
data <- rbind(trainData,testData)
activity <- rbind(trainActivity,testActivity)
activity[,1] = activityLabels[activity[,1], 2]

## read feature names
featureName <- read.table("./UCI HAR Dataset/features.txt")

## Extracts only the measurements on the mean and standard deviation for each measurement.
meanstd <- grep("-mean\\(\\)|-std\\(\\)", featureName[[2]])
datameanstd <- Data[,meanstd]
names(Datameanstd) <- featureName[meanstd,2]
names(Datameanstd) <- gsub("\\(|\\)", "", names(Datameanstd))


## write merged data to output file
mergedData <- cbind(subjects, activity, Datameanstd)
write.table(mergedData, "merged_data.txt")

## create data with the average of each variable for each activity and each subject.
averageData <- aggregate(mergedData[, 3:length(mergedData)], 
                     list(activity = mergedData$activity, subject = mergedData$subject), 
                     mean)

# write averageData to output file
write.table(averageData, file = "tidy_averages_data.txt")


