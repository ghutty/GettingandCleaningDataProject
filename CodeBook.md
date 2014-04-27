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

### Descriptions

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation


-----------

###tidydata


* 68 Variables
* 180 Observations

-----------

__1   Subject__ - Participants Subject ID.  Total 30 Subjects

__2   Activity__ - 6 Activities

* LAYING(30,17%)
* SITTING(30,17%)
* STANDING(30,17%)
* WALKING(30,17%)
* WALKING DOWNSTAIRS(30,17%)
* WALKING UPSTAIRS(30,17%)

__3   tBodyAccMeanX__ - 
__4   tBodyAccMeanY__ - 
__5   tBodyAccMeanZ__ - 
__6   tBodyAccStdX__ - 
__7   tBodyAccStdY__ - __ - 
__8   tBodyAccStdZ__ - 
__9   tGravityAccMeanX__ - 
__10  tGravityAccMeanY__ - 
__11  tGravityAccMeanZ__ - 
__12  tGravityAccStdX__ - 
__13  tGravityAccStdY__ - 
__14  tGravityAccStdZ__ - 
__15  tBodyAccJerkMeanX__ - 
__16  tBodyAccJerkMeanY__ - 
__17  tBodyAccJerkMeanZ__ - 
__18  tBodyAccJerkStdX__ - 
__19  tBodyAccJerkStdY__ - 
__20  tBodyAccJerkStdZ__ - 
__21  tBodyGyroMeanX__ - 
__22  tBodyGyroMeanY__ - 
__23  tBodyGyroMeanZ__ - 
__24  tBodyGyroStdX__ - 
__25  tBodyGyroStdY__ - 
__26  tBodyGyroStdZ__ - 
__27  tBodyGyroJerkMeanX__ - 
__28  tBodyGyroJerkMeanY__ - 
__29  tBodyGyroJerkMeanZ__ - 
__30  tBodyGyroJerkStdX__ - 
__31  tBodyGyroJerkStdY__ - 
__32  tBodyGyroJerkStdZ__ - 
__33  tBodyAccMagMean__ - 
__34  tBodyAccMagStd__ - 
__35  tGravityAccMagMean__ - 
__36  tGravityAccMagStd__ - 
__37  tBodyAccJerkMagMean__ - 
__38  tBodyAccJerkMagStd__ - 
__39  tBodyGyroMagMean__ - 
__40  tBodyGyroMagStd__ - 
__41  tBodyGyroJerkMagMean__ - 
__42  tBodyGyroJerkMagStd__ - 
__43  fBodyAccMeanX__ - 
__44  fBodyAccMeanY__ - 
__45  fBodyAccMeanZ__ - 
__46  fBodyAccStdX__ - 
__47  fBodyAccStdY__ - 
__48  fBodyAccStdZ__ - 
__49  fBodyAccJerkMeanX__ - 
__50  fBodyAccJerkMeanY__ - 
__51  fBodyAccJerkMeanZ__ - 
__52  fBodyAccJerkStdX__ - 
__53  fBodyAccJerkStdY__ - 
__54  fBodyAccJerkStdZ__ - 
__55  fBodyGyroMeanX__ - 
__56  fBodyGyroMeanY__ - 
__57  fBodyGyroMeanZ__ - 
__58  fBodyGyroStdX__ - 
__59  fBodyGyroStdY__ - 
__60  fBodyGyroStdZ__ - 
__61  fBodyAccMagMean__ - 
__62  fBodyAccMagStd__ - 
__63  fBodyBodyAccJerkMagMean__ - 
__64  fBodyBodyAccJerkMagStd__ - 
__65  fBodyBodyGyroMagMean__ - 
__66  fBodyBodyGyroMagStd__ - 
__67  fBodyBodyGyroJerkMagMean__ - 
__68  fBodyBodyGyroJerkMagStd__ - 

-----------