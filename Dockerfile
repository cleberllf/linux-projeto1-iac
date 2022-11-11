FROM ubuntu
WORKDIR /root/
ADD iac01.sh .
RUN apt-get update && apt-get install -y openssl && apt-get autoclean && chmod +x iac01.sh
#CMD /bin/bash iac01.sh
