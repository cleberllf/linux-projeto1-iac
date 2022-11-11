FROM ubuntu
WORKDIR /root/
ADD iac1.sh .
RUN apt-get update && apt-get install -y openssl && apt-get autoclean && chmod +x iac1.sh
#CMD /bin/bash iac1.sh
