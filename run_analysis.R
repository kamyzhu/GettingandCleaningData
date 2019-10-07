library(dplyr)

# 0. Download, unzip and read data

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "UCI HAR Dataset.zip", method = "curl")
unzip("UCI HAR Dataset.zip")

features <- read.table("./UCI HAR Dataset/features.txt")
a_l <- read.table("./UCI HAR Dataset/activity_labels.txt")

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = features[,2])
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = features[,2])
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# 1. Merge the training and the test sets
train <- cbind(y_train, subject_train, X_train)
test <- cbind(y_test, subject_test, X_test)
full <- rbind(train, test)

# 2. Extract only the measurements on the mean and standard deviation
ext <- select(full, activity, subject, contains(".mean.."), contains(".std.."))

# 3. Name the activities in the data set
ext$activity <- factor(ext$activity, levels = a_l[,1], labels = a_l[,2])

#4. Label the data set with descriptive variable names
names(ext) <- gsub("^t","time",names(ext))
names(ext) <- gsub("^f","frequency",names(ext))
names(ext) <- gsub("Acc","Accelerometer",names(ext))
names(ext) <- gsub("Gyro","Gyroscope",names(ext))
names(ext) <- gsub("Mag","Magnitude",names(ext))
names(ext) <- gsub("\\.\\.","",names(ext))
names(ext) <- gsub("BodyBody","Body",names(ext))

#5. Output the average of each variable for each group
ave <- ext %>% group_by(activity, subject) %>% 
  summarize_all("mean")
write.table(ave, file="./output.txt", row.name=FALSE)