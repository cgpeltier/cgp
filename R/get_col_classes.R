#' @title get_col_classes
#' @description Returns View() with all column names and classes
#'
#' @param data Dataframe
#' @param view Whether to automatically view results in RStudio

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
  
  if(view == TRUE){
    
    data %>%
      purrr::imap_dfr(~ tibble(colname = .y, classes = class(.x) %>%
                          str_c(collapse = ", "))) %>%
      View("col_names")
    
  } else {
     
     data %>%
       purrr::imap_dfr(~ tibble(colname = .y, classes = class(.x) %>%
                           str_c(collapse = ", ")))}
    
}


# get_col_classes <- function(data, view = TRUE){
#   
#   dplyr::summarize(data, dplyr::across(tidyselect::everything(), object.size)) %>% 
#     tidyr::pivot_longer(tidyselect::everything()) %>%
#     dplyr::mutate(value = value/1000000) %>%
#     dplyr::rename(megabytes = value, col_name = name)
#   
# }


#' @export
