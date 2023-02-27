#' @title Prime Numbers list.
<<<<<<< HEAD
#' Gives the list of prime numbers between 1 to 100
#' @returns A list of prime numbers between
#' @example
#' prime_numbers()

=======
#' @description  Gives the list of prime numbers between 1 to 100
#' @returns a list of prime numbers
>>>>>>> main
prime_numbers <- function(){
  num <- 100L
  prime_nums <- c()
  for (i in 2:num) {
    is_prime <- TRUE
    for (j in prime_nums) {
      if (j > sqrt(i)) {
        break
      }
      if (i %% j == 0) {
        is_prime <- FALSE
        break
      }
    }
    if (is_prime) {
      prime_nums <- c(prime_nums, i)
    }
  }
  # return the prime numbers
  return(prime_nums)
}

