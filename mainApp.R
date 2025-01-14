library(rmarkdown)

# Configurar la cuenta
rsconnect::setAccountInfo(
  name='ipf97', 
  token='22ECC4D2AD54B18CAEF7F9589EE175C0', 
  secret='uZoAJD0ghQYnRGz9Yh8Zxpt9Gu94Qc6bcKDKAS3u'
)

# Definir el nombre de la aplicación y la cuenta
app_name <- "StoryTellingApp_Airbnb"
account_name <- "ipf97"

# Verifico que los archivos existan en el directorio
setwd("/Users/marta/PR_PARTE2_VISUALIZACION")
print(list.files())

# Desplegar la aplicación
rsconnect::deployApp(
  appDir = getwd(),
  appFiles = c("Storytelling_PR_Parte2.Rmd", "Data"),
  appPrimaryDoc = "Storytelling_PR_Parte2.Rmd",
  appName = app_name
)
