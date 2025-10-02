# Descriptive Analysis
# Number of rides per day of the week
Cleaned_df %>%
  group_by(member_casual, Day_of_week) %>%
  summarise(number_of_rides = n()) %>%
  arrange(member_casual, Day_of_week)

# Number of rides by bike type
Cleaned_df %>%
  group_by(member_casual, rideable_type) %>%
  summarise(number_of_rides = n())

# Top 10 most popular start stations for casual riders
Cleaned_df %>%
  filter(member_casual == "casual") %>%
  group_by(start_station_name) %>%
  summarise(number_of_starts = n()) %>%
  arrange(desc(number_of_starts)) %>%
  head(10)

# Top 10 most popular start stations for member riders
Cleaned_df %>%
  filter(member_casual == "member") %>%
  group_by(start_station_name) %>%
  summarise(number_of_starts = n()) %>%
  arrange(desc(number_of_starts)) %>%
  head(10)

# Plotting using ggplot2() function
# Weekly Usage by Member Type
ggplot(data = Cleaned_Divvy2021) +
  geom_bar(mapping = aes(x = Day_of_week, fill = member_casual), position = "dodge") +
  labs(title = "Weekly Usage by Member Type") +
  scale_y_continuous(labels = label_number(accuracy = 1))

# Hourly Usage Throughout the Week
ggplot(data = Cleaned_Divvy2021) +
  geom_bar(mapping = aes(x = Start_hour, fill = member_casual)) +
  facet_wrap(~Day_of_week) +
  labs(title = "Hourly Usage Throughout the Week") +
  scale_y_continuous(labels = label_number(accuracy = 1))
