#' @title alert_me
#' @description Returns alert in command prompt
#'

#' @return Janes equipment data.
#' @importFrom purrr imap_dfr
#' @importFrom tibble tibble
#' @importFrom jsonlite fromJSON
#' @importFrom stringr str_replace_all
#' @importFrom magrittr "%>%"
#' @importFrom stringr str_c
#' @importFrom purrr map
#' @export





alert_me <- function(){

  system('CMD /C "ECHO The R process has finished running && PAUSE"', invisible=FALSE, wait=FALSE)

}

#' @export
