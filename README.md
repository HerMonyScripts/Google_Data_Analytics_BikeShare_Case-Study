# Google_Data_Analytics_BikeShare_Case-Study
This repository is about my Google Data Analytics capstone project.

**Course:** [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone/home/module/1)

## **INTRODUCTION**

I am to work as a junior data analyst for a fictictional company, Cyclistic, along with other some key team members. I am to perform a data anaylsis using the company's annual dataset to help the company attract more riders.
I will be adopting the six (6) phases of data analysis, which includes: the [Ask](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/edit/main/README.md#ask-phase), [Prepare](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/edit/main/README.md#prepare-phase), [Process](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/edit/main/README.md#process-phase), [Analyze](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/edit/main/README.md#analyze-phase), Share and Act phases in other to answer the business question.

## **CASE STUDY**
### **Scenario**
You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, your team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.
### About The Company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.


Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the
flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.
Customers who purchase annual memberships are Cyclistic members.


Cyclistic’s finance analysts have concluded that annual members are much more profitable
than casual riders. Although the pricing flexibility helps Cyclistic attract more customers,
Moreno believes that maximizing the number of annual members will be key to future growth.


Rather than creating a marketing campaign that targets all-new customers, Moreno believes
there is a solid opportunity to convert casual riders into members. She notes that casual riders
are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into
annual members. In order to do that, however, the team needs to better understand how
annual members and casual riders differ, why casual riders would buy a membership, and how
digital media could affect their marketing tactics. Moreno and her team are interested in
analyzing the Cyclistic historical bike trip data to identify trends.
### Ask Phase
It is of utmost importance understand the business task or the question to be answered. In this case study, below are the three questions/business tasks that will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?
### Prepare Phase
I’ll be working with Cyclistic’s historical trip data [_here_](https://divvy-tripdata.s3.amazonaws.com/index.html). I’ll be working with 12 Months of the Cyclistic’s data history, from Jan - Dec 2021 to analyze and identify trends.

_Disclaimer:_ The data has been made available by Motivate International Inc. under this [_license_](https://divvybikes.com/data-license-agreement)

The datasets downloaded are all zipped files, before I’ll be able to use them, I’ll have to unzip the files by extracting the files to a different folder, in order for the datasets not to get mixed up with other files, I created a separate folder specifically for the datasets titled _Divvy Bike Share Case Study_. This will help in keeping the files organized.

Here:
<img width="2560" height="1440" alt="Screenshot (62)" src="https://github.com/user-attachments/assets/99f26a99-8a83-44ae-83fe-8f5387b38467" />

For readability and clarity purposes, especially for other team members, I had to rename the files using the below format:  
`Divvy_2021_01.csv  <-  202101_divvy_tripdata.csv`  
`Divvy_2021_02.csv  <-  202102_divvy_tripdata.csv`  
`Divvy_2021_03.csv  <-  202103_divvy_tripdata.csv`  
`Divvy_2021_04.csv  <-  202104_divvy_tripdata.csv`  
And so on...
### Process Phase
Considering the bulkiness of the dataset, using spreadsheet is out of the picture as it won’t be able to handle a sheer amount of the dataset. So, for this reason, I opted out for RStudio instead.  
**Note:** I’ll be working with the RStudio desktop, as the memory of the free Posit.Cloud is not enough to accommodate all the 12 months files.

_Disclaimer:_ In the console, each line that starts with #, only indicates it’s a comment, it is for clarity sake and not in any way a line of code.  
To get started, I’ll start by installing and loading the necessary packages required for this process, and this packages includes: Tidyverse, Lubridate, and Janitor.  
[Packages.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Packages.R)  
Note: I also loaded the “readr” package as it is essential for importing of the files.

Subsequently, I’ll have to import the files into our RStudio using the read_csv function. For more clarity, I’ll be renaming the dataframes while importing.  
<img width="1369" height="526" alt="Screenshot (63)" src="https://github.com/user-attachments/assets/957eb622-553f-4bfa-9d15-a6c4889d65b0" />


Next would be to check the structure of our dataset using the str() function. This is crucial as I would be merging all the csv files into one table called dataframe. So, I need to check if there’s any inconsistencies in the formatting (maybe a dataset’s ID column being formatted as “int” and the other formatted as “chr”.  
The 12 datasets need to have the same column names and formatting type. Also, I need to check if there are any wrongly formatted data types.

The str() function will help list the structures of the datasets:  
<img width="1399" height="462" alt="Screenshot (64)" src="https://github.com/user-attachments/assets/c76fe080-1efb-485f-8ea2-36fa99c1b696" />

The result is the following:
<img width="1389" height="1117" alt="Screenshot (65)" src="https://github.com/user-attachments/assets/aa6c32a8-69fe-400c-a75b-3f76c6d9b9b1" />

There are eight (8) more outputs of the above but to reduce clutter, I had to show just the above two (2).
From what you can see above, the columns ID’s are identical and well formatted so no transformation whatsoever is needed here.

Now my datasets are ready to be merged into one dataframe and I’ll be naming it Merged_Divvy2021 and to achieve that I’ll be using the bind_rows() function.  
[Data Merging.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Data%20Merging.R)  

Checking the structure of the new dataframe is important. Below is the result:
<img width="1402" height="693" alt="Screenshot (66)" src="https://github.com/user-attachments/assets/08dde2ac-ef39-458b-9d04-e50f665c274a" />


After the merging, following the steps as provided in the case study guide, I’ll need to do more extra cleaning. I need to clean my column names to remove extra spaces, parentheses, camelCase, e.t.c.
[Data Cleaning.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Data%20Cleaning.R)

At this point, it is crucial to revisit the business track. This helps one stay on track and not drift off from what is being asked. After going through the business task and also from the steps provided in the case study guide, creating new columns is required to be able to answer the business question. Therefore, I’ll go ahead and create the following columns:  
1. Month
2. Trip Duration
3. Start hour
4. Day of the week
[Added Columns.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Added%20Columns.R)

After processing the datasets, I’ll go ahead and clean one last time. This is to remove any bad data and my main focus is on the Trip_duration column. 
I'll go ahead and remove trips that are less 1 minute and those more than 24 hours (1440 mins) [Data Cleaning.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Data%20Cleaning.R)  
I went ahead to check the cleaned data by using the "summary" function.

<img width="1369" height="251" alt="Screenshot (69)" src="https://github.com/user-attachments/assets/1a271dd3-9fcf-4ce7-a63a-720ddb14da99" />




From here, I can now go ahead and export my summary file for further analysis. I’ll be using it to create more visualization in Tableau, though I'll still create some in R. I export the dataframe using the write.csv() function.

`write.csv(Cleaned_Divvy2021, file = “Cyclistic_Divvy2021.csv”)`
### Analyze Phase
Now it’s time to analyze the data and look for key information needed to perform analysis, and afterward, visualize it!

In order to answer the first business question - how do casual and annual members using Cyclistic differently. It would be of great help to do some plotting from the information in our dataset. 

**Analyzing Bike Usage Patterns**  
**Weekly Usage:** Compare how casual riders and annual members utilize bikes on different days of the week.  
**Hourly Usage Throughout the Week:** Identify the busiest times of day for bike usage for both user types.  
**Monthly Usage:** Examine how bike usage fluctuates throughout the year.  
**Trip Duration:** Determine the average trip length for casual riders versus members.  
**Popular Stations:** Pinpoint the most frequently used stations for both casual and annual users.

**Key Insights**  
Analyzing these visualizations will provide insights into the distinct behaviors of casual and member riders. For instance, you might discover that casual riders use bikes primarily on weekends for leisure, while members use them for daily commutes during the week. Understanding these differences is crucial for developing targeted marketing strategies to convert casual riders into annual members.  
For the plotting, I’ll be utilizing the ggplot2() package in R.  
[Analysis & Visualization.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/blob/main/Analysis%20%26%20Visualization.R)

**Visuals:**
![Rplot01](https://github.com/user-attachments/assets/3ae77e26-4e99-4961-9071-b7e1df454f2a)





