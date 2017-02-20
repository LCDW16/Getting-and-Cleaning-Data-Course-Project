# Code Book for Getting and Cleaning Data Course Course Project

Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script (run_analysis.R) creates an tidy data set with the average of each variable for each activity and each subject 
Variables, the output file is called tidy_averages_data.txt

The variables in the tidy dataset are:

activity

•	Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject

•	Values: [1 to 30]

The variables below are normalized and therefore have ranges from -1 to 1.

tBodyAccmean-X, Y and Z

tBodyAccstd-X, Y and Z

tGravityAccmean-X, Y and Z

tGravityAccstd-X, Y and Z

tBodyAccJerkmean-X, Y and Z

tBodyAccJerkstd-X, Y and Z

tBodyGyromean-X, Y and z

tBodyGyrostd-X, Y and z

tBodyGyroJerkmean-X, Y and Z

tBodyGyroJerkstd-X, Y and Z

tBodyAccMagmean

tBodyAccMagstd

tGravityAccMagmean

tGravityAccMagstd

tBodyAccJerkMagmean

tBodyAccJerkMagstd

tBodyGyroMagmean

tBodyGyroMagstd

tBodyGyroJerkMagmean

tBodyGyroJerkMagstd

fBodyAccmean-X, Y and Z

fBodyAccstd-X, Y and Z

fBodyAccJerkmean-X, Y and Z

fBodyAccJerkstd-X, Y and Z

fBodyGyromean-X, Y and Z

fBodyGyrostd-X, Y and Z

fBodyAccMagmean

fBodyAccMagstd

fBodyBodyAccJerkMagmean

fBodyBodyAccJerkMagstd

fBodyBodyGyroMagmean

fBodyBodyGyroMagstd

fBodyBodyGyroJerkMagmean

fBodyBodyGyroJerkMagstd

