#' @title Mean and standard deviations of columns.
#' @details This function takes the mean and standard deviation of each numeric column in a dataset.
#' @param your_data the dataset containing only numeric columns.
#' @return returns a data frame with column means and std. deviations.
#' @examples mean_sd_of_cols(data.frame(a<- c(1,2,3,4), b<- c(0.1,0.2,0.3,0.4)))
#' @export
mean_sd_of_cols <- function(your_data){
  means <- c()
  sds <- c()
  your_data <- as.data.frame(your_data)

  for(i in 1:ncol(your_data)){
    if(!is.numeric(your_data[,i])) {
      stop('I am so sorry, but this function only works for numeric input!\n',
           'Your provided dataset has at least one column of class: ', class(your_data[,i])[1])
    }
    means[i] <- mean(your_data[,i], na.rm= TRUE)
    sds[i] <- stats::sd(your_data[,i],na.rm=TRUE)
  }
  result <- data.frame(cbind(means,sds))
  colnames(result) <- c("Mean", "Std. Dev.")
  rownames(result) <- paste0("Column", 1:ncol(your_data))
  return(result)
}
