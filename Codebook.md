#Programming Assignment for Getting and Cleansing Data. 

##Tidying data collected from the accelerometers from the Samsung Galaxy S smartphone.

###Background 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Raw Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Link to the Rawdata: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Processed data 
To contain the computed average of the mean and standard deviation based on subject and activity using data extracted from both training and test set, with activity clearly labelled. Each record in the tidy dataset contains the following fields (68). "mean" in the name suggests that the column has the average mean and "std" has average standard deviation. 

| Num  | Variable List |
| ---- | ------------- |
| 1 | subject |
| 2 | activity | 
| 3 | tBodyAccmeanX | 
| 4 | tBodyAccmeanY |
| 5 | tBodyAccmeanZ |
| 6 | tGravityAccmeanX |
| 7 | tGravityAccmeanY |
| 8 | tGravityAccmeanZ |
| 9 | tBodyAccJerkmeanX |
| 10 | tBodyAccJerkmeanY |
| 11 | tBodyAccJerkmeanZ |
| 12 | tBodyGyromeanX |
| 13 | tBodyGyromeanY |
| 14 | tBodyGyromeanZ |
| 15 | tBodyGyroJerkmeanX |
| 16 | tBodyGyroJerkmeanY |
| 17 | tBodyGyroJerkmeanZ |
| 18 | tBodyAccMagmean |
| 19 | tGravityAccMagmean |
| 20 | tBodyAccJerkMagmean |
| 21 | tBodyGyroMagmean |
| 22 | tBodyGyroJerkMagmean |
| 23 | fBodyAccmeanX |
| 24 | fBodyAccmeanY |
| 25 | fBodyAccmeanZ |
| 26 | fBodyAccJerkmeanX |
| 27 | fBodyAccJerkmeanY |
| 28 | fBodyAccJerkmeanZ |
| 29 | fBodyGyromeanX |
| 30 | fBodyGyromeanY |
| 31 | fBodyGyromeanZ |
| 32 | fBodyAccMagmean |
| 33 | fBodyBodyAccJerkMagmean |
| 34 | fBodyBodyGyroMagmean |
| 35 | fBodyBodyGyroJerkMagmean |
| 36 | tBodyAccstdX |
| 37 | tBodyAccstdY |
| 38 | tBodyAccstdZ |
| 39 | tGravityAccstdX |
| 40 | tGravityAccstdY |
| 41 | tGravityAccstdZ |
| 42 | tBodyAccJerkstdX |
| 43 | tBodyAccJerkstdY |
| 44 | tBodyAccJerkstdZ |
| 45 | tBodyGyrostdX |
| 46 | tBodyGyrostdY |
| 47 | tBodyGyrostdZ |
| 48 | tBodyGyroJerkstdX |
| 49 | tBodyGyroJerkstdY |
| 50 | tBodyGyroJerkstdZ |
| 51 | tBodyAccMagstd |
| 52 | tGravityAccMagstd |
| 53 | tBodyAccJerkMagstd |
| 54 | tBodyGyroMagstd |
| 55 | tBodyGyroJerkMagstd |
| 56 | fBodyAccstdX |
| 57 | fBodyAccstdY |
| 58 | fBodyAccstdZ |
| 59 | fBodyAccJerkstdX |
| 60 | fBodyAccJerkstdY |
| 61 | fBodyAccJerkstdZ |
| 62 | fBodyGyrostdX |
| 63 | fBodyGyrostdY |
| 64 | fBodyGyrostdZ |
| 65 | fBodyAccMagstd |
| 66 | fBodyBodyAccJerkMagstd |
| 67 | fBodyBodyGyroMagstd |
| 68 | fBodyBodyGyroJerkMagstd |
  
###Procedure
1. Download and unzip the file using the link provided under "Raw Data", which should create a folder "UCI HAR Dataset"
2. Use the "run_analysis.R" script from the GIT
3. Launch R-Studio
4. Set the working folder to setwd("C:\\UCI HAR Dataset"). Assuming if you unzipped the files to the C drive. If not, set an appropriate folder
5. source("run_analysis.R"), which will create a file called "run_analysis.txt"
6. To open and view the file, copy and paste the commands below.
	- res <- read.table("run_analysis.txt", header=TRUE)
	- View(res)
 