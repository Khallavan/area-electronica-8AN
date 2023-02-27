#' @title retrieve_answer
#' retrieve_answer() receive a parameter to return a solutions from chapter 5
#' of R for Data Science book and a initial script for prime numbers
#' @param option A integer number
#' @examples
#' retrieve_answer(1)
#' retrieve_answer(2)
#' retrieve_answer(3)
#' retrieve_answer(4)
#' retrieve_answer(5)
#' retrieve_answer(6)
#' retrieve_answer(7)

library(classworkPackage)
retrieve_answer <- function(option) {
  switch (option,
          1 = prime_numbers(),
          2 = filter_solution(),
          3 = arrange_solution(),
          4 = select_solution(),
          5 = mutate_solution(),
          6 = flight_evaluation(),
          7 = grouped_mutates_solution(),
          {
            print("Incorrect value, instead use a integer number
            between 1 - 7, to get a solution")
          }
  )
}

