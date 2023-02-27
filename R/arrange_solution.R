#' @name arrangeSolution
#' @title arrange_solution
#' arrange_solution() gives the solution for all
#' items of 5.3.1 exercise of R for Data Science
#' employing the arrange method of dplyr


library(tidyverse)
library(nycflights13)

arrange_solution <- function(){
  # 1 How could you use arrange() to sort all missing values to the start?
  # (Hint: use is.na()).
  solution <- arrange(flights, desc(is.na(dep_time)), dep_time)
  print("Item 1")
  print(solution)

  # 2 Sort flights to find the most delayed flights. Find the flights that left earliest.
  solution <- arrange(flights, dep_delay)
  print("Item 2")
  print(solution[1,])

  # 3 Sort flights to find the fastest flights.
  solution <- head(arrange(flights, desc(distance / air_time)))
  print("Item 3")
  print(solution)

  # 4 Which flights traveled the longest? Which traveled the shortest?
  solution <- arrange(flights, desc(distance))
  print("Longest")
  print(solution[1,])

  solution <- arrange(flights,distance)
  print("shortest")
  print(solution[1,])
}
