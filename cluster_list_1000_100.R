library(prider)
library(prideRcompare)

projects.1000 <- get.list.ProjectSummary(1000)
projects.1000.protein.details.100 <- lapply(projects.1000, function(x) {get.list.ProteinDetail(accession(x), 100)})
clusters.1000.100 <- cluster.ProteinDetails(projects.1000.protein.details.100)
projects.1000.accessions <- sapply(projects.1000, accession)
plot(clusters.1000.100, projects.1000.accessions, main="Clustering of latest 1000 projects")
