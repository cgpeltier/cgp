#' @title get_col_sizes
#' @description Returns column sizes as MBs
#'
#' @param data Dataframe

#' @return Janes equipment data.
#' @importFrom purrr imap_dfr
#' @importFrom tibble tibble
#' @importFrom jsonlite fromJSON
#' @importFrom stringr str_replace_all
#' @importFrom magrittr "%>%"
#' @importFrom stringr str_c
#' @importFrom purrr map
#' @export



get_col_classes <- function(data, view = TRUE){
  
  dplyr::summarize(data, dplyr::across(tidyselect::everything(), object.size)) %>% 
    tidyr::pivot_longer(tidyselect::everything()) %>%
    dplyr::mutate(value = value/1000000) %>%
    dplyr::rename(megabytes = value, col_name = name)
  
}


#' @export
