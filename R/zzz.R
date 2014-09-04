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



# 
# 
# .onLoad <- function(libname, pkgname){
#    # Thanks for Romain: http://stackoverflow.com/questions/4369334/first-lib-idiom-in-r-packages
#    
#    # adding and removing menus from the Rgui when loading and detaching the library
#    # setHook(packageEvent("installr", "attach"), {function(pkgname, libpath) {add.installr.GUI()}  } )
#    setHook(packageEvent("dendextend", "detach"), {function(pkgname, libpath) {remove_dendextend_options()}  } )
# 
#    # set default options for d3 dendrogram.
#    d3dendro_defaults(D3DENDRODEFAULTS)
# }


.onAttach <- function(lib, pkg,...){
#    assign_dendextend_options()
#   library(RWeka)
  
#   fun_fails <- tryCatch(ID3(), error = function(e) TRUE)
#   if(fun_fails) {
#     load_simpleEducationalLearningSchemes()
#   }  
  
  
  
#   WPM("refresh-cache")
#     WPM("list-packages", "available") ## look for id3
    ## install package providing id3
#   RWeka::WPM("install-package", "simpleEducationalLearningSchemes")
#     ## load the package
#   RWeka::WPM("load-package", "simpleEducationalLearningSchemes")
    ## make classifier
#     WPM("list-packages", "installed", "simpleEducationalLearningSchemes")
#     
#     ID3 <- make_Weka_classifier("weka/classifiers/trees/Id3")
  
  
  
  packageStartupMessage(HBPWelcomeMessage())  
   
#    assign_dendextendRcpp_to_dendextend()
   
   
}




HBPWelcomeMessage <- function(){
   library(utils)   
   
   paste("\n",     
         "Welcome to HBP version ", utils::packageDescription("HBP")$Version, "\n",
#          "\n",
#          "Type ?HBP to access the overall documentation and\n",
#          "vignette('dendextend') for the package vignette.\n",
#          "You can execute a demo of the package via: demo(dendextend)\n",
#          "\n",  
#          "More information is available on the dendextend project web-site:\n",
#          "https://github.com/talgalili/dendextend/\n",
#          "\n",               
#          "Contact: <tal.galili@gmail.com>\n",
#          "Suggestions and bug-reports can be submitted at: https://github.com/talgalili/dendextend/issues\n",
#          "\n",
         "\t\t\tTo suppress the this message use:\n",
         "\t\t\tsuppressPackageStartupMessages(library(HBP))\n",  
         sep="")
}





# using "zzz.r" like in devtools...

# When adding new files, make sure they are listed in DESCRIPTION:
# Collate:
#    'create.global.library.r'
# 'install.r'
# 'updateR.r'




# library(dendextend)
# environmentIsLocked(as.environment("package:dendextend"))
# lockEnvironment(env=as.environment("package:dendextend"), bindings = FALSE)
# lockEnvironment(env=as.environment("package:dendextend"), bindings = TRUE)


# IMPORTANT NOTICE: this will add Collate to the DESCRIPTION file, and if any new r file is added - it will need to be updated.
# Collate:
# +    'create.global.library.r'
# +    'install.r'
# +    'updateR.r'
# +    'zzz.r'


############
## OLD
# Steps:
# http://r.789695.n4.nabble.com/vignettes-problems-with-PDF-compaction-td4664909.html
# 1) install gs - http://www.ghostscript.com/download/gsdnld.html
# 2) find where it is, and update R_GSCMD:
# Sys.setenv(R_GSCMD="C:\\Program Files\\gs\\gs9.10\\bin\\gswin64c.exe")
# Sys.setenv(R_GSCMD="C:\\Program Files\\gs\\gs9.14\\bin\\gswin64c.exe")
# Sys.setenv(R_GSCMD="D:\\temp\\qpdf-5.1.2\\bin\\qpdf.exe")
# Sys.getenv("R_GSCMD")
# 3) Check that it works: 
# system2(Sys.getenv("R_GSCMD"), args="--version") 
# 4) use:
# library(tools)
# tools::compactPDF("inst\\doc\\dendextend-tutorial.pdf", gs_quality="printer") 
# tools::compactPDF("inst\\doc\\dendextend-tutorial.pdf", 
# qpdf = "D:\\temp\\qpdf-5.1.2\\bin\\qpdf.exe", gs_cmd = "C:\\Program Files\\gs\\gs9.14\\bin\\gswin64c.exe") 
#### tools::compactPDF("inst\\doc\\dendextend-tutorial.pdf", gs_quality="ebook") 
#### tools::compactPDF("inst\\doc\\dendextend-tutorial.pdf", gs_quality="screen") 
#### tools::compactPDF("vignettes\\dendextend-tutorial.pdf") 
###   compacted 'dendextend-tutorial.pdf' from 964Kb to 737Kb
#### tools::compactPDF("vignettes\\dendextend-tutorial.pdf", gs_quality="ebook") 

