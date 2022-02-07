FROM centos/python-36-centos7:latest
RUN pip3 install flask==1.1.4
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
