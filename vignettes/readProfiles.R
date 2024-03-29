if (!interactive()) png("readProfiles.png", unit="in", width=5, height=2.8, pointsize=11, res=100)
oldpar <- par(no.readonly=TRUE)
par((mar=c(3, 2.5, 1, 1)+0.1), mgp=c(2, 0.7, 0), cex.lab=0.9)
library(argoFloats)
data(index)
index1 <- subset(index, 1:2) # To subset for profiles
profiles <- getProfiles(index1)
argos <- readProfiles(profiles)
argosClean <- applyQC(argos)
plot(argosClean, which="profile")
par(oldpar)
if (!interactive()) dev.off()
