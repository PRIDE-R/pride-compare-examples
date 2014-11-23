library(prider)
library(prideRcompare)

human.projects.200 <- search.list.ProjectSummary("human", 200)
human.projects.200.protein.details.500 <- lapply(human.projects.200, function(x) {get.list.ProteinDetail(accession(x), 500)})
human.clusters.200.500 <- cluster.ProteinDetails(human.projects.200.protein.details.500)
human.projects.200.accessions <- sapply(human.projects.200, accession)
plot(human.clusters.200.500, human.projects.200.accessions, main="Clustering of latest 100 human projects")

