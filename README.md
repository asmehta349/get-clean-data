#The run_analysis.R script assumes that all required R packages (e.g., plyr, etc.) are already installed and loaded.

##Steps taken in the script to clean and analyze the data:

1. Set the working directory to the root folder and create a tidyDataProject directory if it does not exist.
2. Download the data file in the tidyDataProject directory and unzip the data file.
3. Read different source files containing data into different data frames as follows:
	* **activityData <- activity_labels.txt**
	* **featuresData <- features.txt**
	* **subjectTestData <- subject_test.txt**
	* **xTestData <- X_test.txt**
	* **yTestData <- y_test.txt**
	* **subjectTrainData <- subject_train.txt**
	* **xTrainData <- X_train.txt**
	* **yTrainData <- y_train.txt**
4. Combine test and train data into a single data frame first using column bind and then row bind.
5. Assign column names to each column of the combined data frame (combinedData).
6. Extract subject, activity, all mean, and all standard deviation columns from the combinedData data frame and store in a new data frame (subsetData).
7. Assign activity labels to each activity in the subsetData data frame.
8. Use gsub function to make the column names more descriptive.
9. Use ddply to create a tidy data set (tidyData) that contains the average of each variable for each activity and each subject.
10. Use the write.table function to write tidyData to a text file (tidyData.txt).

##Sources used:
1. Several discussion threads in the Getting and Cleaning Data course site.
2. Several discussion threads at StackOverflow.com.
3. Several R package help files.