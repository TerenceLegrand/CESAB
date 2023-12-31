
#' Download dataset
#'
#' @param database 
#' @param url_database 
#' @param file_format 
#' @param data_name 
#'
#' @return 
#' @export

download_data <- function(database = NULL, url_database = NULL, file_format = NULL, data_name = NULL) {
  
  if (is.null(database) == TRUE) {
    
    destfile_path <- here::here("data", paste0(data_name,file_format))
    utils::download.file(url =  url_database,
                         destfile = destfile_path)
    
  } else {
    
    dir.create(here::here("data", database))
    destfile_path <- here::here("data", database, paste0(data_name,file_format))
    utils::download.file(url =  url_database,
                         destfile = destfile_path)
    
  }
  
}
