% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/popkernfunc.R
\name{pop_kqr}
\alias{pop_kqr}
\title{Kernel Quantile Regression}
\usage{
pop_kqr(tr, te, y, tau)
}
\arguments{
\item{tr}{Training set predictor variable}

\item{te}{Testing set predictor variable}

\item{y}{Training set response variable}

\item{tau}{Quantile to be estimated (between 0 and 1)}
}
\value{
Predictions of response variable for the test set
}
\description{
Kernel Quantile Regression
}
\examples{
set.seed(123)
x <- matrix(rnorm(200), ncol = 2)
y <- sin(x[,1]) + cos(x[,2]) + rnorm(200)*0.1
train_idx <- sample(nrow(x), nrow(x)/2)
x_train <- x[train_idx, ]
y_train <- y[train_idx]
x_test <- x[-train_idx, ]
y_test <- y[-train_idx]
pred_y_test <- pop_kqr(x_train, x_test, y_train, tau = 0.5)
}
