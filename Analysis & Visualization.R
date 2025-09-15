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
