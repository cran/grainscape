% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{.habConnRcpp}
\alias{.habConnRcpp}
\title{Habitat connectivity engine (C++)}
\usage{
.habConnRcpp(cost, patches, ncol, nrow)
}
\arguments{
\item{cost}{Numeric vector of habitat cost (resistance) values
extracted from a raster cost map.}

\item{patches}{Numeric vector that have binary values (\code{0} and \code{1})
where ones corresponds to patch cells and zeroes to
non-habitat (i.e., matrix) cells.}

\item{ncol}{Number of columns in the raster cost/patch map.}

\item{nrow}{Number of rows in the raster cost/patch map.}
}
\description{
Internal function, not intended to be called directly.
DESCRIPTION NEEDED.
}
\author{
Sam Doctolero
}
\keyword{internal}
