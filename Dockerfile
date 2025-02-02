FROM ubuntu:latest
MAINTAINER Nghia Truong "hieunghia@example.com"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential
ADD . /flask_app
WORKDIR /flask_app
RUN apt install -y python3-flask
ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]
