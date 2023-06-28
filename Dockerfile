# Define la imagen base
FROM python:3.9

# Establece el directorio de trabajo en la raíz de la aplicación
WORKDIR /app

# Copia los archivos de la aplicación al directorio de trabajo
COPY . /app

# Instala las dependencias de la aplicación
RUN pip install -r requirements.txt

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 5000

# Define el comando para ejecutar la aplicación
CMD ["python", "app.py"]
