###############################################################################
# Based on Ubuntu
###############################################################################

FROM ubuntu
MAINTAINER Shelton Tang <shelton.ms@gmail.com>

########################## BEGIN INSTALLATION #################################

# Add the application resources URL
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip

# Fetch the application from github
RUN git clone --branch v0.1 https://github.com/sheltont/bqauth.git /var/bqauth
RUN cd /var/bqauth
# Get pip to download and install requirements:
RUN pip install uwsgi
RUN pip install -r requirements.txt



# Expose ports
EXPOSE 8080

# Set the default directory where CMD will execute
WORKDIR /var/bqauth

# Set the default command to execute 
# when creating a new container
# i.e. using uwsgi to serve the application
CMD python auth_handler.py 
