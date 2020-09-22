# Exploración Dataverse

pacman::p_load(dataverse)
Sys.setenv("DATAVERSE_SERVER" = "dataverse.harvard.edu")


# Ejemplo

dataset <- get_dataset("doi:10.7910/DVN/ARKOTI")
dataset$files[c("filename", "contentType")]
code3 <- get_file("chapter03.R", "doi:10.7910/DVN/ARKOTI")
writeBin(code3, "chapter03.R")


writeBin(get_file("constructionData.tab", "doi:10.7910/DVN/ARKOTI"),
         "constructionData.dta")
writeBin(get_file("PESenergy.csv", "doi:10.7910/DVN/ARKOTI"),
         "PESenergy.csv")

# Elsoc

## Tratando directamente desde ENACOES, ola 1

elsoc <- get_dataset("doi:10.7910/DVN/ZPJ5VX")
elsoc$files[c("filename", "contentType")]
writeBin(get_file("ENACOES_2014_V5.RData", "doi:10.7910/DVN/ZPJ5VX"),
         "ENACOES_2014_V5.RData")

load("ENACOES_2014_V5.RData")

# Works!

