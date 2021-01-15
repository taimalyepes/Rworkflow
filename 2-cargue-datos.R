# Carga de Datos -------------------------------------

extension <- file_ext(ruta)

data <- switch (extension,
                 "csv"  = read.table(ruta, header = T, sep=","),
                 "data" = read.table(ruta, sep=","),
                 "txt"  = read.delim(ruta),
                 "xlsx" = read_xlsx(ruta, 1))


View(data)