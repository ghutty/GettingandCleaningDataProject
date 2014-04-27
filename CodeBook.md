##CodeBook.md


### Source


[Site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[Source Data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### Changes

* Ignored raw data in __"/Inertial Signals"__ as data files available in __"/test"__ and __"/train"__ folders produce an acceptable result.  Total 563 variables with 561 features + __Subject__ and __Activity__.  Result 10299 obs. of 563 variables
* The features required are mean() and std() which will result in 66 Variables.  Total 68 Variables including __Subject__ and __Activity__.  Result 10299 obs. of 68 variables
* _"Uses descriptive activity names to name the activities in the data set"_, rename column names for the features
* _"Appropriately labels the data set with descriptive activity names."_, replace activity code to activity names as data values
* Create tidy dataset with the average of each variable for each activity (6) and each subject (30).  Result 30 Subjects x 6 activities = 180 obs. of 68 variables


### Code


### run_analysis.R

Merges the training and the test sets to create one data set.


* Used ```read.table()``` and ```cbind()``` to create __test__ and __train__ data frames.
* Used ```read.table()``` and ```colnames()``` to rename column names
* Used ```rbind()``` to merge __test__ and __train__ data frames.


Extracts only the measurements on the mean and standard deviation for each measurement.

* Used ```grep()``` to select only __Subject__, __Activity__, __*mean()*__ and __*std()*__ columns.
* Used data frame selecting (Keeping) Variables.


Uses descriptive activity names to name the activities in the data set

* Used ```gsub()``` to remove __-__, __(__ and __)__
* Used ```gsub()``` to replace column names __mean__ to __Mean__ and __std__ and __Std__
* Used ```colnames()``` to rename column names

Appropriately labels the data set with descriptive activity names.
 
* Used ```read.table()``` to add a data frame to be used as activity name values
* Used ```match()``` to replace the activity code with activity name values
* Used ```gsub()``` to replace __underscores__ to __spaces__

Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
* Load __*reshape2*__ library.
* Used ```order()``` to have a better sorting view of the data
* Used ```melt()``` to prepare the measures for aggregation for __Subject__ and __Activity__.  Removed row names.
* Used ```dcast()``` to get the average values using ```mean()``` on the measures based on __Subject__ and __Activity__
* Used ```write.table()``` to save the tidy dataset as __tidydata.txt__



-----------

###tidydata


* 68 Variables
* 180 Observations

-----------

####1   Subject
Participants Subject ID.  Total 30 Subjects

####2   Activity
6 Activities

LAYING(30,17%)
SITTING(30,17%)
STANDING(30,17%)
WALKING(30,17%)
WALKING DOWNSTAIRS(30,17%)
WALKING UPSTAIRS(30,17%)

####3   tBodyAccMeanX
####4   tBodyAccMeanY
####5   tBodyAccMeanZ
####6   tBodyAccStdX
####7   tBodyAccStdY
####8   tBodyAccStdZ
####9   tGravityAccMeanX
####10  tGravityAccMeanY
####11  tGravityAccMeanZ
####12  tGravityAccStdX
####13  tGravityAccStdY
####14  tGravityAccStdZ
####15  tBodyAccJerkMeanX
####16  tBodyAccJerkMeanY
####17  tBodyAccJerkMeanZ
####18  tBodyAccJerkStdX
####19  tBodyAccJerkStdY
####20  tBodyAccJerkStdZ
####21  tBodyGyroMeanX
####22  tBodyGyroMeanY
####23  tBodyGyroMeanZ
####24  tBodyGyroStdX
####25  tBodyGyroStdY
####26  tBodyGyroStdZ
####27  tBodyGyroJerkMeanX
####28  tBodyGyroJerkMeanY
####29  tBodyGyroJerkMeanZ
####30  tBodyGyroJerkStdX
####31  tBodyGyroJerkStdY
####32  tBodyGyroJerkStdZ
####33  tBodyAccMagMean
####34  tBodyAccMagStd
####35  tGravityAccMagMean
####36  tGravityAccMagStd
####37  tBodyAccJerkMagMean
####38  tBodyAccJerkMagStd
####39  tBodyGyroMagMean
####40  tBodyGyroMagStd
####41  tBodyGyroJerkMagMean
####42  tBodyGyroJerkMagStd
####43  fBodyAccMeanX
####44  fBodyAccMeanY
####45  fBodyAccMeanZ
####46  fBodyAccStdX
####47  fBodyAccStdY
####48  fBodyAccStdZ
####49  fBodyAccJerkMeanX
####50  fBodyAccJerkMeanY
####51  fBodyAccJerkMeanZ
####52  fBodyAccJerkStdX
####53  fBodyAccJerkStdY
####54  fBodyAccJerkStdZ
####55  fBodyGyroMeanX
####56  fBodyGyroMeanY
####57  fBodyGyroMeanZ
####58  fBodyGyroStdX
####59  fBodyGyroStdY
####60  fBodyGyroStdZ
####61  fBodyAccMagMean
####62  fBodyAccMagStd
####63  fBodyBodyAccJerkMagMean
####64  fBodyBodyAccJerkMagStd
####65  fBodyBodyGyroMagMean
####66  fBodyBodyGyroMagStd
####67  fBodyBodyGyroJerkMagMean
####68  fBodyBodyGyroJerkMagStd