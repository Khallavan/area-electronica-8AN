#' @title select_solution
#' select_solution() gives the solution for 5.4.1 Items 2, 3 and 4
#' employing the select method from dplyr.
#' @example
#' select_solution()
#'


library(tidyverse)
library(nycflights13)

select_solution <- function() {

  # What happens if you include the name of a variable multiple times in a select() call?
  solution <- select(flights, year, day, year)
  print("Item 2")
  print(solution)

  # What does the any_of() function do? Why might it be helpful in conjunction with this vector?
  vars <- c("year", "month", "day", "dep_delay", "arr_delay")
  solution <- select(flights, any_of(vars))
  print("Item 3")
  print(solution)

  # Does the result of running the following code surprise you?
  # How do the select helpers deal with case by default? How can you change that default?
  solution <- select(flights, contains("TIME"))
  print("Item 4.a")
  print(solution)

  solution <- select(flights, contains("TIME", ignore.case = FALSE))
  print("Item 4.b")
  print(solution)

}
