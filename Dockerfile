# Pull official base image
FROM python:3.11.4-slim-buster

# Define environment variable for Docker home directory
ENV DockerHOME=/home/gabriel/Sistema_de_Notificacao_de_Notas_de_Provas/Sistema_de_Notificacao

# Create Docker home directory
RUN mkdir -p $DockerHOME

# Set working directory
WORKDIR $DockerHOME

# Set environment variables for Python
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install dependencies
RUN pip install --upgrade pip

# Copy the whole project to your Docker home directory
COPY . $DockerHOME

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the port where the Django app runs
EXPOSE 8000

# Add a script to handle the initial setup and migrations
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use the entrypoint script to initialize the container
ENTRYPOINT ["/entrypoint.sh"]
