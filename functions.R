# R course for beginners
# Week 9
# assignment by Noga Smadar
# FUNCTIONS


create_descriptives <- function(df, subject_start, subject_end) {
  
  library(dplyr)
  
  df <- df|>
    filter(subID >= subject_start & subID <= subject_end)
  
  results <- data.frame(
    variable = character(),
    type = character(),
    stat = numeric()
  )
  
  for (var in names(df)) {
    if (class(df[[var]]) == "numeric") {
      
      results <- rbind(results, data.frame(
        variable = var,
        type = c("mean", "min", "max"),
        stat = c(mean(df[[var]]), min(df[[var]]), max(df[[var]]))
      ))
      
    } else if (class(df[[var]]) == "factor") {
      levels_count <- table(df[[var]])
      for (level in names(levels_count)) {
        results <- rbind(results, data.frame(
          variable = var,
          type = level,
          stat = levels_count[level]
        ))
      }
    }
  }
  
  if (nrow(df) < 10) {
    return("data is too short")
  }
  else {
    return(results)
    }
  
}
