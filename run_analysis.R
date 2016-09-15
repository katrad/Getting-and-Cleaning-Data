#Step1: Load the dplyr library 
library(dplyr)

#Step2: Read all the data requried for our analysis
features <- read.table("features.txt",sep=" ",header=FALSE,stringsAsFactors=FALSE)
activitylabels <- read.table("activity_labels.txt"," ",header=FALSE,stringsAsFactors=FALSE)
subjecttrain <- read.table("train\\subject_train.txt",header=FALSE)
Xtrain <- read.table("train\\X_train.txt",header=FALSE)
Ytrain <- read.table("train\\Y_train.txt",header=FALSE)
subjecttest <- read.table("test\\subject_test.txt",sep=" ",header=FALSE)
Xtest <- read.table("test\\X_test.txt",header=FALSE)
Ytest <- read.table("test\\Y_test.txt",header=FALSE)

#Step3: Change column names on the activity set
colnames(activitylabels) <- c("V1","activity")

#Work on train related data
#Step4: Change the column name of subject data set
subjecttrain <- rename(subjecttrain,subject=V1)

#Step5: bind activity and subject for training data
train <- cbind(Ytrain, subjecttrain)
train <- merge(train,activitylabels, by=("V1"))

#Step6: name columns of Xtrain dataset
colnames(Xtrain) <- features[,2]

#Step7: now merge all the three together i.e. Ytrain, activitylabels, Xtrain
train <- cbind(train,Xtrain)

#Step8: remove the first column which is reduntant as replaced activity id with names
train <- train[,-1]

#Step9:
#let us select only the columns of interest. subject, activity, all columns that has mean() or std() for this exercise. 
#I purpose fully left out the columns that do not () next to mean or std. We can easily include them if required by taking out the ().
train <- select(train,contains("subject"), contains("activity"), contains("mean()"), contains("std()"))

#Step10: Let us work on the test data set
subjecttest <- rename(subjecttest,subject=V1)

#Step11: bind activity and subject for test data
test <- cbind(Ytest, subjecttest)
test <- merge(test,activitylabels, by=("V1"))

#Step12: name columns of Xtest dataset
colnames(Xtest) <- features[,2]

#Step13: now merge all the three together i.e. Ytest, activitylabels, Xtest
test <- cbind(test,Xtest)

#Step14: remove the first column which is reduntant as replaced activity id with names
test <- test[,-1]

#Step15:
#let us select only the columns of interest. subject, activity, all columns that has mean() or std() for this exercise. 
#I purpose fully left out the columns that do not () next to mean or std. We can easily include them if required by taking out the ().
test <- select(test,contains("subject"), contains("activity"), contains("mean()"), contains("std()"))

#Step16: Now it is time to combin both data sets and run our analysis
#bind both data sets
combineddata <- rbind(train,test)

#Step17: Rename variables name to be meaningful names (as much as possible)
#We will use the following principle(from week4) to name the variables.
#Names of variables
#	All lower case when possible
#	Descriptive - We will stick to the names that came with the original set without the special characters, since we have features_info providing more information
#	Not duplicated
#	Not have underscores or dots or white spaces
cnames <- colnames(combineddata)
#Remove characters "() _ " from the name
cnames <- gsub("[[:punct:]]","",cnames)
#Reset the column names with the good names
colnames(combineddata) <- cnames

#Step18: Summarize the data as per the requirement of this exercise
result <- (combineddata%>%
            group_by(subject,activity) %>%
                summarise_each(funs( mean))) %>%

#Step19: Print the results
print(result)

#Step20: Write the data to a table
write.table(result,"./run_analysis.txt",sep=" ",row.name=FALSE) 
