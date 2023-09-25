
request_rankings <-'{
   worldData{
       zone(id: %i){
           encounters{
           journalID,
               name,
               fightRankings(metric:speed, page: %i)
           }
       }
   }
   }'


### Range (3 for Top 300, max 25 for top 2500)
range <- 1:50

### Request rankings
request_logs_code <- sprintf(request_rankings,1018, range)

output <- lapply(range, function(i) {

  response <- WCL_API2_request(request_logs_code[i]
  )$data$worldData$zone$encounters$fightRankings$rankings[[4]]

  if (i %% 1 == 0) {
    cat("Processed page",i, "out of", length(range),"\n")
  }
  return(response)
})

df_ranking <- do.call(bind_rows, output)

### Write to csv
write.csv(df_ranking,paste0("./raw_data/df_rankings_speed_",format(Sys.time(), "%Y_%m_%d_h%H_m%M"),".csv"))

##########################################################################################################################

request_rankings <-'{
   worldData{
       zone(id: %i){
           encounters{
           journalID,
               name,
               fightRankings(metric:progress, page: %i)
           }
       }
   }
   }'


### Range (3 for Top 300, max 25 for top 2500)
range <- 1:50

### Request rankings
request_logs_code <- sprintf(request_rankings,1018, range)

output <- lapply(range, function(i) {

  response <- WCL_API2_request(request_logs_code[i]
  )$data$worldData$zone$encounters$fightRankings$rankings[[4]]

  if (i %% 1 == 0) {
    cat("Processed page",i, "out of", length(range),"\n")
  }
  return(response)
})

df_ranking <- do.call(bind_rows, output)

### Write to csv
write.csv(df_ranking,paste0("./raw_data/df_rankings_progress_",format(Sys.time(), "%Y_%m_%d_h%H_m%M"),".csv"))


##########################################################################################################################

request_rankings <-'{
   worldData{
       zone(id: %i){
           encounters{
           journalID,
               name,
               fightRankings(metric:execution, page: %i)
           }
       }
   }
   }'


### Range (3 for Top 300, max 25 for top 2500)
range <- 1:50

### Request rankings
request_logs_code <- sprintf(request_rankings,1018, range)

output <- lapply(range, function(i) {

  response <- WCL_API2_request(request_logs_code[i]
  )$data$worldData$zone$encounters$fightRankings$rankings[[4]]

  if (i %% 1 == 0) {
    cat("Processed page",i, "out of", length(range),"\n")
  }
  return(response)
})

df_ranking <- do.call(bind_rows, output)

### Write to csv
write.csv(df_ranking,paste0("./raw_data/df_rankings_execution_",format(Sys.time(), "%Y_%m_%d_h%H_m%M"),".csv"))
