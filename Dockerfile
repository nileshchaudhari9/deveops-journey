# Use the official Python image as the base image
FROM python:3.9-slim

# Set environment variables for Python to run in unbuffered mode
ENV PYTHONUNBUFFERED 1

# Set the working directory inside the container
WORKDIR /app

# Copy the project files into the container
COPY requirements.txt .
COPY ./app .

# Install project dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that FastAPI will run on (change it if needed)
EXPOSE 8000

# Command to run the FastAPI application with Uvicorn
CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000"]