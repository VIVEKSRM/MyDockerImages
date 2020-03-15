# Define the base image on top of which we are going to customize
FROM ubuntu:latest

# Define the Createor and Maintainer of this image
MAINTAINER Vivek Ranjan <Vivek.Ranjan@cicd.com>

# Run the command to install apache as a prerequisite
RUN apt-get update && apt-get install -y apache2

# Copy the file from the Current Host Directory to the Container
COPY index.html /var/www/html/index.html

# Say that our application is exposing a Port
EXPOSE 80

# the Default command and the Command to start the app in our container
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
