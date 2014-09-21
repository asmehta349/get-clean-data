###Variables used in the script

1. **fileUrl**: The URL of the UCI HAR dataset zip file
2. **activityData**: A data frame with different types of activities
3. **featuresData**: A data frame of different activity measurements
4. **subjectTestData**: A data frame of different test subjects
5. **xTestData**: A data frame of test activities measurements
6. **yTestData**: A data frame of different test activities
7. **subjectTrainData**: A data frame of different training subjects
8. **xTrainData**: A data frame of training activities measurements 
9. **yTrainData**: A data frame of different training activities
10. **combinedTestData**: A combined data frame with subjectTestData, xTestData, and yTestData data values
11. **combinedTrainData**: A combined data frame with subjectTrainData, xTrainData, and yTrainData data values
12. **combinedData**: A combined data frame with test and training data
13. **extractColumns**: An integer vector of column locations of combinedData data frame
14. **subsetData**: A data frame with subject, activity, mean, and standard deviation columns extracted from the combinedData data frame
15. **search**: A vector of character values to search in the column names of subsetData data frame
16. **replace**: A vector of character values to substitute in the column names of subsetData data frame
17. **tidyData**: A data frame based on the values of subsetData data frame that contains the average of each variable for each activity and each subject


###Data definitions

1. **subject**: The integer IDs of 30 different volunteers used in this experiment                                              
2. **activity**: Character values of six different activities performed for this experiment                                         
3. **avgtimebodyaccelerometermeanvaluex**: Numerical average of tBodyAcc-mean()-X data for each subject and activity
4. **avgtimebodyaccelerometermeanvaluey**: Numerical average of tBodyAcc-mean()-Y data for each subject and activity
5. **avgtimebodyaccelerometermeanvaluez**: Numerical average of tBodyAcc-mean()-Z data for each subject and activity
6. **avgtimebodyaccelerometerstandarddeviationx**: Numerical average of tBodyAcc-std()-X data for each subject and activity
7. **avgtimebodyaccelerometerstandarddeviationy**: Numerical average of tBodyAcc-std()-Y data for each subject and activity
8. **avgtimebodyaccelerometerstandarddeviationz**: Numerical average of tBodyAcc-std()-Z data for each subject and activity
9. **avgtimegravityaccelerometermeanvaluex**: Numerical average of tGravityAcc-mean()-X data for each subject and activity
10. **avgtimegravityaccelerometermeanvaluey**: Numerical average of tGravityAcc-mean()-Y data for each subject and activity
11. **avgtimegravityaccelerometermeanvaluez**: Numerical average of tGravityAcc-mean()-Z data for each subject and activity
12. **avgtimegravityaccelerometerstandarddeviationx**: Numerical average of tGravityAcc-std()-X data for each subject and activity
13. **avgtimegravityaccelerometerstandarddeviationy**: Numerical average of tGravityAcc-std()-Y data for each subject and activity
14. **avgtimegravityaccelerometerstandarddeviationz**: Numerical average of tGravityAcc-std()-Z data for each subject and activity
15. **avgtimebodyaccelerometerjerkmeanvaluex**: Numerical average of tBodyAccJerk-mean()-X data for each subject and activity
16. **avgtimebodyaccelerometerjerkmeanvaluey**: Numerical average of tBodyAccJerk-mean()-Y data for each subject and activity
17. **avgtimebodyaccelerometerjerkmeanvaluez**: Numerical average of tBodyAccJerk-mean()-Z data for each subject and activity
18. **avgtimebodyaccelerometerjerkstandarddeviationx**: Numerical average of tBodyAccJerk-std()-X data for each subject and activity
19. **avgtimebodyaccelerometerjerkstandarddeviationy**: Numerical average of tBodyAccJerk-std()-Y data for each subject and activity
20. **avgtimebodyaccelerometerjerkstandarddeviationz**: Numerical average of tBodyAccJerk-std()-Z data for each subject and activity
21. **avgtimebodygyroscopemeanvaluex**: Numerical average of tBodyGyro-mean()-X data for each subject and activity
22. **avgtimebodygyroscopemeanvaluey**: Numerical average of tBodyGyro-mean()-Y data for each subject and activity
23. **avgtimebodygyroscopemeanvaluez**: Numerical average of tBodyGyro-mean()-Z data for each subject and activity
24. **avgtimebodygyroscopestandarddeviationx**: Numerical average of tBodyGyro-std()-X data for each subject and activity
25. **avgtimebodygyroscopestandarddeviationy**: Numerical average of tBodyGyro-std()-Y data for each subject and activity
26. **avgtimebodygyroscopestandarddeviationz**: Numerical average of tBodyGyro-std()-Z data for each subject and activity
27. **avgtimebodygyroscopejerkmeanvaluex**: Numerical average of tBodyGyroJerk-mean()-X data for each subject and activity
28. **avgtimebodygyroscopejerkmeanvaluey**: Numerical average of tBodyGyroJerk-mean()-Y data for each subject and activity
29. **avgtimebodygyroscopejerkmeanvaluez**: Numerical average of tBodyGyroJerk-mean()-Z data for each subject and activity
30. **avgtimebodygyroscopejerkstandarddeviationx**: Numerical average of tBodyGyroJerk-std()-X data for each subject and activity
31. **avgtimebodygyroscopejerkstandarddeviationy**: Numerical average of tBodyGyroJerk-std()-Y data for each subject and activity
32. **avgtimebodygyroscopejerkstandarddeviationz**: Numerical average of tBodyGyroJerk-std()-Z data for each subject and activity
33. **avgtimebodyaccelerometermagmeanvalue**: Numerical average of tBodyAccMag-mean() data for each subject and activity
34. **avgtimebodyaccelerometermagstandarddeviation**: Numerical average of tBodyAccMag-std() data for each subject and activity
35. **avgtimegravityaccelerometermagmeanvalue**: Numerical average of tGravityAccMag-mean() data for each subject and activity
36. **avgtimegravityaccelerometermagstandarddeviation**: Numerical average of tGravityAccMag-std() data for each subject and activity
37. **avgtimebodyaccelerometerjerkmagmeanvalue**: Numerical average of tBodyAccJerkMag-mean() data for each subject and activity
38. **avgtimebodyaccelerometerjerkmagstandarddeviation**: Numerical average of tBodyAccJerkMag-std() data for each subject and activity
39. **avgtimebodygyroscopemagmeanvalue**: Numerical average of tBodyGyroMag-mean() data for each subject and activity
40. **avgtimebodygyroscopemagstandarddeviation**: Numerical average of tBodyGyroMag-std() data for each subject and activity
41. **avgtimebodygyroscopejerkmagmeanvalue**: Numerical average of tBodyGyroJerkMag-mean() data for each subject and activity
42. **avgtimebodygyroscopejerkmagstandarddeviation**: Numerical average of tBodyGyroJerkMag-std() data for each subject and activity
43. **avgfrequencybodyaccelerometermeanvaluex**: Numerical average of fBodyAcc-mean()-X data for each subject and activity
44. **avgfrequencybodyaccelerometermeanvaluey**: Numerical average of fBodyAcc-mean()-Y data for each subject and activity
45. **avgfrequencybodyaccelerometermeanvaluez**: Numerical average of fBodyAcc-mean()-Z data for each subject and activity
46. **avgfrequencybodyaccelerometerstandarddeviationx**: Numerical average of fBodyAcc-std()-X data for each subject and activity
47. **avgfrequencybodyaccelerometerstandarddeviationy**: Numerical average of fBodyAcc-std()-Y data for each subject and activity
48. **avgfrequencybodyaccelerometerstandarddeviationz**: Numerical average of fBodyAcc-std()-Z data for each subject and activity
49. **avgfrequencybodyaccelerometerjerkmeanvaluex**: Numerical average of fBodyAccJerk-mean()-X data for each subject and activity
50. **avgfrequencybodyaccelerometerjerkmeanvaluey**: Numerical average of fBodyAccJerk-mean()-Y data for each subject and activity
51. **avgfrequencybodyaccelerometerjerkmeanvaluez**: Numerical average of fBodyAccJerk-mean()-Z data for each subject and activity
52. **avgfrequencybodyaccelerometerjerkstandarddeviationx**: Numerical average of fBodyAccJerk-std()-X data for each subject and activity
53. **avgfrequencybodyaccelerometerjerkstandarddeviationy**: Numerical average of fBodyAccJerk-std()-Y data for each subject and activity
54. **avgfrequencybodyaccelerometerjerkstandarddeviationz**: Numerical average of fBodyAccJerk-std()-Z data for each subject and activity
55. **avgfrequencybodygyroscopemeanvaluex**: Numerical average of fBodyGyro-mean()-X data for each subject and activity
56. **avgfrequencybodygyroscopemeanvaluey**: Numerical average of fBodyGyro-mean()-Y data for each subject and activity
57. **avgfrequencybodygyroscopemeanvaluez**: Numerical average of fBodyGyro-mean()-Z data for each subject and activity
58. **avgfrequencybodygyroscopestandarddeviationx**: Numerical average of fBodyGyro-std()-X data for each subject and activity
59. **avgfrequencybodygyroscopestandarddeviationy**: Numerical average of fBodyGyro-std()-Y data for each subject and activity
60. **avgfrequencybodygyroscopestandarddeviationz**: Numerical average of fBodyGyro-std()-Z data for each subject and activity
61. **avgfrequencybodyaccelerometermagmeanvalue**: Numerical average of fBodyAccMag-mean() data for each subject and activity
62. **avgfrequencybodyaccelerometermagstandarddeviation**: Numerical average of fBodyAccMag-std() data for each subject and activity
63. **avgfrequencybodyaccelerometerjerkmagmeanvalue**: Numerical average of fBodyBodyAccJerkMag-mean() data for each subject and activity
64. **avgfrequencybodyaccelerometerjerkmagstandarddeviation**: Numerical average of fBodyBodyAccJerkMag-std() data for each subject and activity
65. **avgfrequencybodygyroscopemagmeanvalue**: Numerical average of fBodyBodyGyroMag-mean() data for each subject and activity
66. **avgfrequencybodygyroscopemagstandarddeviation**: Numerical average of fBodyBodyGyroMag-std() data for each subject and activity
67. **avgfrequencybodygyroscopejerkmagmeanvalue**: Numerical average of fBodyBodyGyroJerkMag-mean() data for each subject and activity
68. **avgfrequencybodygyroscopejerkmagstandarddeviation**: Numerical average of fBodyBodyGyroJerkMag-std() data for each subject and activity


### Data transformations

1. Subject, activity ID, and measurement data for test and training experiments were sourced from different text files.
2. A combined data frame was created including all subject, activity ID, and measurement values.
3. The subject, activity, all mean, and all standard deviation columns were extracted from the combined data frame into another data frame (subsetData).
4. The activity IDs in the subsetData data frame were changed to actual activity title.
5. The column names for different measurements were renamed to make them more descriptive as follows:
	* "^t" replaced with "time"
	* "^f" replaced with "frequency"
	* "BodyBody" replaced with "body"
	* "Gyro" replaced with "gyroscope"
	* "Acc" replaced with "accelerometer"
	* "std()" replaced with "standarddeviation"
	* "mean()" replace with "meanvalue"
	* "-" (hyphen) replaced with ""
	* all column names switched to lowercase
5. Average of different measurements was calculated for each subject and activity and stored in a new data frame (tidyData).
6. The tidyData column names were changed to represent average values as follows:
	* "^time" replaced with "avgtime"
	* "^frequency" replaced with "avgfrequency"