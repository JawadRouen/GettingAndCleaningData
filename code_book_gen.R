# read the tidat.txt file
setwd("UCI HAR Dataset")
tidydata <- read.csv("tidydata.txt",sep = " ")

# read the columns names of the tidy data
description <-  names(tidydata)
description <- gsub("activitylabel", "Activity practised by the subject", description)
description <- gsub("subjectidentifier", "Subject Identifier", description)
description <- gsub("^time", "In time unit:", description)
description <- gsub("^frequence", "In frequence unit:", description)
description <- gsub("body"," Body", description)
description <- gsub("accelerometer", " Accelerometer", description)
description <- gsub("gyroscope"," Gyroscope", description)
description <- gsub("magnitude"," Magnitude", description)
description <- gsub("gravity"," Gravity", description)
description <- gsub("jerk"," Jerk", description)
description <- gsub("x$", " on axial X direction", description)
description <- gsub("y$", " on axial Y direction", description)
description <- gsub("z$", " on axial Z direction", description)
description <- gsub("mean", " Mean value", description)
description <- gsub("std", " Standard deviation", description)


# merging the col names with the description
codebook <- t(rbind(names(tidydata),description))


# write the content of the codebook in the file "CodeBook.md"
write.table("DATA DICTIONARY for the file tidydata.txt \n\n", "CodeBook.md", 
            quote = FALSE, row.names = FALSE, col.names = FALSE)

write.table("These data is produced based on the Samsung train and test data merged in the same file.
Extract only the measurements on the mean and standard deviation for each measurement. To this purpose, we kept only columns with names that contain 'mean()' or 'std()'.
Use activity label file to name the activities in the data set.
Review the labels of data set by cleaning and adding information to the columns names.
Finally, we create a new tidy data set with the average of each variable for each activity and each subject.\n
Here are the columns description:\n", "CodeBook.md", 
            quote = FALSE, row.names = FALSE, col.names = FALSE, append = TRUE)

write.table(codebook, "CodeBook.md", quote = FALSE, row.names = FALSE, 
            col.names = FALSE, sep = " - ", append = TRUE)
setwd("..")
rm(list = ls())
