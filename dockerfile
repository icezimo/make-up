FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential cmake
RUN apt-get install -y python-pip libgtk-3-dev
RUN apt-get install -y python-pip libboost-all-dev
#RUN apt-get install -y python-pip flask

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["./app.py"]