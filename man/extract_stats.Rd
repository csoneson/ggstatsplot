% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_stats.R
\name{extract_stats}
\alias{extract_stats}
\title{Extracting dataframes with statistical details from \code{ggstatsplot}}
\usage{
extract_stats(p, ...)
}
\arguments{
\item{p}{A plot from \code{ggstatsplot} package}

\item{...}{Ignored}
}
\description{
Extracting dataframes with statistical details from \code{ggstatsplot}
}
\details{
This is a convenience function to extract dataframes with statistical details
that are used to create expressions displayed in \code{ggstatsplot} plots as
subtitle and/or as caption. Note that all of this analysis is carried out by
the \code{statsExpressions} package.

For more details about underlying tests and effect size estimates, see the
following vignette:
https://indrajeetpatil.github.io/statsExpressions/articles/stats_details.html
}
\note{
Note that if you want to use this function with \code{ggscatterstats}, you will
have to set \code{marginal = FALSE} to return an object of \code{ggplot} type.
}
\examples{
\donttest{
set.seed(123)
library(ggstatsplot)
p <- ggbetweenstats(mtcars, am, mpg)
extract_stats(p)
}
}
