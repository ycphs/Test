## Wenn nicht installiert dann installieren
library(data.table)
library(openxlsx)
# test
# test
# install.packages('data.table',dependencies = T)
# install.packages('openxlsx',dependencies = T)

## Wenn nicht installiert dann installieren

# ?assign

x <- fread("MODELL1.DAT", header = T)


for (i in seq_along(x$Wert))
{
      assign(x$Variable[i], x$Wert[i])
}




x <- read.xlsx("parameter.xlsx")
setDT(x)



for (i in seq_along(x$Wert))
{
      assign(x$Variable[i], x$Wert[i])
}