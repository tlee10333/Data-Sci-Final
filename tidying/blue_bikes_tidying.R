#years <- list("2015", "2016", "2017", "2018", "2019", "2020" , "2021", "2022", "2023", "2024", "2025")     
# Mass processing data

#new_data <- data.frame()
#for (month in months) {
#  filename <- glue("blue_bikes_data/{year}_data/{year}{month}-bluebikes-tripdata/{year}{month}-bluebikes-tripdata.csv")
#  temp_data <- read_csv(filename, col_types = cols(.default = col_character()))
#  blue_data <- bind_rows(blue_data, temp_data)
#}
#write.csv(blue_data, glue("blue_bikes_data/{year}_data.csv"))


#for (year in years) {
#  filename <- glue("blue_bikes_data_trimmed/{year}_data.csv")
#  temp_data <- read_csv(filename, col_types = cols(.default = col_character()))
#  new_data <- temp_data |>
#  select(
#    starttime,
#    stoptime,
#    `start station id`,
#    `start station name`,
#    `start station latitude`,
#    `start station longitude`,
#    `end station id`,
#    `end station name`,
#    `end station latitude`,
#    `end station longitude`
#  )
#  write.csv(new_data, glue("blue_bikes_data_trimmed/trimmed_{year}_data.csv"))
#}
#for (year in list("2024", "2025")) {
#  filename <- glue("blue_bikes_data_trimmed/{year}_data.csv")
#  temp_data <- read_csv(filename, col_types = cols(.default = col_character()))
#new_data <- temp_data |>
#  rename(
#    starttime = started_at,
#    stoptime = ended_at,
#    `start station id` = start_station_id,
#    `start station name` = start_station_name,
#    `start station latitude` = start_lat,
#    `start station longitude` = start_lng,
#    `end station id` = end_station_id,
#    `end station name` = end_station_name,
#    `end station latitude` = end_lat,
#   `end station longitude` = end_lng
# ) |>
# select(
#    starttime,
#    stoptime,
#    `start station id`,
#    `start station name`,
#    `start station latitude`,
#    `start station longitude`,
#    `end station id`,
#    `end station name`,
#    `end station latitude`,
#    `end station longitude`
#  )
#  write.csv(new_data, glue("blue_bikes_data_trimmed/trimmed_{year}_data.csv"))
#}

#Group Blue Bikes based on Station Name & Latitude/Longitude and Find Total Trips Per Station
#years <- list("2015", "2016", "2017", "2018", "2019", "2020" , "2021", "2022", "2023", "2024", "2025")     
#total_counts <- data.frame(
#  start_station = character(),
#  start_lat = numeric(),
#  start_lng = numeric(),
#  n = numeric(),
#  time = 
#)
#
#for (year in years) {
#  df <- read_csv(glue("blue_bikes_data_trimmed/trimmed_{year}_data.csv"))
#  temp <- df |>
#    group_by(start_station, start_lat, start_lng) |>
#    summarise(n = n(), .groups = "drop")
#  total_counts <- bind_rows(total_counts, temp)
#}
#total_counts <- total_counts |>
#  group_by(start_station) |>
#  summarise(
#    n = sum(n), 
#    start_lat = mean(start_lat, na.rm = TRUE),
#    start_lng = mean(start_lng, na.rm = TRUE),
#    .groups = "drop"
#  )
#
#All trip and accident summary
#years <- list("2015", "2016", "2017", "2018", "2019", "2020" , "2021", "2022", "2023", "2024", "2025")     
#all_trips <- data.frame()
#for (year in years) {
#  df <- read_csv(glue("blue_bikes_data_trimmed/trimmed_{year}_data.csv")) |>
#    select(starttime) |>
#    mutate(
#      starttime = as.POSIXct(starttime),
#      year = year(starttime),
#      month = month(starttime),
#      season = case_when(
#        month %in% c(12, 1, 2) ~ "Winter",
#        month %in% c(3, 4, 5) ~ "Spring",
#        month %in% c(6, 7, 8) ~ "Summer",
#        month %in% c(9, 10, 11) ~ "Fall"
#     )
#    )
#    all_trips <- bind_rows(all_trips, df)
#
#}
#all_trips_summary <- all_trips %>%
#  group_by(year, month, season) %>%
#  summarise(total_trips = n(), .groups = "drop")
#
#accidents_summary <- bike |>
#  group_by(year, month, season) |>
#  summarise(total_accidents = n(), .groups = "drop")
#
#final_summary <- all_trips_summary |>
#  left_join(accidents_summary, by = c("year", "month", "season")) |>
#  mutate(accident_trip_ratio = round(total_accidents/total_trips, 6))
#
#final_summary
#write.csv(final_summary, ("all_trips_summary.csv"))
