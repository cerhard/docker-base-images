# pyserial-docker
Creating a docker image with pyserial in it for the ARM architecture.
This is a simple Dockerfile that will create a docker image for the ARMv7 architecture, which works on the Raspberry Pi 4.  

# Publish
This is intended to be published on Docker Hub at `ethanhunt314/python-pyserial` 

# Why do this?
I have some projects that require pyserial==3.4 on the Raspberry Pi.  In order to enable git Actions on those repositories, I found that I have to run all `pip` commands outside of the github supplied machines.
CI infrastructure using github actions are not going to be setup on this repository, because they would require offsite ARM supported machines.  
