#' @title write_janes
#' @description Writes CSVs
#'
#' @param data data
#' @param file_name Name of file
#' @param file_type CSV or XLSX
#'
#' @return Writes files to
#' @importFrom dplyr rename_with
#' @importFrom janitor clean_names
#' @export








write_janes <- function(data, file_name, file_type = "csv") {

  if(file_type = "csv"){

    data %>%
      write.csv(file = paste0("./output/", file_name), na = "",  row.names = FALSE)

    }

}


#' @export
