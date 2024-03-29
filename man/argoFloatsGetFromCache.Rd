% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get.R
\name{argoFloatsGetFromCache}
\alias{argoFloatsGetFromCache}
\title{Get an Item From The Cache}
\usage{
argoFloatsGetFromCache(name, debug = 0)
}
\arguments{
\item{name}{character value, naming the item.}

\item{debug}{an integer, passed to \code{\link[=argoFloatsDebug]{argoFloatsDebug()}}.}
}
\value{
The cached value, as stored with \code{\link[=argoFloatsStoreInCache]{argoFloatsStoreInCache()}}.
}
\description{
Get an Item From The Cache
}
\seealso{
Other functions relating to cached values: 
\code{\link{argoFloatsClearCache}()},
\code{\link{argoFloatsIsCached}()},
\code{\link{argoFloatsListCache}()},
\code{\link{argoFloatsStoreInCache}()},
\code{\link{argoFloatsWhenCached}()}
}
\concept{functions relating to cached values}
