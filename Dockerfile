From centos:7
RUN yum -y install epel-release
RUN yum -y install python
RUN yum -y install python-pip
RUN pip install flask==1.1.4
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
