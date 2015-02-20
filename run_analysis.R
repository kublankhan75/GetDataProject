# Load relevant libraries
library(dplyr)
library(tidyr)

# Read relevant data sets
subject_test <- read.table("~/getdataproject/subject_test.txt")
subject_train <- read.table("~/getdataproject/subject_train.txt")
X_test <- read.table("~/getdataproject/X_test.txt")
X_train <- read.table("~/getdataproject/X_train.txt")
y_train <- read.table("~/getdataproject/y_train.txt")
y_test <- read.table("~/getdataproject/y_test.txt")
features <- read.table("~/getdataproject/features.txt")
activity_labels <- read.table("~/getdataproject/activity_labels.txt")

# Consolidate train and test data
a <- rbind(X_train, X_test)

# Remove extraneous variable from <features>
features <- select(features, V2)

# Make <features> the column names of <a>
names <- as.vector(features$V2)
names(a) <- names

# Add subject data to <a> and name the new column
b <- rbind(subject_train, subject_test)
a <- cbind(b, a)
names(a)[1] <- "subject"

# Add activity data to <a> and name the new column
c <- rbind(y_train, y_test)
a <- cbind(c, a)
names(a)[1] <- "activity"

# Remove duplicate columns from <a>, extract all mean and std variables
# and preserve activity and subject variables
a <- a[, !duplicated(colnames(a))]
a <- select(a, activity, subject, contains("mean"), contains("std"))

# Replace activity numbers with descriptive names
# based on <activity_labels>
a$activity <- activity_labels$V2[match(a$activity, c(1:6))]

# Create tidy set of average measurements grouped by activity then subject
tidy <- a %>% gather(measurement, reading, 3:88)
tidygrp <- group_by(tidy, activity, subject, measurement)
tidy <- summarize(tidygrp, average = mean(reading))
