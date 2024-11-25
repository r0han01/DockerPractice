# Use the official Node.js image as the base image
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local files to the container's /app directory
COPY . /app

# Install dependencies (in this case, there are none, but it's good practice)
RUN npm install

# Expose the app on port 3000 (or any port you want to use, but we're not using any server here)
EXPOSE 3000

# Set the default command to run your app
CMD ["node", "print_names.js"]
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any necessary dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Python script
CMD ["python", "read_names.py"]
