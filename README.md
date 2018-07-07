# Getting And Cleaning Data

This is the final project for JHU's course titled **Getting and Cleaning Data** on Coursera.

## Analysis

### 1. Import Raw Data (using **readr** library)
* import raw data for subject, test and train
* rename columns with the corresponding labels from *features.txt*
* use cbind() and rbind() to create the full dataset

### 2. Filter Data (using **dplyr** library)
* use select() to select fields mean() and std() for each subject and activity
* use mutate() to lookup activity_id and return activity_name from *activity_labels.txt*

### 3. Create Tidy Data (using **tidyr** library)
* use group_by() and summarise_all() to create tidy data representing the means of readings for each subject for each activity

### 4. Export Tidy Data (using **readr** library)
* use write_delim() to export tidy data to *./data/tidy_data.txt*