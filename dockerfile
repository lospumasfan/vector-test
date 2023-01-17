# syntax=docker/dockerfile:1

# set the base image
FROM python:3.10

# author
LABEL name="Ling W"

# extra metadata
LABEL version="1.0"
LABEL description="Vector Image dockerfile"

WORKDIR /src

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# install python3
RUN apt-get install -qy python3

# add the application to the container
ADD /src/ /app/
