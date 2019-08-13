FROM conda/miniconda3
COPY *.sh /
RUN apt-get update
RUN apt-get -y install curl
CMD /conda-upload.sh

