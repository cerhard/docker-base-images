FROM arm32v7/python:3.7-alpine3.12 as alpine-with-pika
RUN pip install pika==1.1.0

FROM alpine-with-pika as alpine-with-pyserial
RUN pip install pyserial==3.4