# Getting-and-Cleaning-Data

## Codebook.md 
Codebook for the project, with information about the data, analysis, output and execution steps.
## run_analysis.R 
Script that has the code to combine the data sets and prepares a tidy data file
### Steps used in the script
- Step1: Load the dplyr library 
- Step2: Read all the data requried for our analysis
- Step3: Change column names on the activity set
- Step4: 
	- Work on train related data
	- Change the column name of subject data set
- Step5: bind activity and subject for training data
- Step6: name columns of Xtrain dataset
- Step7: now merge all the three together i.e. Ytrain, activitylabels, Xtrain
- Step8: remove the first column which is reduntant as replaced activity id with names
- Step9:
	- let us select only the columns of interest. subject, activity, all columns that has mean() or std() for this exercise. 
	- I purpose fully left out the columns that do not () next to mean or std. We can easily include them if required by taking out the ().
- Step10: Let us work on the test data set
- Step11: bind activity and subject for test data
- Step12: name columns of Xtest dataset
- Step13: now merge all the three together i.e. Ytest, activitylabels, Xtest
- Step14: remove the first column which is reduntant as replaced activity id with names
- Step15:
	- let us select only the columns of interest. subject, activity, all columns that has mean() or std() for this exercise. 
	- I purpose fully left out the columns that do not () next to mean or std. We can easily include them if required by taking out the ().
- Step16: Now it is time to combin both data sets and run our analysis
	- bind both data sets
- Step17: Rename variables name to be meaningful names (as much as possible)
	- We will use the following principle(from week4) to name the variables.
	- Names of variables
		- All lower case when possible
		- Descriptive - We will stick to the names that came with the original set without the special characters, since we have features_info providing more information
		- Not duplicated
		- Not have underscores or dots or white spaces
	- Remove characters "() _ " from the name
	- Reset the column names with the good names
- Step18: Summarize the data as per the requirement of this exercise
- Step19: Print the results
- Step20: Write the data to a table

## run_analysis.txt 
Sample Tidy data generated by the script
