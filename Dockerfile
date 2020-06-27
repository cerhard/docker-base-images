FROM arm32v7/python:3.7-alpine3.12

RUN pip install pyserial==3.4 pika==1.1.0
