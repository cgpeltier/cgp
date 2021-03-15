#' @title get_envir_sizes
#' @description Returns size of each object in environment
#'

#' @return Environment object sizes
#' @importFrom tibble tibble
#' @importFrom jsonlite fromJSON
#' @importFrom stringr str_replace_all
#' @importFrom magrittr "%>%"
#' @importFrom stringr str_c
#' @importFrom purrr map
#' @export



weigh_environment <- function(){
  
  purrr::map_dfr(ls(), ~ tibble(.x) %>% dplyr::mutate(size = object.size(get(.x))))
  
}


#' @export




