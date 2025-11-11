FROM python:3.10-slim

WORKDIR /app

RUN pip install --no-cache-dir mcp-server-odoo

EXPOSE 3000

CMD ["mcp-server-odoo"]
