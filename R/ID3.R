# Copyright (C) Tal Galili
#
# This file is part of the HBP R package.
#
# HBP is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# HBP is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
#  A copy of the GNU General Public License is available at
#  http://www.r-project.org/Licenses/






#' @title ID3 - an R/Weka Classifier Trees
#' @export
#' @param formula a symbolic description of the model to be fit.
#' @param data an optional data frame containing the variables in the model.
#' @param subset an optional vector specifying a subset of observations to be used in the fitting process.
#' @param na.action a function which indicates what should happen when the data contain NAs. See \link{model.frame} for details.
#' @param control an object of class \link{Weka_control} giving options to be passed to the Weka learner. Available options can be obtained on-line using the Weka Option Wizard \link{WOW}, or the Weka documentation.
#' @param ... not used.
#' @source Heavily inspired by the code in the 
#' function \link[RWeka]{J48}, and the help of Ista Zahn.
#' @return 
#' A list inheriting from classes Weka_tree and Weka_classifiers. 
#' See \link[RWeka]{J48} for a list of the components.
#' @seealso \link[RWeka]{J48}
#' @examples
#' \dontrun{
#'  library(RWeka)
#'  DF2 <- read.arff(system.file("arff", "contact-lenses.arff", package = "RWeka"))
#'  load_simpleEducationalLearningSchemes()
#'  ID3(`contact-lenses` ~ ., data = DF2)
#' }
#' 
ID3 <- RWeka::make_Weka_classifier("weka/classifiers/trees/Id3")




#   local({ 
#   #now we can use the function:  
# })
  
  
#' @export
load_simpleEducationalLearningSchemes <- function() {
#   fun <- RWeka::make_Weka_classifier("weka/classifiers/trees/Id3")
  RWeka::WPM("refresh-cache")
  RWeka::WPM("install-package", "simpleEducationalLearningSchemes")
  #     ## load the package
  RWeka::WPM("load-package", "simpleEducationalLearningSchemes")
  cat("\n")
}





