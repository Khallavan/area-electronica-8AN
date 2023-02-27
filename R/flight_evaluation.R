<<<<<<< HEAD
#' @title  flight_evaluation
#' A solution for exercise 5.6.7 of R for Data Science
#' @example 
#' flight_evaluation()
#' prints 5 different ways to evaluate the Typical Delay Characteristics of a group of flights. 

flight_evaluation <- function() {

    
    print("
    # Correlation analysis
    # Correlation analysis: This type of analysis is used to examine how two variables are related, in an example, the delay in arrival of a flight and the delay in departure of the same. The (cor) function can be used to calculate the correlation matrix and then visualize it using a heatmap with the (heatmap) function."
    )
    
    print("
    # Standard deviation
    # Standard deviation: Measures the variability of the data in this case, the arrival times of the flights. This measure indicates how far individual arrival times are from the average of the general arrival times. Standard deviation can be calculated using the (sd) function."
    )
    
    print("
    # Classification analysis
    # Classification analysis: It is used to evaluate the accuracy of a classification model that predicts, in this case, whether a flight will be late or not. A classification model such as logistic regression can be used, which is generated with the (glm) function, or decision tree, which is analyzed with the (rpart) function."
    )
    
    print("
    # Median
    # Median: The median is a statistical measure that indicates the central value of a dataset. For the arrival times of flights, the median allows us to evaluate whether flights tend to arrive late or early relative to the scheduled time. The median is calculated using the (median) function."
    )
    
    print("
    # Regression analysis
    # Regression analysis: This analysis evaluates the relationship between variables. In this case, the arrival times of flights and variables such as the time of day or day of the week. Linear regression or logistic regression can be used. It can be calculated using the (lm) function to perform a linear regression and the (glm) function to perform a logistic regression."
    )
    
}
=======
#' @title  flight_evaluation
#' A solution for exercise 5.6.7 of R for Data Science
#' @example
#' flight_evaluation()
#' prints 5 different ways to evaluate the Typical Delay Characteristics of a group of flights.

flight_evaluation <- function() {

  print("
    # Correlation analysis
    # Correlation analysis: This type of analysis is used to examine how two variables are related, in an example, the delay in arrival of a flight and the delay in departure of the same. The (cor) function can be used to calculate the correlation matrix and then visualize it using a heatmap with the (heatmap) function."
  )

  print("
    # Standard deviation
    # Standard deviation: Measures the variability of the data in this case, the arrival times of the flights. This measure indicates how far individual arrival times are from the average of the general arrival times. Standard deviation can be calculated using the (sd) function."
  )

  print("
    # Classification analysis
    # Classification analysis: It is used to evaluate the accuracy of a classification model that predicts, in this case, whether a flight will be late or not. A classification model such as logistic regression can be used, which is generated with the (glm) function, or decision tree, which is analyzed with the (rpart) function."
  )

  print("
    # Median
    # Median: The median is a statistical measure that indicates the central value of a dataset. For the arrival times of flights, the median allows us to evaluate whether flights tend to arrive late or early relative to the scheduled time. The median is calculated using the (median) function."
  )

  print("
    # Regression analysis
    # Regression analysis: This analysis evaluates the relationship between variables. In this case, the arrival times of flights and variables such as the time of day or day of the week. Linear regression or logistic regression can be used. It can be calculated using the (lm) function to perform a linear regression and the (glm) function to perform a logistic regression."
  )

}
>>>>>>> 7921ec7 (modified some scripts)
