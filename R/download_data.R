
#' Download dataset
#'
#' @param database 
#' @param url_database 
#' @param file_format 
#' @param data_name 
#'
#' @return NULL
#' @export NULL 
#'
#' @examples
#' 
download_data <- function(database = NULL, url_database = NULL, file_format = NULL, data_name = NULL) {
  
  dir.create(here::here("data", database))
  
  destfile_path <- here::here("data", database, paste0("data",data_name,file_format))
  
  utils::download.file(url =  url_database,
                       destfile = destfile_path)
  
}
