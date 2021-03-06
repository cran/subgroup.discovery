% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prim.R
\name{prim}
\alias{prim}
\title{Find the optimal sub-box using the PRIM peeling strategy}
\usage{
prim(formula, data, peeling.quantile = 0.03, min.support = 0.05)
}
\arguments{
\item{formula}{Formula with a response and terms}

\item{data}{Data frame to find rules in}

\item{peeling.quantile}{Quantile to peel off for numerical variables}

\item{min.support}{Minimal size of a box to be valid}
}
\value{
An S3 object of class prim.peel
}
\description{
By iteratively removing a small portion of the data... Note that categorical data has to be in factor form.
}
\examples{
\donttest{
  data(pima)
  pima <- prim.data.prepare(pima)
  pima.model <- prim(class ~. , pima, 0.3, 0.4)
  plot(pima.model)
  summary(pima.model)
}
}
\author{
Jurian Baas
}
