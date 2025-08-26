# Use official Python image
FROM python:3.9-slim
 
# Set work directory
WORKDIR /app
 
# Install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
 
# Copy app code
COPY . .
 
# Expose Flask port
EXPOSE 5000
 
# Run app
CMD ["python", "app.py"]
