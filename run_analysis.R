### 
### run_analysis.R
###
### Requirements
### * Download "getdata-projectfiles-UCI HAR Dataset.zip" from the link above.
###   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
### * Unzip "getdata-projectfiles-UCI HAR Dataset.zip"
### * Place "run_analysis.R" R script in "UCI HAR Dataset" folder where "test" and "train" folders reside.

## 1.  Merges the training and the test sets to create one data set.

subject_test <- read.table("test/subject_test.txt")
x_test <- read.table("test/x_test.txt")
y_test <- read.table("test/y_test.txt")
mergedtest <- cbind(subject_test,y_test,x_test)

subject_train <- read.table("train/subject_train.txt")
x_train <- read.table("train/x_train.txt")
y_train <- read.table("train/y_train.txt")
mergedtrain <- cbind(subject_train,y_train,x_train)

features <- read.table("features.txt") 
columnnames <- c("Subject","Activity",as.character(features[,2]))
colnames(mergedtest) <- columnnames
colnames(mergedtrain) <- columnnames
mergeddata <- rbind(mergedtest,mergedtrain)

## 2.  Extracts only the measurements on the mean and standard deviation for each measurement. 

selectedcols <- grep("Subject|Activity|*mean\\(\\)|*std\\(\\)", columnnames)
meanstddata <- mergeddata[,selectedcols]

## 3.  Uses descriptive activity names to name the activities in the data set

desccolsdata <- meanstddata
desccols <- colnames(desccolsdata)
formdesccols1 <- gsub("\\-|\\(|\\)","",desccols)
formdesccols2 <- gsub("[Mm][Ee][Aa][Nn]","Mean",formdesccols1)
formdesccolsFINAL <- gsub("[Ss][Tt][Dd]","Std",formdesccols2)
colnames(desccolsdata) <- formdesccolsFINAL

## 4.  Appropriately labels the data set with descriptive activity names. 

activitynames <- read.table("activity_labels.txt")
renamedactdata <- desccolsdata
renamedactdata$Activity <- activitynames[match(renamedactdata$Activity, activitynames[,1]),2]
renamedactdata$Activity <- gsub("\\_"," ",renamedactdata$Activity)
  
## 5.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

library(reshape2)
sorteddata <- renamedactdata[order(renamedactdata$Subject,renamedactdata$Activity),]
sorteddatacols <- colnames(sorteddata)
meltdata <- melt(sorteddata,sorteddatacols[1:2],sorteddatacols[3:length(sorteddatacols)])
tidydata <- dcast(meltdata, Subject + Activity ~ variable, mean) 
write.table(tidydata, "tidydata.txt")

