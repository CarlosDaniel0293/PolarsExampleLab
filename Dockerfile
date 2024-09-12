# Usar una imagen base de Python
FROM python:3.9-slim

# Crear un directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de requisitos de Python (si usas uno)
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código de la aplicación a la imagen
COPY . .

# Instalar Polars
RUN pip install polars

# Definir el comando que se ejecutará al iniciar el contenedor
CMD ["python", "demito.py"]
