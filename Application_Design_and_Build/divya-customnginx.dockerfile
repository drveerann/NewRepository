# from which base image you want to start building your custom image
FROM ubuntu:latest

# label information for your image - identify the maintainer of the image
LABEL version="4.0.0"
LABEL maintainer="divya.divs09@gmail.com"

# run/update/upgrade latest packages on your image to current one
RUN apt-get update
RUN apt-get upgrade -y

# install nginx web server on your image
RUN apt-get install nginx -y

# expose port number
EXPOSE 80

# execute commands to start nginx on your container
CMD ["nginx", "-g", "daemon off;"]
