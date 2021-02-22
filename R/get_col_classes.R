#' @title get_col_classes
#' @description Returns View() with all column names and classes
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



get_col_classes <- function(data){
  data %>%
    imap_dfr(~ tibble(colname = .y, classes = class(.x) %>%
                        str_c(collapse = ", ")))

}


#' @export
