# Adding needed columns for analysis
Merged_Divvy2021 <- Merged_Divvy2021 %>%
  mutate(
    Day_of_week = wday(started_at, label = TRUE),
    Start_hour = hour(started_at),
    Month = month(started_at, label = TRUE),
    Trip_duration = as.numeric(difftime(ended_at, started_at, units = "mins"))
  )
