FROM python:3.6

# update apt-get
RUN apt-get update -y && apt-get upgrade -y

# Install Nodejs 8
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# install dev tool
RUN apt-get install -y vim

# install aws-cli
RUN pip install awscli

# install serverless framework
RUN npm install -g serverless

# change work directory
RUN mkdir -p /app
WORKDIR /app