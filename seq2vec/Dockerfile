################## BASE IMAGE ######################

FROM python:3.10.10

################## METADATA ######################

LABEL base_image="python:3.10.10"
LABEL version="1"
LABEL about.summary="Seq2Vec environment for generating zarr files"
LABEL software.version="0.0.1"

RUN apt-get update && apt-get -y upgrade

RUN pip install --upgrade pip
RUN pip install pandas==2.0.3
RUN pip install zarr==2.15.0
