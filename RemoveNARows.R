RemoveNArows <- function(data.mat) {
  na.idx <- which(is.na(data.mat[, 1]))
  if(length(na.idx) > 0) {
    data.mat <- data.mat[-na.idx, ]
    # browser()
  }

  blank.idx <- which(data.mat[, 18] == "")
  # browser()
  if(length(blank.idx) > 0) {
    data.mat <- data.mat[-blank.idx, ]
  }

  return(data.mat)
}
