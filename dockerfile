FROM ubuntu:22.04
RUN apt-get update 
RUN apt-get install -y python3 
RUN apt-get install python3-pip -y
RUN pip3 install flask
COPY message.py /opt/
ENTRYPOINT FLASK_APP=/opt/message.py flask run --host=0.0.0.0 --port=8080
