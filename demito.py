import polars as pl

# Cargar un CSV desde el contenedor (asegúrate de que data.csv esté en la misma carpeta que el Dockerfile)
df = pl.read_csv("ejemplo.csv")

# Filtrar y mostrar datos
filtro = df.filter(pl.col("edad") > 30)
print(filtro)
