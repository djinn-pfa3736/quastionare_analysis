MergeCSVs <- function(dataset.path) {
  file.vec <- list.files(dataset.path)
  data.mat <- as.vector(NULL)
  for(i in 1:length(file.vec)) {
    file.name <- paste(dataset.path, "/", file.vec[i], sep="")
    command <- paste("nkf -w ", file.name, " > tmp.csv", sep="")
    system(command)
    tmp.mat <- read.csv("tmp.csv")
    # browser()
    data.mat <- rbind(data.mat, tmp.mat[, 1:18])
  }

  return(data.mat)
}
