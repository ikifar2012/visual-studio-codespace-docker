FROM ubuntu:bionic
RUN \
 apt-get update && apt-get install -y curl gnupg2 software-properties-common && \
 curl https://packages.microsoft.com/keys/microsoft.asc |  apt-key add - && \
 add-apt-repository https://packages.microsoft.com/ubuntu/18.04/prod/ && \
 apt-get update && \
 apt-get install -y vso 
ENV group
CMD vso start --help -r ${group}
WORKDIR /codespace
VOLUME /CODESPACE