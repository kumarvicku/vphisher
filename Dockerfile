# Dockerfile

# Author       : kumarvicku
# Github       : https://github.com/Kumarvicku
# Date         : 21/1/2022
# Main Language: Python

# Download and import main images

# Operating system
FROM debian:10
# Main package
FROM python:3

# Author info
LABEL MAINTAINER="https://github.com/kumarvicku/vphisher"

# Working directory
WORKDIR vphisher/
# Add files 
ADD . /vphisher

# Installing other packages
RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install --no-install-recommends -y php
RUN apt-get install -y unzip
RUN apt-get clean

# Main command
CMD ["python3", "vphisher.py"]

## Wanna run it own? Try following commnads:

## "cd vphisher", "docker build . -t vphisher:1.0", "docker run --rm -it vphisher:1.0"
