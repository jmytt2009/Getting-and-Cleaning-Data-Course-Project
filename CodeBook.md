---
title: "Human Activity Recognition Using Smartphones Processed Dataset"
author: "Jeming Yang"
date: "03/01/2018"
output:
  html_document:
    keep_md: yes
---

## Getting and Cleaning Data Course Project
The purpose of this project is to process Human Activity Recognition Using Smartphones Dataset" to a tidy dataset.

### Collection of the raw data
The raw data are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

## Creating the tidy datafile

### Guide to create the tidy data file
 - Download the data file.
 - Read feature.txt file. The file contains 561 features.
 - Select mean and standard deviation for each measure.
 - Read activity_label.txt file. The file contains 6 activity IDs and descriptions.
 - Read tain data which includes:
   - Subject ID    : subject_train.txt
   - Activity ID   : y_train.txt
   - Train feature : x_train.txt, the columns selected are based on the selection of mean and std of the feature.txt
 - Read tain data which includes:
   - Subject ID    : subject_test.txt
   - Activity ID   : y_test.txt
   - Test feature  : x_test.txt, the columns selected are based on the selection of mean and std of the feature.txt

### Cleaning of the data
   - Merge train Activity ID to Activity description.
   - Merge train subject ID, activity description, and feature to train data.
   - Merge test Activity ID to Activity description.
   - Merge test subject ID, activity description, and feature to test data.
   - Merge tain and test to the full data set.
   - From full the data set, creates a independent tidy data set with the average of each variable for each activity and each subject.

## Full data set, activity_dataset.txt
General description of the file including:
 - Dimensions of the dataset: 10299, 81
 - Summary of the data: The features include subject Id, activity, and all mean and standard deviation for each measure.
 - Variables present in the dataset:
   - subject_id
   - activity
   - tBodyAcc_mean_X
   - tBodyAcc_mean_Y
   - tBodyAcc_mean_Z
   - tBodyAcc_std_X
   - tBodyAcc_std_Y
   - tBodyAcc_std_Z
   - tGravityAcc_mean_X
   - tGravityAcc_mean_Y
   - tGravityAcc_mean_Z
   - tGravityAcc_std_X
   - tGravityAcc_std_Y
   - tGravityAcc_std_Z
   - tBodyAccJerk_mean_X
   - tBodyAccJerk_mean_Y
   - tBodyAccJerk_mean_Z
   - tBodyAccJerk_std_X
   - tBodyAccJerk_std_Y
   - tBodyAccJerk_std_Z
   - tBodyGyro_mean_X
   - tBodyGyro_mean_Y
   - tBodyGyro_mean_Z
   - tBodyGyro_std_X
   - tBodyGyro_std_Y
   - tBodyGyro_std_Z
   - tBodyGyroJerk_mean_X
   - tBodyGyroJerk_mean_Y
   - tBodyGyroJerk_mean_Z
   - tBodyGyroJerk_std_X
   - tBodyGyroJerk_std_Y
   - tBodyGyroJerk_std_Z
   - tBodyAccMag_mean
   - tBodyAccMag_std
   - tGravityAccMag_mean
   - tGravityAccMag_std
   - tBodyAccJerkMag_mean
   - tBodyAccJerkMag_std
   - tBodyGyroMag_mean
   - tBodyGyroMag_std
   - tBodyGyroJerkMag_mean
   - tBodyGyroJerkMag_std
   - fBodyAcc_mean_X
   - fBodyAcc_mean_Y
   - fBodyAcc_mean_Z
   - fBodyAcc_std_X
   - fBodyAcc_std_Y
   - fBodyAcc_std_Z
   - fBodyAcc_meanFreq_X
   - fBodyAcc_meanFreq_Y
   - fBodyAcc_meanFreq_Z
   - fBodyAccJerk_mean_X
   - fBodyAccJerk_mean_Y
   - fBodyAccJerk_mean_Z
   - fBodyAccJerk_std_X
   - fBodyAccJerk_std_Y
   - fBodyAccJerk_std_Z
   - fBodyAccJerk_meanFreq_X
   - fBodyAccJerk_meanFreq_Y
   - fBodyAccJerk_meanFreq_Z
   - fBodyGyro_mean_X
   - fBodyGyro_mean_Y
   - fBodyGyro_mean_Z
   - fBodyGyro_std_X
   - fBodyGyro_std_Y
   - fBodyGyro_std_Z
   - fBodyGyro_meanFreq_X
   - fBodyGyro_meanFreq_Y
   - fBodyGyro_meanFreq_Z
   - fBodyAccMag_mean
   - fBodyAccMag_std
   - fBodyAccMag_meanFreq
   - fBodyBodyAccJerkMag_mean
   - fBodyBodyAccJerkMag_std
   - fBodyBodyAccJerkMag_meanFreq
   - fBodyBodyGyroMag_mean
   - fBodyBodyGyroMag_std
   - fBodyBodyGyroMag_meanFreq
   - fBodyBodyGyroJerkMag_mean
   - fBodyBodyGyroJerkMag_std
   - fBodyBodyGyroJerkMag_meanFreqy

## Average data set, mean_dataset.txt
The data set contains the average of each variable for each activity and each subject.