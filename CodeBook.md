DATA DICTIONARY for the file tidydata.txt 


These data is produced based on the Samsung train and test data merged in the same file.
Extract only the measurements on the mean and standard deviation for each measurement. To this purpose, we kept only columns with names that contain 'mean()' or 'std()'.
Use activity label file to name the activities in the data set.
Review the labels of data set by cleaning and adding information to the columns names.
Finally, we create a new tidy data set with the average of each variable for each activity and each subject.

Here are the columns description:

activitylabel - Activity practised by the subject
subjectidentifier - Subject Identifier
timebodyaccelerometermeanx - In time unit: Body Accelerometer Mean value on axial X direction
timebodyaccelerometermeany - In time unit: Body Accelerometer Mean value on axial Y direction
timebodyaccelerometermeanz - In time unit: Body Accelerometer Mean value on axial Z direction
timebodyaccelerometerstdx - In time unit: Body Accelerometer Standard deviation on axial X direction
timebodyaccelerometerstdy - In time unit: Body Accelerometer Standard deviation on axial Y direction
timebodyaccelerometerstdz - In time unit: Body Accelerometer Standard deviation on axial Z direction
timegravityaccelerometermeanx - In time unit: Gravity Accelerometer Mean value on axial X direction
timegravityaccelerometermeany - In time unit: Gravity Accelerometer Mean value on axial Y direction
timegravityaccelerometermeanz - In time unit: Gravity Accelerometer Mean value on axial Z direction
timegravityaccelerometerstdx - In time unit: Gravity Accelerometer Standard deviation on axial X direction
timegravityaccelerometerstdy - In time unit: Gravity Accelerometer Standard deviation on axial Y direction
timegravityaccelerometerstdz - In time unit: Gravity Accelerometer Standard deviation on axial Z direction
timebodyaccelerometerjerkmeanx - In time unit: Body Accelerometer Jerk Mean value on axial X direction
timebodyaccelerometerjerkmeany - In time unit: Body Accelerometer Jerk Mean value on axial Y direction
timebodyaccelerometerjerkmeanz - In time unit: Body Accelerometer Jerk Mean value on axial Z direction
timebodyaccelerometerjerkstdx - In time unit: Body Accelerometer Jerk Standard deviation on axial X direction
timebodyaccelerometerjerkstdy - In time unit: Body Accelerometer Jerk Standard deviation on axial Y direction
timebodyaccelerometerjerkstdz - In time unit: Body Accelerometer Jerk Standard deviation on axial Z direction
timebodygyroscopemeanx - In time unit: Body Gyroscope Mean value on axial X direction
timebodygyroscopemeany - In time unit: Body Gyroscope Mean value on axial Y direction
timebodygyroscopemeanz - In time unit: Body Gyroscope Mean value on axial Z direction
timebodygyroscopestdx - In time unit: Body Gyroscope Standard deviation on axial X direction
timebodygyroscopestdy - In time unit: Body Gyroscope Standard deviation on axial Y direction
timebodygyroscopestdz - In time unit: Body Gyroscope Standard deviation on axial Z direction
timebodygyroscopejerkmeanx - In time unit: Body Gyroscope Jerk Mean value on axial X direction
timebodygyroscopejerkmeany - In time unit: Body Gyroscope Jerk Mean value on axial Y direction
timebodygyroscopejerkmeanz - In time unit: Body Gyroscope Jerk Mean value on axial Z direction
timebodygyroscopejerkstdx - In time unit: Body Gyroscope Jerk Standard deviation on axial X direction
timebodygyroscopejerkstdy - In time unit: Body Gyroscope Jerk Standard deviation on axial Y direction
timebodygyroscopejerkstdz - In time unit: Body Gyroscope Jerk Standard deviation on axial Z direction
timebodyaccelerometermagnitudemean - In time unit: Body Accelerometer Magnitude Mean value
timebodyaccelerometermagnitudestd - In time unit: Body Accelerometer Magnitude Standard deviation
timegravityaccelerometermagnitudemean - In time unit: Gravity Accelerometer Magnitude Mean value
timegravityaccelerometermagnitudestd - In time unit: Gravity Accelerometer Magnitude Standard deviation
timebodyaccelerometerjerkmagnitudemean - In time unit: Body Accelerometer Jerk Magnitude Mean value
timebodyaccelerometerjerkmagnitudestd - In time unit: Body Accelerometer Jerk Magnitude Standard deviation
timebodygyroscopemagnitudemean - In time unit: Body Gyroscope Magnitude Mean value
timebodygyroscopemagnitudestd - In time unit: Body Gyroscope Magnitude Standard deviation
timebodygyroscopejerkmagnitudemean - In time unit: Body Gyroscope Jerk Magnitude Mean value
timebodygyroscopejerkmagnitudestd - In time unit: Body Gyroscope Jerk Magnitude Standard deviation
frequencebodyaccelerometermeanx - In frequence unit: Body Accelerometer Mean value on axial X direction
frequencebodyaccelerometermeany - In frequence unit: Body Accelerometer Mean value on axial Y direction
frequencebodyaccelerometermeanz - In frequence unit: Body Accelerometer Mean value on axial Z direction
frequencebodyaccelerometerstdx - In frequence unit: Body Accelerometer Standard deviation on axial X direction
frequencebodyaccelerometerstdy - In frequence unit: Body Accelerometer Standard deviation on axial Y direction
frequencebodyaccelerometerstdz - In frequence unit: Body Accelerometer Standard deviation on axial Z direction
frequencebodyaccelerometerjerkmeanx - In frequence unit: Body Accelerometer Jerk Mean value on axial X direction
frequencebodyaccelerometerjerkmeany - In frequence unit: Body Accelerometer Jerk Mean value on axial Y direction
frequencebodyaccelerometerjerkmeanz - In frequence unit: Body Accelerometer Jerk Mean value on axial Z direction
frequencebodyaccelerometerjerkstdx - In frequence unit: Body Accelerometer Jerk Standard deviation on axial X direction
frequencebodyaccelerometerjerkstdy - In frequence unit: Body Accelerometer Jerk Standard deviation on axial Y direction
frequencebodyaccelerometerjerkstdz - In frequence unit: Body Accelerometer Jerk Standard deviation on axial Z direction
frequencebodygyroscopemeanx - In frequence unit: Body Gyroscope Mean value on axial X direction
frequencebodygyroscopemeany - In frequence unit: Body Gyroscope Mean value on axial Y direction
frequencebodygyroscopemeanz - In frequence unit: Body Gyroscope Mean value on axial Z direction
frequencebodygyroscopestdx - In frequence unit: Body Gyroscope Standard deviation on axial X direction
frequencebodygyroscopestdy - In frequence unit: Body Gyroscope Standard deviation on axial Y direction
frequencebodygyroscopestdz - In frequence unit: Body Gyroscope Standard deviation on axial Z direction
frequencebodyaccelerometermagnitudemean - In frequence unit: Body Accelerometer Magnitude Mean value
frequencebodyaccelerometermagnitudestd - In frequence unit: Body Accelerometer Magnitude Standard deviation
frequencebodyaccelerometerjerkmagnitudemean - In frequence unit: Body Accelerometer Jerk Magnitude Mean value
frequencebodyaccelerometerjerkmagnitudestd - In frequence unit: Body Accelerometer Jerk Magnitude Standard deviation
frequencebodygyroscopemagnitudemean - In frequence unit: Body Gyroscope Magnitude Mean value
frequencebodygyroscopemagnitudestd - In frequence unit: Body Gyroscope Magnitude Standard deviation
frequencebodygyroscopejerkmagnitudemean - In frequence unit: Body Gyroscope Jerk Magnitude Mean value
frequencebodygyroscopejerkmagnitudestd - In frequence unit: Body Gyroscope Jerk Magnitude Standard deviation
