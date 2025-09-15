# Cleaning and removing spaces, parentheses, camelCases, etc.
Merged_Divvy2021 <- clean_names(Merged_Divvy2021)

# Removing empty rows and columns, leave the c() empty, selects both the columns and rows
remove_empty(Merged_Divvy2021, which = c())
