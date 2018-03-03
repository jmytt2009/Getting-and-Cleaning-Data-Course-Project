# run_analysis.R
library(dplyr)
feature<-read.table("features.txt",stringsAsFactors = FALSE,
                    header = FALSE)
# select only mean and std features
fSel<-filter(feature,grepl("mean|std",feature$V2))
activity<-read.table("activity_labels.txt",stringsAsFactors = FALSE,
                     header = FALSE)

colnames(activity)<-c("activity_id","activity")
# read train data
train_subject<-read.table("train/subject_train.txt",header = FALSE)
train_activity<-read.table("train/y_train.txt",header = FALSE)
train_feature<-read.table("train/X_train.txt",header = FALSE)[,fSel$V1]
# Add header
colnames(train_subject)<-c("subject_id")
colnames(train_activity)<-c("activity_id")
colnames(train_feature)<-gsub("-","_",gsub("\\(\\)","",fSel$V2))
# merge activity description
train_activity<-merge(x=train_activity,y=activity,by = "activity_id", all.x = TRUE)
train<-cbind(cbind(train_subject,activity = train_activity$activity),train_feature)

# read test data
test_subject<-read.table("test/subject_test.txt",header = FALSE)
test_activity<-read.table("test/y_test.txt",header = FALSE)
test_feature<-read.table("test/X_test.txt",header = FALSE)[,fSel$V1]
# Add header
colnames(test_subject)<-c("subject_id")
colnames(test_activity)<-c("activity_id")
colnames(test_feature)<-gsub("-","_",gsub("\\(\\)","",fSel$V2))
# merge activity description
test_activity<-merge(x=test_activity,y=activity,by = "activity_id", all.x = TRUE)
test<-cbind(cbind(test_subject,activity = test_activity$activity),test_feature)

# merge train and test
all_data<-rbind(train,test)
# summarise
mean_data <- all_data %>% group_by(activity,subject_id) %>% 
  summarise_all(.funs = c(mean="mean"))

write.table(x = all_data, file = "activity_dataset.txt")
write.table(x = mean_data, file = "mean_dataset.txt")