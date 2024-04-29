# Use an existing qgis-server docker image as a base
FROM qgis/qgis-server:ltr

# Install necessary packages
RUN apt-get update && apt-get install -y wget unzip

# Set the working directory
WORKDIR /io

# Add the script to the Docker image and run it
COPY start.sh .
RUN chmod +x start.sh
RUN ./start.sh

# The command to run when the container starts
CMD ["/bin/sh" "-c" "/usr/local/bin/start-xvfb-nginx.sh"]
