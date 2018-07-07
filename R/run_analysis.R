library(dplyr)
library(tidyr)
activities <- readr::read_table("./data/activity_labels.txt",
                                col_names = c("activity_id", "activity_name"))
features <- readr::read_table("./data/features.txt", col_names = "feature")

subject_test <- readr::read_table("./data/test/subject_test.txt", col_names = "subject")
y_test <- readr::read_table("./data/test/y_test.txt", col_names = "activity")
X_test <- readr::read_table("./data/test/X_test.txt", col_names = features$feature)
data_test <- cbind(subject_test, y_test, X_test)

subject_train <- readr::read_table("./data/train/subject_train.txt", col_names = "subject")
y_train <- readr::read_table("./data/train/y_train.txt", col_names = "activity")
X_train <- readr::read_table("./data/train/X_train.txt", col_names = features$feature)
data_train <- cbind(subject_train, y_train, X_train)

data <- rbind(data_test, data_train)
rm(subject_test, y_test, X_test, data_test,
   subject_train, y_train, X_train, data_train,
   features)

data <- data %>%
  select(subject, activity, contains("mean()"), contains("std()")) %>%
  mutate(activity = activities$activity_name[match(activity, activities$activity_id)])

rm(activities)

tidy_data <- data %>%
  group_by(subject, activity) %>%
  summarise_all(mean)

readr::write_csv(tidy_data, "./data/tidy_data.csv")