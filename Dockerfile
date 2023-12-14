# Use the official Python image as the base image
FROM python:3.8-slim 

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the requirements file into the container at /app
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Copy the content of the local src directory to the working directory
COPY . .

# Expose port 5000 to the outside world


# Command to run the application
CMD ["python", "web.py"]
