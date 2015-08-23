
####################################################################################################
#question 1 : Merges the training and the test sets to create one data set
####################################################################################################

setwd("UCI HAR Dataset")

#read features and activities labels
featlbs <- read.table("features.txt")
actlbs <- read.table("activity_labels.txt")
names(actlbs) <- c("activityidentifier","activitylabel")

# read train files
setwd("train")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")
sbjtrain <- read.table("subject_train.txt")
setwd("..")
# merge fetaures with activity code and subject ID
train <- cbind(xtrain,ytrain,sbjtrain)
rm(list = c("sbjtrain","ytrain","xtrain"))

#read test files
setwd("test")
xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")
sbjtest <- read.table("subject_test.txt")
setwd("..")

# merge fetaures with activity code and subject ID
test <- cbind(xtest,ytest,sbjtest)
rm(list = c("sbjtest","ytest","xtest"))

# merge train and test data
fulldata <- rbind(train,test)
dimcol <- ncol(fulldata)

#remove the unuseful variables
rm(list = c("train","test"))

#add columns names to the data
colnames(fulldata) <- c(as.character(featlbs$V2),"activityidentifier", "subjectidentifier")

####################################################################################################
#question 2 : Extracts only the measurements on the mean and standard deviation for each measurement
####################################################################################################

# keep only the features containing "mean()" and "std()"
fts <- grep("mean\\(\\)|std\\(\\)", featlbs$V2)

# select the columns from the initial data set and add "activityidentifier", "subjectidentifier" columns
mean_std_data <- subset(fulldata, select = c(dimcol-1,dimcol,fts))

####################################################################################################
#question 3 : Uses descriptive activity names to name the activities in the data set
####################################################################################################

mean_std_data <- merge(actlbs, mean_std_data, by.x = 1, by.y = 1)

####################################################################################################
#question 4 : Appropriately labels the data set with descriptive variable names
####################################################################################################

names(mean_std_data) <- gsub("Acc","accelerometer", names(mean_std_data))
names(mean_std_data) <- gsub("Gyro","gyroscope", names(mean_std_data))
names(mean_std_data) <- gsub("Mag","magnitude", names(mean_std_data))
names(mean_std_data) <- gsub("Freq","frequence", names(mean_std_data))
names(mean_std_data) <- gsub("BodyBody","body", names(mean_std_data))
names(mean_std_data) <- gsub("\\(\\)|-","", names(mean_std_data))
names(mean_std_data) <- tolower(names(mean_std_data))
names(mean_std_data) <- gsub("^f","frequence", names(mean_std_data))
names(mean_std_data) <- gsub("^t","time", names(mean_std_data))

####################################################################################################
#question 5 : create independent tidy data set with the average of each variable 
#             for each activity and each subject
####################################################################################################

# use reshape2 package
library(reshape2)

# determine all the variables names to average
vars_to_average <- names(mean_std_data)[,4:ncol(mean_std_data)]

# insert the activity and subject columns names in the var ids
ids <- names(mean_std_data)[1:3]

# melt the mean_std_data into a new data set  
varmeans <- melt(mean_std_data,id = ids, mesures.vars = vars_to_average)

# decat the new data set by requesting the mean
tidydata <- dcast(varmeans,activitylabel + subjectidentifier ~ variable, mean)


# Extract the tidy data
write.table(tidydata,"tidydata.txt",row.name=FALSE)
setwd("..")


# Cleaning the env
rm(list = ls())
