FROM ubuntu

RUN apt-get update && apt-get upgrade
RUN apt-get install -y python3 python-pip
RUN pip install flask

COPY ../test_script .

EXPOSE 4000

ENTRYPOINT python3 -m http.Server 4000
