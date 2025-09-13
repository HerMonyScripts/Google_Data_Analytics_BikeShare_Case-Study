# Google_Data_Analytics_BikeShare_Case-Study
This repository is about my Google Data Analytics capstone project.

**Course:** [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone/home/module/1)

# **INTRODUCTION**

I am to work as a junior data analyst for a fictictional company, Cyclistic, along with other some key team members. I am to perform a data anaylsis using the company's annual dataset to help the company attract more riders.
I will be adopting the six (6) phases of data analysis, which includes: the Ask, Prepare, Process, Analyse, Share and Act phases in other to answer the business question.

# **CASE STUDY**
# **Scenario**
You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, your team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.
# About The Company
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
# Ask Phase
It is of utmost importance understand the business task or the question to be answered. In this case study, below are the three questions/business tasks that will guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?
# Prepare Phase
I’ll be working with Cyclistic’s historical trip data [_here_](https://divvy-tripdata.s3.amazonaws.com/index.html). I’ll be working with 12 Months of the Cyclistic’s data history, from Jan - Dec 2021 to analyze and identify trends.

_Disclaimer:_ The data has been made available by Motivate International Inc. under this [_license_](https://divvybikes.com/data-license-agreement)

The datasets downloaded are all zipped files, before I’ll be able to use them, I’ll have to unzip the files by extracting the files to a different folder, in order for the datasets not to get mixed up with other files, I created a separate folder specifically for the datasets titled _Divvy Bike Share Case Study_. This will help in keeping the files organized.

Here:
<img width="2560" height="1440" alt="Screenshot (62)" src="https://github.com/user-attachments/assets/99f26a99-8a83-44ae-83fe-8f5387b38467" />

For readability and clarity purposes, especially for other team members, I had to rename the files using the below format:  
Divvy_2021_01.csv  <-  202101_divvy_tripdata.csv  
Divvy_2021_02.csv  <-  202102_divvy_tripdata.csv  
Divvy_2021_03.csv  <-  202103_divvy_tripdata.csv  
Divvy_2021_04.csv  <-  202104_divvy_tripdata.csv  
And so on...
# Process Phase
Considering the bulkiness of the dataset, using spreadsheet is out of the picture as it won’t be able to handle a sheer amount of the dataset. So, for this reason, I opted out for RStudio instead.  
**Note:** I’ll be working with the RStudio desktop, as the memory of the free Posit.Cloud is not enough to accommodate all the 12 months files.

_Disclaimer:_ In the console, each line that starts with #, only indicates it’s a comment, it is for clarity sake and not in any way a line of code.  
To get started, I’ll start by installing and loading the necessary packages required for this process, and this packages includes: Tidyverse, Lubridate, and Janitor.  

` # Installing packages `  
`install.packages("tidyverse")`  
`install.packages("lubridate")`  
`install.packages("janitor")`


