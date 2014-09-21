# Set the initial working directory
setwd("/")

# Create the tidyDataProject directory if it does not exist
if(!file.exists("tidyDataProject")) {
    dir.create("tidyDataProject")
}

# Change the working directory to tidyDataProject directory
setwd("./tidyDataProject")

# Download and unzip the data file if it does not exist
if(!file.exists("HAR_Dataset.zip")){
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "./HAR_Dataset.zip", mode = "wb")
    unzip("./HAR_Dataset.zip")
}

# Change the working directory to the unzipped data directory
setwd("./UCI HAR Dataset")

# Read data files into data frames
activityData <- read.table("./activity_labels.txt", header = FALSE, stringsAsFactors = FALSE)
featuresData <- read.table("./features.txt", header = FALSE, stringsAsFactors = FALSE)
subjectTestData <- read.table("./test/subject_test.txt", header = FALSE, stringsAsFactors = FALSE)
xTestData <- read.table("./test/X_test.txt", header = FALSE, stringsAsFactors = FALSE)
yTestData <- read.table("./test/y_test.txt", header = FALSE, stringsAsFactors = FALSE)
subjectTrainData <- read.table("./train/subject_train.txt", header = FALSE, stringsAsFactors = FALSE)
xTrainData <- read.table("./train/X_train.txt", header = FALSE, stringsAsFactors = FALSE)
yTrainData <- read.table("./train/y_train.txt", header = FALSE, stringsAsFactors = FALSE)

# Combine the data first by columns across related files and then by rows of test and train data
combinedTestData <- cbind(subjectTestData,yTestData,xTestData)
combinedTrainData <- cbind(subjectTrainData,yTrainData,xTrainData)
combinedData <- rbind(combinedTestData,combinedTrainData)

# Add column names for the combined data
colnames(combinedData) <- c("Subject","Activity",featuresData[,2])

# Extract Subject, Activity, mean, and standard deviation columns
extractColumns <- grep("Subject|Activity|mean\\(\\)|std\\(\\)",names(combinedData))
subsetData <- combinedData[,extractColumns]

# Set the activity name for each activity value
for (i in 1:length(activityData$V1)) {
    subsetData$Activity[subsetData$Activity == activityData$V1[i]] <- activityData$V2[i]
}

# Make column names more descriptive 
search <- c("^t","^f","BodyBody","Gyro","Acc","std\\(\\)","mean\\(\\)","-")
replace <- c("time", "frequency", "body", "gyroscope", "accelerometer", "standarddeviation", "meanvalue", "")
for (i in 1:length(search)){
    names(subsetData) <- gsub(search[i], replace[i], names(subsetData))
}
names(subsetData) <- tolower(names(subsetData))

# Create a tidy data set with the average of each variable for each activity and each subject
tidyData <- ddply(subsetData, .(subject,activity), numcolwise(mean))

# Prepend avg to all numeric columns in the tidy data set
names(tidyData) <- gsub("^time", "avgtime", names(tidyData))
names(tidyData) <- gsub("^frequency", "avgfrequency", names(tidyData))

# Write the tidy data set to a file
write.table(tidyData, file = "/tidyDataProject/tidyData.txt", row.names = FALSE)
