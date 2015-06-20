# GettingCleaningDataProject
Course Project for Getting &amp; Cleaning Data

The run_analysis.R script should be downloaded to the same directory in which
the UCI HAR Dataset (with the exact name "UCI HAR Dataset") is located. 

If the run_analysis.R script is not located in the same enclosing directory as
the UCI HAR Dataset, the dataset will be downloaded and unzipped from the web. 

First, the analysis script reads each raw data file into individual data 
frames.  Then, the script will assign variable names to the test and training
data.  Using these variable names, run_analysis.R will merge training and test
data into one data frame. After the data is merged, unnecessary variables
are removed.

With the merged data (object name "data"), run_analysis.R will subset the
data, selecting only variable columns with mean or standard deviation values.
This subsetted data is stored as a new data frame, called "consolidata". 

Within this subsetted training/test data, a column for descriptive
activity names is added via a for loop. 

Finally, mean values of each variable for each activity are calculated and 
stored in a new data frame, called "datameans".  This data set is ordered
by subject and is output as a .txt file.  

