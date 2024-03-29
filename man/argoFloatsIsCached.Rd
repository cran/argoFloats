% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.R
\name{argoFloatsIsCached}
\alias{argoFloatsIsCached}
\title{Check Whether an Item is Cached}
\usage{
argoFloatsIsCached(name, debug = 0L)
}
\arguments{
\item{name}{character value, naming the item.}

\item{debug}{an integer, passed to \code{\link[=argoFloatsDebug]{argoFloatsDebug()}}.}
}
\value{
A logical value indicating whether a cached value is available.
}
\description{
Check Whether an Item is Cached
}
\seealso{
Other functions relating to cached values: 
\code{\link{argoFloatsClearCache}()},
\code{\link{argoFloatsGetFromCache}()},
\code{\link{argoFloatsListCache}()},
\code{\link{argoFloatsStoreInCache}()},
\code{\link{argoFloatsWhenCached}()}
}
\author{
Dan Kelley, making a thin copy of code written by Dewey Dunnington
}
\concept{functions relating to cached values}
