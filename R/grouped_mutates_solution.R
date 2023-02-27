#' @name grouped_mutates_solution
#' @title grouped_mutates_solution
#' a solution for exercise 5.7.1 of r for Data Science
#' @examples
#' grouped_mutates_solution()
#' prints the solution in data frames
#' For this item of the exercise, two cases can be presented:
#' to be able to find the worst plane with respect to the flights,
#' that were not delayed or cancelled. Part (1)
#' the second is regarding the delay in the arrival of the plane.part (2)


library(tidyverse)
library(nycflights13)
data("flights")
head(flights)

grouped_mutates_solution <- function() {
  # item 2

  #part (1)
  table <- flights %>%
    filter(!is.na(tailnum)) %>%
    mutate(on_time = !is.na(arr_time) & (arr_delay <= 0)) %>%
    group_by(tailnum) %>%
    summarise(on_time = mean(on_time), n = n()) %>%
    filter(min_rank(on_time) == 1)
  print(table)

  part_1 <-flights %>%
    filter(!is.na(tailnum), is.na(arr_time) | !is.na(arr_delay)) %>%
    mutate(on_time = !is.na(arr_time) & (arr_delay <= 0)) %>%
    group_by(tailnum) %>%
    summarise(on_time = mean(on_time), n = n()) %>%
    filter(n >= 20) %>%
    filter(min_rank(on_time) == 1)
  print(part_1)

  #part(2)
  part_2 <- flights %>%
    filter(!is.na(arr_delay)) %>%
    group_by(tailnum) %>%
    summarise(arr_delay = mean(arr_delay), n = n()) %>%
    filter(n >= 20) %>%
    filter(min_rank(desc(arr_delay)) == 1)
  print(part_2)

}











