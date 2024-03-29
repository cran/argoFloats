% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subset.R
\name{subset,argoFloats-method}
\alias{subset,argoFloats-method}
\title{Subset an argoFloats Object}
\usage{
\S4method{subset}{argoFloats}(x, subset = NULL, ...)
}
\arguments{
\item{x}{an \code{\linkS4class{argoFloats}} object as created by \code{\link[=getIndex]{getIndex()}}.}

\item{subset}{optional numerical or logical vector that indicates which
indices of \code{x@data$index} to keep (example 1).}

\item{...}{the first entry here must be either (a) a list named \code{circle},
\code{rectangle}, \code{polygon}, \code{parameter}, \code{time}, \code{institution},
\code{ID},\code{ocean},\code{dataMode},\code{cycle}, \code{direction}, \code{profile}, or \code{section}.
(examples 2 through 8, and 10 through 17),
or (b) a logical value named \code{deep} (example 9).  Optionally, this entry
may be followed by second entry named \code{silent}, which is a logical
value indicating whether to prevent the printing of messages that
indicate the number (and percentage) of data that are kept
during the subsetting operation.
See \dQuote{Details} and \dQuote{Examples}.}
}
\value{
An \code{\linkS4class{argoFloats}} object, restricted as indicated.
}
\description{
Return a subset of an \code{\linkS4class{argoFloats}} object.  This applies
only to objects of type \code{"index"}, as created with \code{\link[=getIndex]{getIndex()}} or \code{subset()}
acting on such a value, or of type \code{"argos"}, as created with \code{\link[=readProfiles]{readProfiles()}}.
(It cannot be used on objects of type \code{"profiles"}, as created with \code{\link[=getProfiles]{getProfiles()}}.)
There are two ways to use \code{subset()}.  \strong{Method 1.} supply
the \code{subset} argument.  This may be a logical vector indicating
which entries to keep (by analogy to the base-R \code{subset()}
function) or it may be an integer vector holding the indices of entries to
be retained. \strong{Method 2.} do not supply \code{subset}.  In this
case, the action is determined by the third (\code{...})
argument; see \sQuote{Details}.
}
\details{
The possibilities for the \code{...} argument are as follows.
\enumerate{
\item An integer vector giving indices to keep.
\item A list named \code{circle} with numeric elements named \code{longitude},
\code{latitude} and \code{radius}.  The first two give the center of
the subset region, and the third gives the radius of
that region, in kilometers.
\item A list named \code{rectangle} that has elements named
\code{longitude} and \code{latitude}, two-element numeric vectors
giving the western and eastern, and southern and northern
limits of the selection region.
\item A list named \code{polygon} that has elements named \code{longitude} and \code{latitude}
that are numeric vectors specifying a polygon within which profiles
will be retained. The polygon must not be self-intersecting,
and an error message will be issued if it is.  If the polygon is not closed
(i.e. if the first and last points do not coincide) the first point is pasted
onto the end, to close it.
\item A vector or list named \code{parameter} that holds character values that
specify the names of measured parameters to keep. See section 3.3 of
Reference 1 for a list of parameters.
\item A list named \code{time} that has elements \code{from} and \code{to} that are either
POSIXt times, or character strings that \code{subset()} will convert to
POSIXt times using \code{\link[=as.POSIXct]{as.POSIXct()}} with \code{tz="UTC"}.
\item A list named \code{institution} that holds a single character element that
names the institution.  The permitted values are:
\code{"AO"} for Atlantic Oceanographic and Meteorological Laboratory;
\code{"BO"} for British Oceanographic Data Centre;
\code{"CS"} for Commonwealth Scientific and Industrial Research Organization;
\code{"HZ"} for China Second Institute of Oceanography;
\code{"IF"} for Ifremer, France;
\code{"IN"} for India National Centre for Ocean Information Services;
\code{"JA"} for Japan Meteorological Agency;
\code{"KM"} for Korea Meteorological Agency;
\code{"KO"} for Korea Ocean Research and Development Institute;
\code{"ME"} for Marine Environment Data Section; and
\code{"NM"} for National Marine Data & Information Service.
\item A list named \code{deep} that holds a logical value indicating whether argo floats
are deep argo (i.e. \code{profiler_type} 849, 862, and 864).
\item A list named \code{ID} that holds a character value specifying a float identifier.
\item A list named \code{ocean} that  holds a single character element that names the
ocean. The permitted values are:
\code{"A"} for Atlantic Ocean Area, from 70 W to 20 E,
\code{"P"} for Pacific Ocean Area, from 145 E to 70 W, and
\code{"I"} for Indian Ocean Area, from 20 E to 145 E.
\item A character value named \code{dataMode}, equal to either \code{realtime} or \code{delayed},
that selects whether to retain real-time data or delayed data.  There are two
possibilities, depending on the \code{type} of the \code{x} argument.
\strong{Case 1.} If \code{x} is of \code{type="index"}, then the subset is done by looking for the letters
\code{R} or \code{D} in the source filename. Note that a file in the
latter category may contain some profiles that are of delayed mode \emph{and also}
some profiles that are of \code{realtime} or \code{adjusted} mode.
\strong{Case 2.} If \code{x} is
of type \code{argos}, then the subset operation is done for each profile within
the dataset. Sometimes this will yield data arrays with zero columns.
\item An integer or character value named \code{cycle} that specifies which cycles are to be retained.
This is done by regular-expression matching of the filename, looking between the
underline character (\code{"_"}) and the suffix (\code{.nc}), but note that the expression
is made up of a compulsory component comprising 3 or 4 digits, and an optional
component that is either blank or the character \code{"D"} (which designates a
descending profile).  Thus, \code{001} will match both \verb{*_001.nc} and \verb{*_001D.nc}.
Note this can be used for both \code{"index"} and \code{"argos"} types.
\item A character value named \code{direction}, equal to either "descent" or "ascent",
that selects whether to retain data from the ascent or decent phase.
\item An integer value named \code{profile} that selects which profiles
to retain.  Note that this type of subset is possible only
for objects of type \code{"argos"}.
\item An integer value named \code{cycle} that selects which cycles
to retain.
\item A character value named \code{dataStateIndicator}, equal to either "0A", "1A",
"2B", "2B+", "2C", "2C+", "3B", or "3C" that selects which \code{dataStateIndicator}
to keep (see table 6 of Reference 1 for details of these codes).
This operation only works for objects of type \code{"argos"}.
\item A list named \code{section} that  has four elements:
\code{longitude},\code{latitude}, \code{width}, and \code{segments}. The first two of these
are numeric vectors that define the spine of the section, in degrees East
and North, respectively.  These are both mandatory, while both \code{width} and \code{segments}
are optional. If given, \code{width} is taken as maximal distance between an Argo
and the spine, for that float to be retained. If \code{width} is not given, it
defaults to 100km.  If given, \code{segments} is either \code{NULL} or a positive
integer.  Setting \code{segments} to \code{NULL} will cause the float-spine distance
to be computed along a great-circle route.  By contrast, if \code{segments} is an
integer, then the spine is traced using \code{stats::approx()}, creating
\code{segments} new points.  If \code{segments} is not provided, it defaults to 100.
}

In all cases, the notation is that longitude is positive
for degrees East and negative for degrees West, and that latitude
is positive for degrees North and negative for degrees South.
For more on this function, see Kelley et al. (2021).
}
\examples{
library(argoFloats)
data(index)
data(indexSynthetic)

# Subset to the first 3 profiles in the (built-in) index
indexFirst3 <- subset(index, 1:3)

# Subset to a circle near Abaco Island
indexCircle <- subset(index, circle=list(longitude=-77.5, latitude=27.5, radius=50))

# Subset to a rectangle near Abaco Island
lonlim <- c(-76.5, -76)
latlim <- c(26.5, 27.5)
indexRectangle <- subset(index, rectangle=list(longitude=lonlim, latitude=latlim))

# Subset to a polygon near Abaco Island
lonp <- c(-77.492, -78.219, -77.904, -77.213, -76.728, -77.492)
latp <- c( 26.244,  25.247,  24.749,  24.987,  25.421,  26.244)
indexPolygon <- subset(index, polygon=list(longitude=lonp, latitude=latp))

# Subset to year 2019
index2019 <- subset(index, time=list(from="2019-01-01", to="2019-12-31"))

# Subset to Canadian MEDS data
indexMEDS <- subset(index, institution="ME")

# Subset to profiles with oxygen data
indexOxygen <- subset(indexSynthetic, parameter="DOXY")

# Subset to profiles with both salinity and 380-nm downward irradiance data
indexSalinityIrradiance <- subset(indexSynthetic, parameter=c("PSAL", "DOWN_IRRADIANCE380"))

}
\references{
\enumerate{
\item Carval, Thierry, Bob Keeley, Yasushi Takatsuki, Takashi Yoshida, Stephen Loch,
Claudia Schmid, and Roger Goldsmith. Argo User's Manual V3.3. Ifremer, 2019.
\code{doi:10.13155/29825}.
\item Kelley, D. E., Harbin, J., & Richards, C. (2021). argoFloats: An R package for analyzing
Argo data. Frontiers in Marine Science, (8), 636922.
\doi{10.3389/fmars.2021.635922}
}
}
\author{
Dan Kelley and Jaimie Harbin
}
