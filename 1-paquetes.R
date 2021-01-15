#  Paquetes ------------------------------------------

instalados <- installed.packages()[,1]
names(instalados) <- NULL

packages_1 <- c("readxl", "tools", "tidyverse")

verificacion_1 <- packages_1%in%instalados

if(sum(verificacion_1) != length(packages_1)){
  install.packages(packages_1[verificacion == F])
}

# Cargue ---------------------------------------------

library(readxl)
library(tools)
library(tidyverse)


if(exists("packages") == F){
  cat("No se cargar�n paquetes adicionales")
} else{
  
  verificacion_2 <- packages%in%instalados
  if(sum(verificacion_2) != length(packages)){
    install.packages(packages[verificacion_2 == F])
  }else{
    packages_2 <- packages
    lapply(packages_2, library, character.only = TRUE)
  }
}