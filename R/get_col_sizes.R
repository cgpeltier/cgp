#' @title weigh_cols
#' @description Returns column sizes as MBs
#'
#' @param data Dataframe

#' @return Sizes of columns in DF as MBs
#' @importFrom purrr imap_dfr
#' @importFrom tibble tibble
#' @importFrom jsonlite fromJSON
#' @importFrom stringr str_replace_all
#' @importFrom magrittr "%>%"
#' @importFrom stringr str_c
#' @importFrom purrr map
#' @export


weigh_cols <- function(data, view = TRUE){
  
  dplyr::summarize(data, dplyr::across(tidyselect::everything(), ~ object.size(.x))) %>% 
    tidyr::pivot_longer(tidyselect::everything()) %>%
    dplyr::mutate(value = as.numeric(value)) %>%
    dplyr::rename(megabytes = value, col_name = name)
  
}


#' @export
