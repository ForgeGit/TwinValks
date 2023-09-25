a <- read.csv("output_twinsvalkyr_1to25002023_09_24_h01_m06.csv")

encounter_data <- read.csv("encounter_data2023_09_22.csv")
encounter_data_top <- read.csv("encounter_data_topLogs_2023_09_24.csv")

### Top Logs

twins_df_top <- ## 13,567
  encounter_data_top %>% filter(encounterID!=0) %>%
  filter(encounterID==641 & duration_s>=50)


twins_df_top <- twins_df_top%>%

  mutate(duration_s_filter = round(duration_s,1),
         logdate = as.Date(logStart))%>%

  distinct(difficulty, size, kill, fightPercentage,
           duration_s_filter, averageItemLevel,logdate,
           .keep_all = TRUE) ## 10,420


### Normie Logs

twins_df <- ## 13,567
  encounter_data %>% filter(encounterID!=0) %>%
  filter(encounterID==641 & duration_s>=50)


twins_df <- twins_df%>%

  mutate(duration_s_filter = round(duration_s,1),
         logdate = as.Date(logStart))%>%

  distinct(difficulty, size, kill, fightPercentage,
           duration_s_filter, averageItemLevel,logdate,
           .keep_all = TRUE) ## 10,420




twins_df <- bind_rows(
  twins_df_top,twins_df)


df_unique <- twins_df  %>%
  distinct(logID,fightID)





a %>% filter(fight != fightID)




topA<- read.csv("encounter_data_topLogs_2023_09_23.csv") %>% filter(encounterID!=0) %>%
  filter(encounterID==641 & duration_s>=50) %>%

  mutate(duration_s_filter = round(duration_s,1),
         logdate = as.Date(logStart))%>%

  distinct(difficulty, size, kill, fightPercentage,
           duration_s_filter, averageItemLevel,logdate,
           .keep_all = TRUE) ## 10,420


topB<- read.csv("encounter_data_topLogs_2023_09_24.csv") %>% filter(encounterID!=0) %>%
  filter(encounterID==641 & duration_s>=50) %>%

  mutate(duration_s_filter = round(duration_s,1),
         logdate = as.Date(logStart))%>%

  distinct(difficulty, size, kill, fightPercentage,
           duration_s_filter, averageItemLevel,logdate,
           .keep_all = TRUE) ## 10,420
