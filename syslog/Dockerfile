###############################################################################
# Based on Ubuntu
###############################################################################

FROM ubuntu
MAINTAINER Shelton Tang <shelton.ms@gmail.com>


# Add the application resources URL
# RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list

# Update the sources list
RUN apt-get update

# Install basic applications
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential

# Install Python and Basic Python Tools
RUN apt-get install -y python python-dev python-distribute python-pip

# Fetch the application from github
RUN git clone https://github.com/sheltont/bqauth.git /var/bqauth

RUN pip install -r /var/bqauth/requirements.txt

# Expose the port
EXPOSE 514



# Set the default directory where CMD will execute
WORKDIR /var/bqauth

# Mount the log folder
VOLUME ["/var/bqauth/logging"]

# Start syslog listenr
CMD python syslog_listener.py
