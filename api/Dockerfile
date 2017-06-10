FROM python:3.6.1
ADD requirements.txt /tmp/requirements.txt
ADD constraints.txt /tmp/constraints.txt
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt -c /tmp/constraints.txt
WORKDIR /positivery/api
CMD make run
