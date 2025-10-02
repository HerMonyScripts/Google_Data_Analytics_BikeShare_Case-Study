# Cleaning and removing spaces, parentheses, camelCases, etc.
Merged_Divvy2021 <- clean_names(Merged_Divvy2021)

# Remove trips less than 1 minutes or longer than 24 hours (1440 mins)
Cleaned_Divvy2021 <- Merged_Divvy2021 %>%
  filter(Trip_duration > 1 & Trip_duration < 1440)

# A check of the cleaned data
summary(Cleaned_Divvy2021$Trip_duration)
