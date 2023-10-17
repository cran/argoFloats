## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(collapse=TRUE, comment="#>")

## ----eval=FALSE---------------------------------------------------------------
#  library(devtools)
#  install_github("ArgoCanada/argoFloats", ref="develop")

## ----message=FALSE, warning=FALSE---------------------------------------------
library(oce)
library(ocedata)
library(argoFloats)

## -----------------------------------------------------------------------------
data("index")

## ----fig.cap="Figure 2: Built in index demonstrating Argo profiling floats within 200 km of Bahamas."----
plot(index, bathymetry=FALSE)          # also, try using bathymetry=TRUE

## ----eval=FALSE---------------------------------------------------------------
#  index

## ----eval=FALSE---------------------------------------------------------------
#  ai <- getIndex("core")

## ----echo=FALSE---------------------------------------------------------------
data(index)
ai <- index

## ----message=FALSE, fig.cap="Figure 3: 50 km radius and polygon subset of Argo profiling floats found off the coast of Bahamas", warning=FALSE----
# Subsetting by circle
aiCircle <- subset(ai, circle=list(longitude=-77.5, latitude=27.5, radius=50))
# Subsetting by polygon
lonPoly <- c(-76.5, -76.0, -75.5)
latPoly <- c(25.5, 26.5, 25.5)
aiPoly <- subset(ai, polygon=list(longitude=lonPoly, latitude=latPoly))
# Plotting the subsets together
CP <- merge(aiCircle, aiPoly)
plot(CP, bathymetry=FALSE)             # also, try using bathymetry=TRUE

## ----fig.cap="Figure 4: Comparison of Argo vs. CTD section data in a westward transect from the Mediterranean outflow region across to North Atlantic. Top: Argo data including 49 samples from 2020-09-23 to 2020-10-25 made by the argoFloats package. Bottom: Line A03 section including 124 CTD samples from 1993-09-23 to 1993-10-25 made by oce package", eval=FALSE----
#  library(oce)
#  library(argoFloats)
#  oldpar <- par(no.readonly=TRUE)
#  par(mfrow=c(2,1))
#  data(section, package="oce")
#  #getIndex()
#  ai <- getIndex()
#  #subset by section
#  lonlim <- c(-70, -64,-10)
#  latlim <-c(40,35,35)
#  index1 <- subset(ai, section=list(longitude=lonlim, latitude=latlim, width=100))
#  #subset by time
#  from <- as.POSIXct("2020-09-23", tz="UTC")
#  to <- as.POSIXct("2020-10-25", tz="UTC")
#  index2 <- subset(index1, time=list(from=from, to=to))
#  plot(index2, bathymetry=FALSE,  asp=1/cos(mean(range(unlist(index2[["latitude"]]), na.rm=TRUE))*pi/180),  mgp=getOption("oceMgp")
#  )
#  points(lonlim, latlim, pch=21, col="black", bg="red", type="o")
#  plot(section, which="map", col="tan")
#  par(oldpar)

## ----eval=FALSE---------------------------------------------------------------
#  index1 <- subset(index, 1:2) # To subset for profiles
#  profiles <- getProfiles(index1)
#  argos <- readProfiles(profiles)
#  argosClean <- applyQC(argos)
#  plot(argosClean, which="profile", type="p")

## ----eval=FALSE---------------------------------------------------------------
#  index <- getIndex("~/data/argo/ar_index_global_prof.txt.gz", server=NULL)

## ----eval=FALSE---------------------------------------------------------------
#  index <- getIndex("~/data/argo/ar_index_global_prof.rda", server=NULL)

## ----eval=FALSE---------------------------------------------------------------
#  library(argoFloats)
#  ai <- getIndex()
#  # Subset by circle
#  index1 <- subset(ai, circle=list(longitude=-77.5, latitude=27.5, radius=50))
#  # Subset by polygon
#  lonPoly <- c(-76.5, -76.0, -75.5)
#  latPoly <- c(25.5, 26.5, 25.5)
#  index2 <- subset(ai, polygon=list(longitude=lonPoly, latitude=latPoly))
#  # Subset by rectangle
#  lonRect <- c(-76.5, -76)
#  latRect <- c(27, 28)
#  index3 <- subset(ai, rectangle=list(longitude=lonRect, latitude=latRect))
#  # Merge the subsets together
#  index4 <- merge(index1, index2)
#  index5 <- merge(index3, index4) # Note right now can only merge 2 indices together
#  # Subset for year 2012-2020
#  index6 <- subset(index5, time=list(from="2012-01-01", to="2020-01-01"))
#  # Plot data
#  plot(index6, bathymetry=FALSE)             # also, try using bathymetry=TRUE

## ----eval=FALSE---------------------------------------------------------------
#  library(argoFloats)
#  ai <- getIndex("synthetic")
#  sub <- subset(ai, 1:2) # To subset for profiles
#  profiles <- getProfiles(sub)
#  argos <- readProfiles(profiles)
#  argosClean <- applyQC(argos)
#  plot(argosClean, which="TS")

