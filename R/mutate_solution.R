#' @name mutate_solution
#' @title  mutate_solution
#' mutate_solution() gives the solution for 5.5.2 items 1 and 2
#' this method use mutate() method from dlpyr
#' @method time_converter_mins method
#' @description  converts time into minutes considering a 24h mins range


library(tidyverse)
library(nycflights13)

time_converter_mins <- function(x) {
  (x %/% 100 * 60 + x %% 100) %% 1440
}


mutate_solution<- function (){
  # item1
  flights_changes_time <- mutate(flights,
                            dep_time_mins = time_converter_mins(dep_time),
                            sched_dep_time_mins = time_converter_mins(sched_dep_time)
  ) %>% select(
    flights_times, dep_time, dep_time_mins, sched_dep_time,
    sched_dep_time_mins
  )
  print("Item 1")
  print(flight_changes_time)

 # item2
  flights_mutation <- mutate(flights,
                             dep_time = time_converter_mins(dep_time) ,
                             arr_time = time_converter_mins(arr_time) ,
                             air_time_diff = air_time - arr_time + dep_time)
  solution <-  select(flights_mutation, starts_with('dep_time'), starts_with('air_time'), starts_with('air_time_diff'))
  print("Item 2")
  print(solution)
}
