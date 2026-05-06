# Usa una imagen oficial de Python como base
FROM python:3.9-slim

# Establece variables de entorno
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos al contenedor
COPY requirements.txt .

# Instala las dependencias necesarias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto 5000 en el que escucha Flask
EXPOSE 5000

# Comando para ejecutar la aplicación cuando inicie el contenedor
CMD ["python", "app.py"]
