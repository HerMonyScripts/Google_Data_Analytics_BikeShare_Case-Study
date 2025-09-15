# Creating new dataset name <- binding_rows(all_the_datasets)
Merged_Divvy2021 <- bind_rows(Jan_2021, Feb_2021, Mar_2021, Apr_2021, May_2021, Jun_2021, Jul_2021, Aug_2021, Sep_2021, Oct_2021, Nov_2021, Dec_2021)

# Checking the dataset columns using th str() function
str(Merged_Divvy2021)
