# Use an official Python runtime as a parent image
FROM python:3.10-slim
WORKDIR /app

# lists all the dependencies needed for your app. Adjust app.py to the main entry file of your application.
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
