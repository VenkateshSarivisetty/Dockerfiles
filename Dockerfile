# Ubuntu with nginx 
FROM Ubuntu:latest

LABEL version="0.0.1"
LABEL maintainer="Venkatesh"

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y

EXPOSE 90
CMD [ "nginx","-g","daemon off;"]

# nginx by copying the a single file
FROM nginx:latest

LABEL version="0.0.1"
LABEL maintainer="venkatesh"

WORKDIR /usr/share/nginx/ # wHERE YOU WANT TO START THE FIRST command

VOLUME [ "/data" ]

COPY addressbook.war addressbook.war
EXPOSE 32766

ENTRYPOINT [ "nginx","-g","daemon off;"]

#Assignment of dockerfile
#create a python file under root directory before creating a dockerfile
#FROM python:latest 
# Default Label values
#LABEL version="0.0.1" 
#LABEL maintainer="venkatesh"
# Adding the python program to root directory of container
#ADD python.py /
# running the pythong program using command
#CMD [ "python","./python.py" ]

#Assignment on Data Volumes








