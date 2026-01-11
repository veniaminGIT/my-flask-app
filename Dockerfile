# Folosim o imagine de bază Python oficială
FROM python:3.11-slim

# Setăm directorul de lucru în container
WORKDIR /app

# Copiem fișierul cu dependențe
COPY requirements.txt .

# Instalăm dependențele
RUN pip install --no-cache-dir -r requirements.txt

# Copiem codul aplicației
COPY app.py .

# Expunem portul pe care rulează aplicația
EXPOSE 5001

# Comanda care pornește aplicația
CMD ["python", "app.py"]
