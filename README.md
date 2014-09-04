# HBP

## Introduction

R functions for projects within HBP.


## Installation

To install the GitHub version:

```R
require2 <- function (package, ...) {
	if (!require(package)) install.packages(package); library(package)
}

##### run this if you are using Windows and don't have Rtools installed
## require2('installr')
## install.Rtools() 

# Load devtools:
require2("devtools")
devtools::install_github('talgalili/HBP')
```

And then you may load the package using:
```R
library(HBP)
```

## Usage

Look at the example in:

```R
?ID3
```

## Contact

You are welcome to:

* submit suggestions and bug-reports at: <https://github.com/talgalili/HBP/issues>
* send a pull request on: <https://github.com/talgalili/HBP/>
* compose a friendly e-mail to: <tal.galili@gmail.com>

