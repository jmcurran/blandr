#' @title Function to load example data sets
#'
#' @description Loads example data sets from the internet.
#'
#' @note Dataset 1 ("1","PEFR","pefr") - Bland Altman PEFR dataset (from \code{dataset.pefr})
#' @note Dataset 2 ("2","o2sats","sealey") - Selaey oxygen saturations dataset (from \code{dataset.o2sats})
#' @note Dataset 3 ("3","fibre","darbela") - D'arbela mean velocity of circumferential fibre shortening dataset (from \code{dataset.fibre})
#' @note Dataset 4 ("4","sbp","close") - Close systolic blood pressure dataset (from \code{dataset.sbp})
#'
#' @author Deepankar Datta <deepankardatta@nhs.net>
#'
#' @param dataset.name Loads the requisite data set. See the description for further details.
#'
#' @return example.dataset A data frame containing the requisite dataset
#'
#' @include dataset.pefr.r
#' @include dataset.o2sats.r
#' @include dataset.fibre.r
#' @include dataset.sbp.r
#'
#' @examples
#' dataset.load( "pefr" )
#' pefr.data <- dataset.load( "pefr" )
#'
#' @export

dataset.load <- function( dataset.name ) {

  # Dependent on the dataset.name parameter, loads the correct data set
  # PEFR
  if( dataset.name=="pefr" ) { example.dataset <- dataset.pefr() }
  if( dataset.name=="PEFR" ) { example.dataset <- dataset.pefr() }
  if( dataset.name=="1" ) { example.dataset <- dataset.pefr() }
  # Oxygen saturations
  if( dataset.name=="o2sats" ) { example.dataset <- dataset.o2sats() }
  if( dataset.name=="sealey" ) { example.dataset <- dataset.o2sats() }
  if( dataset.name=="2" ) { example.dataset <- dataset.o2sats() }
  # Fibre velocity
  if( dataset.name=="fibre" ) { example.dataset <- dataset.fibre() }
  if( dataset.name=="darbela" ) { example.dataset <- dataset.fibre() }
  if( dataset.name=="3" ) { example.dataset <- dataset.fibre() }
  # Systolic blood pressure
  if( dataset.name=="sbp" ) { example.dataset <- dataset.sbp() }
  if( dataset.name=="close" ) { example.dataset <- dataset.sbp() }
  if( dataset.name=="4" ) { example.dataset <- dataset.sbp() }

  # STOP condition if no valid dataset name
  # Works this out by seeing if the example.dataset variable has been created
  if( !exists("example.dataset") )
    stop("A valid dataset needs to be specified")

  # Returns the data
  return(example.dataset)

}
