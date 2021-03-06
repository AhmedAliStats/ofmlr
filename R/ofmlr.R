#' Fit online finite mixtures of logistic regression models
#'
#' The \code{ofmlr} package allows one to fit, online (or in a data stream) an multiple finite 
#' mixtures of logistic regression models. The main workhorse \code{\link{online_log_mixture}} 
#' and its utility functions (such as \code{\link{add_observation}} can be used to fit a model. 
#' The \code{\link{multi_online_log_mixture}} object allows one to fit multiple models in paralel
#' and compare their outcomes.
#'
#' @section ofmlr functions:
#' Next to standards like \code{plot} and \code{summary} the package implements
#' the folling functions
#' \itemize{
#' 	\item \code{\link{online_log_mixture}}: Constructor for new ofmlr object.
#'	\item \code{\link{multi_online_log_mixture}}: Constructor for an object containing multiple ofmlr models.
#'	\item \code{\link{add_model}}: Add additional models to a multi_online_log_mixture object.
#'	\item \code{\link{add_observation}}: Add observations to a model and update parameters
#' }
#' The package also contains the following utility functions:
#' \itemize{
#'	\item \code{\link{generate_mixture}}: Utility function to create a mixture dataset.
#'	\item \code{\link{generate_probabilty_vector}}: Function to create a probablity vector.
#'	\item \code{\link{inv_logit}}: The inverse logit function.
#' }
#' 
#' @examples
#' M1 <- online_log_mixture(3,3, trace=1)
#' for(i in 1:10000){ 	
#' 	X <- runif(3,-2,2)
#' 	y <- rbinom(1, 1, inv_logit(c(0,-2,2)%*%X))
#' 	M1 <- add_observation(M1, y, X, 0)
#' }
#' plot(M1, params=TRUE)
"_PACKAGE"

# document()