# For checking:
# 1) get qpdf
#     http://sourceforge.net/projects/qpdf/files/
# 2) put it somewhere
# 3) set R_QPDF
#  Sys.setenv(R_QPDF="C:\\Rtools\\qpdf-5.1.1\\bin\\qpdf.exe")
#  Sys.which(Sys.getenv("R_QPDF", "qpdf"))

# Also, make sure to add:
# options(repos=c("http://cran.rstudio.com", "http://www.stats.ox.ac.uk/pub/RWin" ))
# to D:\R\R-devel\etc\Rprofile.site

##############







##########
##########
##########
##########
## NEW
# How to deal with compression:
# 1) Download the latest qpdf: http://sourceforge.net/projects/qpdf/files/  (and place it somewhere)
# 2) Install gs - http://www.ghostscript.com/download/gsdnld.html
# 3) Run the following:

# tools::compactPDF("inst\\doc\\dendextend-tutorial.pdf", 
#                   qpdf = "C:\\Program Files (x86)\\qpdf-5.1.2\\bin\\qpdf.exe", 
#                   gs_cmd = "C:\\Program Files\\gs\\gs9.14\\bin\\gswin64c.exe",
#                   gs_quality="ebook") 

##########
##########
##########








# 
# # Run once:
# shell('set PATH=%PATH%;"C:\\Program%20Files%20(x86)\\Git\\bin"', intern = TRUE)
# shell("echo %PATH% ", intern= TRUE)
# 
# system('set PATH=%PATH%;C:\\xampp\\php')
# 
# 
# 
# # Creating a changelog using git
# First make sure git is in the path. Run the 
# following using cmd.exe, as admin:
# setx PATH "C:\\Program Files (x86)\\Git\\bin"
# 
# Then - run the script to create the ChangeLog before shipping the package.
# # http://stackoverflow.com/questions/10330425/how-do-i-export-a-git-log-to-a-text-file
# # http://stackoverflow.com/questions/3523534/good-ways-to-manage-a-changelog-using-git
# # http://www.commandlinefu.com/commands/view/12420/generate-a-change-log-with-git
# shell("git log --decorate > ChangeLog", intern = T)

# Modify it using: http://git-scm.com/book/en/Git-Basics-Viewing-the-Commit-History
#         http://stackoverflow.com/questions/9007181/custom-log-format-omits-newline-at-end-of-output
# shell('git log --graph --stat --date=iso > ChangeLog', intern = TRUE)
# use this:
# shell('git log --graph --stat --date=short --pretty=format:"%ad(%an) %s |%h" > ChangeLog', intern = TRUE)
# 
# system.PATH()
# shell("path")


# shell("echo %PATH% ", intern= TRUE)
# library(rmarkdown)
# render("NEWS",clean = TRUE,output_format = "html_document")








# when a function is renamed, its document in man must be removed - otherwise it may cause problems with the built check (it will try to run the code in the example, and will fail.)
# When all is done, run:
# library(devtools)
# check()
# browseURL(tempdir())
### http://www.rstudio.com/ide/docs/packages/build_options
# 
# check(build_args="--no-build-vignettes --no-manual", args = "--no-examples --no-build-vignettes --no-manual",  cran = FALSE, cleanup = FALSE)
# check(build_args="--no-build-vignettes ", args = "--no-build-vignettes",  cran = FALSE, cleanup = FALSE)
# check(args="--as-cran")
# check("D:/Dropbox/aaaa good R code/AA - My packages/dendextend", args="--as-cran")
#                 Thanks to: http://stackoverflow.com/questions/10017702/r-cmd-check-options-for-more-rigorous-testing-2-15-0


# shell('git log --graph --stat --date=short --pretty=format:"%ad(%an) %s |%h" > ChangeLog', intern = TRUE)
# file.copy("NEWS", "NEWS.md",overwrite = TRUE)
# build_win(version="R-devel")
# release()
