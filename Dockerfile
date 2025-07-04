# Use an official Python base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy your application code
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5000

# Set the command to run the app
CMD ["python", "app.py"]
