# Adding needed columns for analysis
Merged_Divvy2021 <- Merged_Divvy2021 %>%
  mutate(
    Day_of_week = wday(started_at, label = TRUE),
    Start_hour = format(as.POSIXct(started_at)),
    Month = format(as.Date(started_at)),
    Trip_duration = difftime(ended_at, started_at, units = "mins")
  )
