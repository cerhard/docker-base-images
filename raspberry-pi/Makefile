.PHONY:	all pika-image pyserial-image push

PIKA_IMAGE_TAG=ethanhunt314/pika-1.0.0
PYSERIAL_IMAGE_TAG=ethanhunt314/pyserial-3.4

all:	pika-image pyserial-image push

pika-image:
	docker build --target=alpine-with-pika -t $(PIKA_IMAGE_TAG) .

pyserial-image:
	docker build --target=alpine-with-pyserial -t $(PYSERIAL_IMAGE_TAG) .

push:
	docker push $(PIKA_IMAGE_TAG)
	docker push $(PYSERIAL_IMAGE_TAG)