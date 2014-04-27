## README.md

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 

### Reference Links

[Site description where data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[getdata-projectfiles-UCI HAR Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)



### Repository Files:

* README.md
* CodeBook.md
* run_analysis.R


### Requirements

1. Download __"getdata-projectfiles-UCI HAR Dataset.zip"__ from the link above.
2. Unzip __"getdata-projectfiles-UCI HAR Dataset.zip"__
3. Place __"run_analysis.R"__ R script in __"UCI HAR Dataset"__ folder where __"test"__ and __"train"__ folders reside.


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
* Used ```melt()``` to prepare the measures for aggregation for __Subject__ and __Activity__
* Used ```dcast()``` to get the average values using ```mean()``` on the measures based on __Subject__ and __Activity__
* Used ```write.table()``` to save the tidy dataset as __tidydata.txt__


### CodeBook.md

Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data
