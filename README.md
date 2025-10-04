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

From here, I can now go ahead and export my summary file for further analysis. I’ll be using it to create more visualization in Tableau, though I'll still create some in R. I exported the dataframe using the write.csv() function.

`write.csv(Cleaned_df, file = “Cyclistic2021.csv”)`

### Analyze & Share Phase (RStudio)
Now it’s time to analyze the data and look for key information needed to perform analysis, and afterward, visualize it!

In order to answer the first business question - how do casual and annual members using Cyclistic differently. I will carry out a descriptive analysis. [Analysis & Visualization.R](https://github.com/HerMonyScripts/Google_Data_Analytics_BikeShare_Case-Study/edit/main/Analysis%20%26%20Visualization.R)  

Few of the results:  
<img width="1378" height="128" alt="Screenshot (75)" src="https://github.com/user-attachments/assets/fa1a91c5-046a-471b-83e2-b32e8ebd3de8" />  
<img width="1387" height="525" alt="Screenshot (76)" src="https://github.com/user-attachments/assets/f1b78bc3-6d4b-45d1-bc0c-00b695c1854e" />  
<img width="1375" height="223" alt="Screenshot (76)" src="https://github.com/user-attachments/assets/0be0f5f5-10b9-4019-9340-e40ace358ced" />

To create the visuals/plots, I'll be using the _ggplot()_ function in RStudio

![Rplot05](https://github.com/user-attachments/assets/bac55884-f38c-4d86-830d-3aeb39138108)

![Rplot06](https://github.com/user-attachments/assets/aea61aa2-46ab-4260-9709-99d010d86202)

![Rplot07](https://github.com/user-attachments/assets/43c350bd-6c33-4753-a42e-2f274fb4101d)

From the above analysis and visuals, we can already determine how differently casual and annual members uses Cyclistic bikes.

## Analyze & Share (Tableau)  
Visualization: [Tableau](https://public.tableau.com/app/profile/harmony.akah/viz/CyclisticBikeCapstoneProject/Avgtripdurationbymembertype#1)

Just a refresh to the business task: we're asked to determine how casual riders and annual members uses Cyclistic bikes differently.  
Below are some visualizations I created using Tableau that answers the business question:  

<img width="1998" height="1598" alt="Total Usage by member type (1)" src="https://github.com/user-attachments/assets/c38c40f0-4168-4c36-a1a6-523b9abea306" />

The above picture is a dashboard comprising of different charts I created.  
In the first chart: _**Weekly Usage by Member Type**_, you'll notice that the ride count among annual members are fairly stable during weekday and also higher than that of casual riders and decline over the weekend, having casual riders topping. This would only indicate that there is a high possibility that annual members are using Cyclistic bikes for commuting.  

Also, a close look at the third chart: _**Hourly Usage of bike throughout the Week**_(Note: I created the chart in way one can read the performance of each day(s) selected). Notice that I checked weekdays only, apparantly, annual members are topping and also observe that annual members riders are the toppest by 8am and 5pm. This only strengthened our prediction that annual members are majorly using Cyclstic bikes for communiting.  

On the other hand, ride count among casual members are fairly low during weekdays, and starts going up from Friday and peaks on Saturdays.  
Then from the second chart: _**Number of rides in a month**_, it shows that the major period casual riders uses Cyclistic bikes are between June to September with a peak in June.

<img width="1998" height="1598" alt="Avg trip duration by member type" src="https://github.com/user-attachments/assets/f28496f0-6996-46c3-8ddc-ffa534099bac" />  

The above shows that casual riders cycles more than annual members do. Also, it shows that the average length of the annuals members are almost the same throughout the year, while that of casual riders varies.

<img width="2112" height="874" alt="Trip comparison by member type" src="https://github.com/user-attachments/assets/c0cf40d3-1daa-47d0-a5aa-24f291bc5ed8" />

From the above plots, we can deduce that annual members made the most trips far way than casual riders, but shockingly, the total trip duration of the casual members are almost X2 of that of annual members.

To further understand how casual riders and annual members uses Cyclistic bikes differently, I went ahead and analysed the top 20 start station between both members.  
<img width="1718" height="796" alt="20 Populations between casual   annual members" src="https://github.com/user-attachments/assets/9da0db1c-c364-4d00-9217-094b725c8888" />

Note: The above are the top 20 popular stations among annual members, to see that of casual riders, check the casual button.

<img width="1718" height="786" alt="Rideable type by member type" src="https://github.com/user-attachments/assets/c6c59a51-3608-460c-ad35-8f2e3f31eb57" />
The above shows that annual members uses more of classic_bike, followed by electric_bike, and docked_bike are common among casual riders, in fact, docked bikes are been used by casual riders only.

#### ACT PHASE
**Top Three Findings:**
Usage Purpose: Casual riders take significantly longer, more leisurely rides, with usage peaking on weekends. This suggests they use the bikes for recreation and tourism. Members take shorter, more frequent rides, with high usage on weekdays, suggesting use for commuting.

Location: The most popular stations for casual riders are concentrated near parks, lakefronts, and tourist attractions. Member-popular stations are in residential and business districts.

Seasonality: While both user types prefer warmer months, the trend is more pronounced for casual riders, reinforcing the idea of recreational use.

**Actionable Recommendations:**
Based on these findings, here are three recommendations for the marketing team:  
1. Create a "Weekend Warrior" Membership.  
**Why:** Casual riders are most active on weekends.  
**How:** Offer a discounted annual membership that provides added benefits for weekend rides or create a lower-cost "weekend-only" pass. Market this at popular tourist-heavy stations.

2. Implement a Loyalty Program for Longer Rides.
  ** Why:** Casual riders enjoy long, scenic rides.
   **How:** Create a membership tier that rewards riders with points or discounts for longer-duration rides, turning their recreational habit into a reason to subscribe.





