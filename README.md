# getdataproject
This repo include three files for Coursera GetData-011 course project. They are: this ReadMe, a codebook and an R script.

The course project required me to turn a large dataset, spread across eight smaller datasets, into a tidy dataset. My R script is well-commented, but it's worth sharing my approach here. More details can be found in codebook.md and run_analysis.R, both located within this repo.

1. I load two libraries, dplyr and tidyr, that are needed in the script. 
2. I load the eight relevant datasets using the read.table command. 
3. I consolidate the **train** and **test** data using rbind and call it **a**. 
4. After cleaning up the **features** data, I make **features** the variable names of **a**. 
5. After consolidating the train and test pieces using rbind, I add **subject** and **activity** data to **a** using cbind and assign names for those variables. 
6. I remove duplicate columns from **a** and extract all mean and std variables, while preserving the added activity and subject variables. I do this via subsetting and the select command. 
7. I replace activity numbers with descriptive names based on **activity_labels**. 
8. I create a tidy set of average measurements grouped by activity then subject. I utilize the gather, group_by and summarize commands. 
