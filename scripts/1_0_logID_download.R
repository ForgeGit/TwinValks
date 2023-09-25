request_logs_code <- sprintf(request_logs_str,1018, 1:25)

response_logs_code <- lapply(seq_along(request_logs_code), function(i) {

  response <- WCL_API2_request(request_logs_code[i]
  )$data$reportData$reports$data

  if (i %% 5 == 0) {
    cat("Processed", i, "out of", length(request_logs_code), "\n")
  }

  return(response)
})

response_logs_code_df <- do.call(bind_rows, response_logs_code)

write.csv(response_logs_code_df,paste0("./raw_data/response_logs_code_df_",format(Sys.time(), "%Y_%m_%d_h%H_m%M"),".csv"))
