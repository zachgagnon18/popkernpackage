#' Kernel Quantile Regression
#'
#' @param tr Training set predictor variable
#' @param te Testing set predictor variable
#' @param y Training set response variable
#' @param tau Quantile to be estimated (between 0 and 1)
#'
#' @return Predictions of response variable for the test set
#' @export
#'
#' @examples
#' set.seed(123)
#' x <- matrix(rnorm(200), ncol = 2)
#' y <- sin(x[,1]) + cos(x[,2]) + rnorm(200)*0.1
#' train_idx <- sample(nrow(x), nrow(x)/2)
#' x_train <- x[train_idx, ]
#' y_train <- y[train_idx]
#' x_test <- x[-train_idx, ]
#' y_test <- y[-train_idx]
#' pred_y_test <- pop_kqr(x_train, x_test, y_train, tau = 0.5)
pop_kqr <- function(tr,te,y,tau)
{
  model <- kernlab::kqr(x=tr, y=y, tau=tau)
  predictions <- predict(model, te)
  return(predictions)
}
