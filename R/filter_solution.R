#' @title  filter_solution
#' A solution for exercise 5.2.4 of R for Data Science
#' prints the solution in data frames
#' @example
#' filter_solution()

library(tidyverse)
library(nycflights13)

filter_solution <- function (){
  # Item 1:
  # 1 Had an arrival delay of two or more hours
  solution <- filter(flights, arr_delay >= 120)
  print("1 Had an arrival delay of two or more hours")
  print(solution)
  # 2 Flew to Houston (IAH or HOU)
  solution <- filter(flights, dest %in% c("IAH", "HOU"))
  print("2 Flew to Houston (IAH or HOU)")
  print(solution)
  # 3 Were operated by United, American, or Delta
  solution <- filter(flights, carrier %in% c("AA", "DL", "UA"))
  print("3 Were operated by United, American, or Delta")
  print(solution)
  # 4 Departed in summer (July, August, and September)
  solution <- filter(flights, month %in% 7:9)
  print("")
  print(solution)
  # 5 Arrived more than two hours late, but didn’t leave late
  solution <- filter(flights, arr_delay > 120, dep_delay <= 0)
  print("4 Departed in summer (July, August, and September)")
  print(solution)
  # 6 Were delayed by at least an hour,
  # but made up over 30 minutes in flight
  solution <- filter(flights, dep_delay >= 60, dep_delay - arr_delay > 30)
  print("6 Were delayed by at least an hour,
  but made up over 30 minutes in flight")
  print(solution)
  # 7 Departed between midnight and 6am (inclusive)
  solution <- filter(flights, dep_time %% 2400 <= 600)
  print("7 Departed between midnight and 6am (inclusive)")
  print(solution)

  # item 2
  solution <- filter(flights, between(month, 7, 9))
  print("Simplified")
  print(solution)
}
