# ----------
#Statistics Package Exercise: Exploring Variables in a Dataset
#To view the dataset
depression

#To only view the age information
depression$Age

#We will recode the variable gender with the labels "Male" and "Female"
depression$Gender = replace(depression$Gender,depression$Gender==1,'Female');
depression$Gender = replace(depression$Gender,depression$Gender==2,'Male');
depression$Gender

#Q. What are the categorical variables in this dataset?
# Hospt - The number describes which hospital is being referred to
# Treatment - What was the treatment given to them
# Outcome - What was the outcome of the treatment, successful or not
# Gender - It represents either male or female

#Q. What are the qunatitative variables in this dataset?
# Time - The data can be recorded at multiple times with arithmetic meaning
# AcuteT - Represent a unique characteristic of patient which is non recurring
# Age - Patients can have random age which is unique for every patient

# ----------
#Statistics Package Exercise 2 : Tallying Data and Creating Pie Charts
friends

#To view the data in a tabulated form
t = table(friends$Friends)
t

#To see proportion of each category
prop = prop.table(t)
prop

#To see percentage of each category
per = prop.table(t)*100
per

#To make a pie chart
pie(t)

#Making modifications to our prercent table to make a more informative plot
pf = round(per, 1)
pf

lbl = paste(c("No difference","Opposite sex","Same sex"),pf,"%",sep=" ");
lbl

pie(t, label = lbl)

#Q. Describe the distribution of the variable "friends" in dataset.
# The students are NOT divided equally among the three categories. 
# About 50% of the students find it as easy to make friends with the opposite sex as with the same sex. 
# Among the remaining 50% of the students, the majority (36.2%) find it easier to make friends with people of the opposite sex. 
# The remainder (13.7%) find it easier to make friends with people of their own sex.

# ----------
#Statistics Package Exercise: Creating and Describing Histograms
actor_age

#To make a histogram of the data
hist(actor_age$Age)

#Modifying the histogram
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", main="")
hist(actor_age$Age, xlab="Age of Best Actor Oscar Winners (1970-2013)", 
     ylab="Number of Actors", 
     main="Best Actor Oscar Winners Ages")
hist(actor_age$Age, breaks=8, 
     xlab="Age of Best Actor Oscar Winners (1970-2013)", 
     main="")

#Q. Describe the distribution of the ages of the Best Actor Oscar winners. 
#   Be sure to address shape, center, spread and outliers.
#
# Shape - The data is skewed to the right, most winners are relatively young aged
# Center - The data is centered about 43.5, that means half people are over it, and half are under it
# Spread - The data is spread across from 30 years to 75 years.
# Outliers - The data has only one outlier around the age of 75

# ----------
# Statistics Package Exercise: Interpreting The Five Number Summary
actor_age

#Finding summary of the age column
summary(actor_age)

#Finding Statistical values of the data
mean(actor_age$Age)
sd(actor_age$Age)
median(actor_age$Age)
IQR(actor_age$Age)
min(actor_age$Age)
max(actor_age$Age)
length(actor_age$Age)
quantile(actor_age$Age,0.25)
quantile(actor_age$Age, 0.75)
range(actor_age$Age)

# List the statistical properties of the data
# No. of Observations = 44 || Mean = 44.98 || Min = 29 || Max = 76 || Median = 43.5
# Range = 47 || Inter Quartile Range = 12.25

# ----------
# Statistics Package Exercise: Creating Side-by-Side Boxplots
grad_data
summary(grad_data)

#Plotting a boxplot to see graduation data of 6 colleges
boxplot(grad_data)

#Modifying the grad_data boxplot
boxplot(grad_data, xlab="Colleges",
        ylab ="Graduation Rates", 
        main="Comparison of Graduation Rates")
boxplot(grad_data, horizontal=TRUE, 
        ylab="Colleges",
        xlab ="Graduation Rates", 
        main="Comparison of Graduation Rates")

# ----------
# Statistics Package Exercise: Calculating the Standard Deviation
ratings

#Calculating the standard deviation of each column
sapply(ratings, sd)

#Q. What are the standard deviations of all the classes?
# Class I - 1.57 || Class II - 4 || Class III - 2.63

#Q. Assume that the average rating in each of the three classes is 5. 
#   Judging from the table and the histograms, which class would have the largest standard deviation? 
#   And which one would have the smallest standard deviation? Explain your reasoning.
#
# In class I, almost all the ratings are 5, which is also the mean. The average distance between the observations and the mean, then, would be very small. 
# In class II most of the observations are far from the mean (at 1 or 9). The average distance between the observations and the mean in this case would be larger. 
# Class III is the case where some of the observations are close to the mean, and some are far, so the average distance between the observations and the mean would be somewhere in between class I and II.
# Ranking of Std. Dev from smallest to largest - 
# Class I - Class III - Class II



