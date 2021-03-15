#' @title weigh_environment
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



weigh_environment <- function(env){
  
  purrr::map_dfr(env, ~ tibble::tibble("object" = .) %>% 
                   dplyr::mutate(size = object.size(get(.x)),
                                 size = as.numeric(size),
                                 megabytes = size / 1000000))
  
}


#' @export




