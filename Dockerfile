# Base image (OS + Python runtime)
FROM python:3.12-slim

# Working directory inside the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

# Configuration: unbuffered logs, document the port
ENV PYTHONUNBUFFERED=1
EXPOSE 5000

# Command run when the container starts
CMD ["python", "app.py"]