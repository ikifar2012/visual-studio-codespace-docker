FROM ubuntu:bionic
RUN \
 curl https://packages.microsoft.com/keys/microsoft.asc |  apt-key add - && \
 add-apt-repository https://packages.microsoft.com/ubuntu/18.04/prod/ && \
 apt-get update && \
 apt-get install vso 
CMD vso start --help
WORKDIR /codespace
VOLUME /CODESPACE