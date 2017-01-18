 
#The data table package is used toward the end of this program.
#install.packages("data.table")
library("data.table")

#setwd("C:/Coursera/Course_3/run_analysis")

#Section 1.Combine test and  train data

#1A. Read in the test data and assign variable names. Also, inlcude activity and volunteer.

feature_names<-read.table("features.txt")

#Read in test data and assign variable names.
x_test<-read.table("X_test.txt")
names(x_test)<-feature_names[,2]

#Read in activity data and assign varible names
y_test <- read.table("y_test.txt")
labels<-read.table("activity_labels.txt")
y_test<-merge(y_test,labels,by="V1")
names(y_test)<-c("Activity","Activity_Description")

#Read in subject data and assign variable names.
subject_test<-read.table("subject_test.txt")
names(subject_test)<-"Subject"

#Combine all three previous data sets into one large data set of test data.
test_data<-cbind(subject_test,y_test,x_test)

#Section 2. Read in the train data and assign variable names. Also, inlcude activity and volunteer.

#Read in train data and assign variable names.
x_train<-read.table("X_train.txt")
names(x_train)<-feature_names[,2]

#Read in train activity data and assign varible names
y_train <- read.table("y_train.txt")
y_train<-merge(y_train,labels,by="V1")
names(y_train)<-c("Activity","Activity_Description")


#Read in subject train data and assign variable names.
subject_train<-read.table("subject_train.txt")
names(subject_train)<-"Subject"

#Combine all three previous data sets into one large data set of test data.
train_data<-cbind(subject_train,y_train,x_train)

#Combine both train_data and test_data together.
train_test_data<-rbind(train_data,test_data)
train_test_data$Activity<-NULL

#Section 3. Extract only the measurements of mean and standard deviation.
extract_data<-grep("Subject|Activity|mean|std",names(train_test_data))
tidy_data<-train_test_data[extract_data] 

#Output the tidy data frame to the user's work directory.  
write.table(tidy_data,file="./tidy_data.txt",row.name=FALSE)

#Section 4. Create an average of each variable by activity and each subject.
tidy_dt<-data.table(tidy_data)
tidy_data_avg<-tidy_dt[,lapply(.SD,mean),by=c("Subject","Activity_Description")]
tidy_data_avg<-tidy_data_avg[order(tidy_data_avg$Subject),]

#Output the tidy data with averages to the user's work directory. 
write.table(tidy_data_avg,file="./tidy_data_avg.txt",row.name=FALSE)



