# CodeBook

The "Mean and Std by Subject and Activity" data set contains average 
measurements of mean and standard deviation raw accelerometer and gyrometer data from the UCI HAR Dataset. The "test" and "training" datasets have been merged into one dataset with subject and activity labels. After merging data sets, the mean value of each variable for each subject and activity was extracted into the final tidy data set. 

### Information from the "Human Activity Recognition Using Smartphones Dataset" files:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


### The variables in the dataset are described below:

Accelearation units are m/s^2^<br>
Gyrometer units are m/s

"subject" - id of the subject completing various activities<br>
"activity" - the activity the subject is completing<br>
"tBodyAcc-mean()-X" - body acceleration mean in the "x" direction<br>
"tBodyAcc-mean()-Y" - body acceleration mean in the "y" direction<br>
"tBodyAcc-mean()-Z" - body acceleration mean in the "z" direction<br>
"tBodyAcc-std()-X" - body acceleration standard dev in the "x" direction<br>
"tBodyAcc-std()-Y" - body acceleration standard dev in the "y" direction<br>
"tBodyAcc-std()-Z" - body acceleration standard dev in the "z" direction<br>
"tGravityAcc-mean()-X" - gravity acceleration mean in the "x" direction<br>
"tGravityAcc-mean()-Y" - gravity acceleration mean in the "y" direction<br>
"tGravityAcc-mean()-Z" - gravity acceleration mean in the "z" direction<br>
"tGravityAcc-std()-X" - gravity acceleration standard dev in the "x" direction<br>
"tGravityAcc-std()-Y" - gravity acceleration standard dev in the "y" direction<br>
"tGravityAcc-std()-Z" - gravity acceleration standard dev in the "z" direction<br>
"tBodyAccJerk-mean()-X" - body jerk mean in the "x" direction<br>
"tBodyAccJerk-mean()-Y" - body jerk mean in the "y" direction<br>
"tBodyAccJerk-mean()-Z" - body jerk mean in the "z" direction<br>
"tBodyAccJerk-std()-X" - body jerk standard dev in the "x" direction<br>
"tBodyAccJerk-std()-Y" - body jerk standard dev in the "y" direction<br>
"tBodyAccJerk-std()-Z" - body jerk standard dev in the "z" direction<br>
"tBodyGyro-mean()-X" - body gyrometer mean in the "x" direction<br>
"tBodyGyro-mean()-Y" - body gyrometer mean in the "y" direction<br>
"tBodyGyro-mean()-Z" - body gyrometer mean in the "z" direction<br>
"tBodyGyro-std()-X" - body gyrometer standard dev in the "x" direction<br>
"tBodyGyro-std()-Y" - body gyrometer standard dev in the "y" direction<br>
"tBodyGyro-std()-Z" - body gyrometer standard dev in the "z" direction<br>
"tBodyGyroJerk-mean()-X" - body gyrometer jerk mean in the "x" direction<br>
"tBodyGyroJerk-mean()-Y" - body gyrometer jerk mean in the "y" direction<br>
"tBodyGyroJerk-mean()-Z" - body gyrometer jerk mean in the "z" direction<br>
"tBodyGyroJerk-std()-X" - body gyrometer jerk std in the "x" direction<br>
"tBodyGyroJerk-std()-Y" - body gyrometer jerk std in the "y" direction<br>
"tBodyGyroJerk-std()-Z" - body gyrometer jerk mean in the "z" direction<br>
"tBodyAccMag-mean()" - body acceleration magnitude mean <br>
"tBodyAccMag-std()" - body acceleration magnitude std <br>
"tGravityAccMag-mean()" - gravity acceleration magnitude mean <br>
"tGravityAccMag-std()" - gravity acceleration magnitude std <br>
"tBodyAccJerkMag-mean()" - body acceleration jerk magnitude mean <br>
"tBodyAccJerkMag-std()" - body acceleration jerk magnitude std <br>
"tBodyGyroMag-mean()" - body gyrometer magnitude mean <br>
"tBodyGyroMag-std()" - body gyrometer magnitude std <br>
"tBodyGyroJerkMag-mean()" - body gyrometer jerk magnitude mean <br>
"tBodyGyroJerkMag-std()" - body gyrometer jerk magnitude mean <br>
"fBodyAcc-mean()-X" - frequency domain body acceleration mean "x"<br>
"fBodyAcc-mean()-Y" - frequency domain body acceleration mean "y"<br>
"fBodyAcc-mean()-Z" - frequency domain body acceleration mean "z"<br>
"fBodyAcc-std()-X" - frequency domain body acceleration std "x"<br>
"fBodyAcc-std()-Y" - frequency domain body acceleration std "y"<br>
"fBodyAcc-std()-Z" - frequency domain body acceleration std "z"<br>
"fBodyAcc-meanFreq()-X" - frequencyd domain body acceleration mean "x"<br>
"fBodyAcc-meanFreq()-Y" - frequency domain body acceleration mean "y"<br>
"fBodyAcc-meanFreq()-Z" - frequency domain body acceleration mean "z"<br>
"fBodyAccJerk-mean()-X" - frequency domain body acceleration jerk mean "x"<br>
"fBodyAccJerk-mean()-Y" - frequency domain body acceleration jerk mean "y"<br>
"fBodyAccJerk-mean()-Z" - frequency domain body acceleration jerk mean "z"<br>
"fBodyAccJerk-std()-X" - frequency domain body acceleration jerk std "x"<br>
"fBodyAccJerk-std()-Y" - frequency domain body acceleration jerk std "y"<br>
"fBodyAccJerk-std()-Z" - frequency domain body acceleration jerk std "z"<br>
"fBodyAccJerk-meanFreq()-X" - body acceleration jerk mean frequency "x"<br>
"fBodyAccJerk-meanFreq()-Y" - body acceleration jerk mean frequency "y"<br>
"fBodyAccJerk-meanFreq()-Z" - body acceleration jerk mean frequency "z"<br>
"fBodyGyro-mean()-X" - frequency domain body gyrometer mean "x"<br>
"fBodyGyro-mean()-Y" - frequency domain body gyrometer mean "y"<br>
"fBodyGyro-mean()-Z" - frequency domain body gyrometer mean "z"<br>
"fBodyGyro-std()-X" - frequency domain body gyrometer std "x"<br>
"fBodyGyro-std()-Y" - frequency domain body gyrometer std "y"<br>
"fBodyGyro-std()-Z" - frequency domain body gyrometer mean "z"<br>
"fBodyGyro-meanFreq()-X" - frequency domain body gyrometer mean frequency "x"<br>
"fBodyGyro-meanFreq()-Y" - frequency domain body gyrometer mean frequency "y"<br>
"fBodyGyro-meanFreq()-Z" - frequency domain body gyrometer mean frequncy "z"<br>
"fBodyAccMag-mean()" - frequency domain body acceleration magnitude mean<br>
"fBodyAccMag-std()" - frequency domain body acceleration magnitude std <br>
"fBodyAccMag-meanFreq()" - frequency domain body acceleration mean frequency<br>
"fBodyBodyAccJerkMag-mean()" - frequency body acceleration jerk magnitude mean<br>
"fBodyBodyAccJerkMag-std()" - FF body acceleration jerk magnitude std<br>
"fBodyBodyAccJerkMag-meanFreq()" - body acceleration jerk magnitude mean freq<br>
"fBodyBodyGyroMag-mean()" - frequency domain body gyrometer mean magnitude<br>
"fBodyBodyGyroMag-std()" - frequency domain body gyrometer magnitude std<br>
"fBodyBodyGyroMag-meanFreq()" - frequency domain body gyrometer mean frequency<br>
"fBodyBodyGyroJerkMag-mean()" - FF body gyrometer mean jerk magnitude <br>
"fBodyBodyGyroJerkMag-std()" - FF body gyrometer jerk magnitude std<br>
"fBodyBodyGyroJerkMag-meanFreq()" - FF gyrometer jerk magnitude mean frequency<br>
"angle(tBodyAccMean,gravity)" - angle between body acceleration and gravity<br>
"angle(tBodyAccJerkMean),gravityMean)" - angle between jerk and gravity<br>
"angle(tBodyGyroMean,gravityMean)" - angle between gyro and gravity<br>
"angle(tBodyGyroJerkMean,gravityMean)" - angle between gyro jerk and gravity<br>
"angle(X,gravityMean)" - X angle<br>
"angle(Y,gravityMean)" - Y angle<br>
"angle(Z,gravityMean)" - Z angle<br>

### References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
