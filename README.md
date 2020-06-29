# docker-base-images
It's difficult to build docker images and run pip from github's CI infrastructure.  Therefore, we will
attempt to build all of the dockerfiles and push them without CI.  These dockerfiles can be built out-of-band
and published to the public docker hub to be pulled from later.  It's not the best way to do things, 
but given these images should not change very frequently it's low risk.

In the event we use github's local hosts to build, we can re-address this.

# Publish
This is intended to be published on Docker Hub at `ethanhunt314/*` 

# Architecture / Design
Different code bases in Skyhopper have different requirements for
their docker images.  However, some are shared.  Given Docker's
ability to share filesystem layers, we'll try to tag as many of these layers as possible so that we can reuse the layers and save precious space on the raspberry pi.

```
+------------------------------------------------+
|            ethanhunt314/pyserial-3.4           |  <--Dockerfile-pyserial
+------------------------------------------------+
|             ethanhunt314/pika-1.0.0            |  <--Dockerfile-pika
+------------------------------------------------+
|        arm32v7/python:3.7-alpine3.12           |
+------------------------------------------------+

```   