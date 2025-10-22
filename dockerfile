FROM python:3.11-slim



WORKDIR /app



# Copy dependencies first

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt



# Copy the rest of your app

COPY . .



EXPOSE 6000



CMD ["python", "app.py"]

