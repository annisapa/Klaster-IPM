library(clusterSim)
library(factoextra)
library(readxl)

IPMJateng <- read_excel("E:/IPMJateng.xlsx")
IPMJateng

data<-IPMJateng[,2:6]
fviz_nbclust(data,kmeans,method="silhouette")

hasilklaster<-kmeans(data,3,nstart=25)
hasilklaster

fviz_cluster(hasilklaster,geom="point",data=data)

Cluster<-hasilklaster$cluster
kelompok<-cbind(IPMJateng,Cluster)
kelompok

