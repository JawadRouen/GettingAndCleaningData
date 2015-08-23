
#download and unzip
urlzip <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(urlzip, "UCI HAR Dataset.zip")
unzip("UCI HAR Dataset.zip")
rm(list = urlzip)