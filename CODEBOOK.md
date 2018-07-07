Codebook for Getting and Cleaning Data Project
===

## 0. Dataset Required
The dataset required is based on a study on Human Activity Recognition Using Smartphones.<br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Refer below for further information relating to the study. <br> http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 1. Input Dataset
* subject_test/train : subject id
* X_test/train : result value for each test feature
* y_test/train : activity id for each observation
* activity_labels : activitiy description
* features : descriptive label for each test feature

## 2. Fields Required
* subject
* activity
* mean
* std

## 3. Output Dataset
* tidy_data : averages of mean and std for each subject for each activity