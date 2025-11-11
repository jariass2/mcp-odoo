FROM python:3.11-slim

WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código del servidor
COPY . .

# Exponer puerto (opcional para modo HTTP)
EXPOSE 3000

# Comando por defecto (modo stdio)
CMD ["python", "-m", "odoo_mcp"]
