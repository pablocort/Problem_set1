  # Elaborado por: Team RPSC
  # Fecha: 
  
  
  #
  #
  cat("\f")
  rm(list=ls())
  options('scipen'=100, 'digits'=4) # Forzar a R a no usar e+
  
  
  #
  # Cambiar este directorio
  setwd("~/uniandes/big data y machine learning/git-and-github-fundamentals-pablocort/problem_set_1") 
  getwd()
  
  
  
  
  #
  #
  # Instalar las librerias que vamos a usar en la clase de hoy
  paquetes = c("tidyverse",'readxl','haven')
  for ( paquete in paquetes){
    if (length(grep(paquete,installed.packages()[,1])) == 0 ){ install.packages(paquete) ; print(paste0('La libreria ', '"', paquete ,'"', ' ha sido instalada.'))}
    else { print(paste0('La libreria ', '"', paquete ,'"', ' ya est√° instalada.'))}
    rm(paquete)
  }
  
  #### 0.3. Llamar las librerias
  sapply(paquetes,require,character.only=T) 
  rm(paquetes)
  
  
  
  
  housing <- read.csv2(file = 'stores/co_properties.csv' ,sep = ",", header = T, stringsAsFactors = F) 
  
  #
  #An·lisis de duplicados
  nrow(distinct(housing, id))
  
  # 
  #An·lisis de missing values
  ggplot(housing, aes(x = price)) + 
    
    geom_histogram( position = position_identity(), alpha = 0.3, 
                    bins = 45, col = "gray") +
    
    scale_x_continuous('Precio de apartamentos',
                       limits = c(0, 4000000000,500000000),
                       breaks = seq(0, 4000000000,500000000),
                       labels = scales::dollar) + 
    
    scale_y_continuous('Freq', breaks = seq(0,200000,20000),
                       limits = c(0,120000,20000))
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

