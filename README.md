# Rworkflow

Some basic scripts to improve my workflow in [R](https://www.r-project.org/)

The repository is currently comprised of two scripts.
 1. [`paquetes.R`](https://raw.githubusercontent.com/taimalyepes/Rworkflow/master/1-paquetes.R)
 2. [`cargue-datos.R`](https://raw.githubusercontent.com/taimalyepes/Rworkflow/master/2-cargue-datos.R)
 
As only requirement the user must install the [`devtools`](https://cran.r-project.org/web/packages/devtools/index.html) package. 
 
This could be achieved by running the following code,

```r
if("devtools"%in%installed.packages()[,1]){ # Verifies if the package is installed
  
  cat('devtools is already installed') # If it's, then return this message
  suppressMessages(library(devtools))  # and loads the package at issue
  
} else { # Otherwise, the package is installed and loaded
  
  install.packages("devtools")
  suppressMessages(library(devtools))
  
}
```
## `paquetes` 
The first script loads the packages specified by the user and install additional ones to manipulate tabular data and to create visualizations mostly from the [`tidyverse`](https://github.com/tidyverse/tidyverse) packages collection. These must be passed as a vector of name `packages`. For Example, if I wanted to use the packages `FactoMineR`, `factoextra`, `fastDummies`, then I ought to define a vector wich contains the name of these three; i.e.,

```r
packages <- c('FactoMineR', 'factoextra', 'fastDummies')
```

And then call the first script using the `devtools` function `source_url` as follows

```
source_url("https://raw.githubusercontent.com/taimalyepes/Rworkflow/master/1-paquetes.R")
```

## `cargue-datos`

After the user specifies a path where the data it's stored, and calls the script then the data is loaded and returns a `View` of it The path to the data file must be specified as a string of name `ruta` as follows

```r
ruta <- "~/path/of/file.extension"
``` 

The scripts currently handles the extensions `.xlsx`, `.csv`, `.data` and `.txt`.
