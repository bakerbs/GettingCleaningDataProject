## checking to see if dataset is located in working directory.
## if dataset is not located in working directory,
## dataset is downloaded and unzipped. 
if(!file.exists("./UCI HAR Dataset")){
        fileURL <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip"
        download.file(url=fileURL, 
                      destfile="./UCI HAR Dataset.zip", 
                      method="curl")
        unzip("UCI HAR Dataset.zip")
}


## after checking and (possibly) downloading data to the UCI HAR Dataset
## file, we'll direct our working directory to the Dataset. 
setwd("./UCI HAR Dataset")


## reading training data into data frames
activities <- read.table(file="activity_labels.txt", quote="")
features <- read.table(file="features.txt", quote="")
y.trainingdata <- read.table(file="./train/y_train.txt", quote="")
x.trainingdata <- read.table(file="./train/X_train.txt", quote="")
sub.trainingdata <- read.table(file="./train/subject_train.txt",
                               quote="")

## reading test data into data frames
y.testdata <- read.table(file="./test/y_test.txt", quote="")
x.testdata <- read.table(file="./test/X_test.txt", quote="")
sub.testdata <- read.table(file="./test/subject_test.txt",
                               quote="")

## assigning column names to the x.trainingdata and x.testdata raw files 
## as the variables being measured
colnames(x.trainingdata) <- as.character(features$V2)
colnames(x.testdata) <- as.character(features$V2)
training <- rep.int("training", nrow(x.trainingdata))
test <- rep.int("test", nrow(x.testdata))

## merge data sets
trainingdata <- data.frame(test.train = training, subject = sub.trainingdata, 
                      activity = y.trainingdata, x.trainingdata)
testdata <- data.frame(test.train = test, subject = sub.testdata, 
                  activity = y.testdata, x.testdata)
data <- rbind(trainingdata, testdata)
rm(x.testdata, x.trainingdata, testdata, trainingdata, 
   y.testdata, y.trainingdata, sub.testdata, sub.trainingdata)

## subsetting by partial matching of training data variable names
## if part of the variable name contains "mean" or "std", the grep()
## function adds the row index to 'meanindex' or 'stdindex'
meanindex <- grep("mean", colnames(data), ignore.case=TRUE)
stdindex <- grep("std", colnames(data))
index <- sort(append(meanindex, stdindex))
consolidata <- data[ , c(1:3, index)]


## assigning column names to first 3 columns
colnames(consolidata)[1] <- "training/test"
colnames(consolidata)[2] <- "subject"
colnames(consolidata)[3] <- "activity"


## updating the activity column with descriptive names
activity <- character()
for(i in 1:nrow(consolidata)){
        n <- consolidata$activity[i]
        activity[i] <- as.character(activities$V2[n])
} 
consolidata$activity <- activity


## pulling mean data into a new dataset by subject number and activity 
acts <- unique(consolidata$activity)
sub <- sort(unique(consolidata$subject))
datameans <- data.frame()
submeans <- data.frame()

for(l in 1:length(sub)){        
for(j in 4:ncol(consolidata)){        
for(i in 1:length(acts)){
submeans[i, 1] <- sub[l]
submeans[i, 2] <- acts[i]
submeans[i, j-1] <- mean(consolidata[which(consolidata$activity == acts[i] & consolidata$subject == sub[l]), 
                                  j])
}
}
datameans <- rbind(datameans, submeans)
}

## rename columns to descriptive names 
colnames(datameans)[1:2] <- c("subject", "activity")
colnames(datameans)[3:88] <- as.character(features$V2[index-3])

## remove unnecessary data
rm(submeans, features, activities, activity, acts, index, 
   meanindex, stdindex, sub, test, training, i, j, l, n)

setwd("..")
write.table(datameans, 
            file="Mean and Std by Subject and Activity.txt", 
            row.names=FALSE)
