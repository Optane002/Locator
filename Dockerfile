FROM ubuntu
ENV DEBIAN_FRONTEND=teletype
WORKDIR Locator/
RUN echo "Asia/Sri Lanka" > /etc/timezone
RUN apt-get update > install.log
RUN apt-get -y install tzdata >> install.log
RUN dpkg-reconfigure -f noninteractive tzdata >> install.log
RUN apt-get -y install python3 \
python3-pip \
php \
ssh >> install.log
RUN pip3 install requests >> install.log
ADD . /Locator
RUN chmod 777 template/nearyou/php/info.txt
RUN chmod 777 template/nearyou/php/result.txt
CMD ["./Locator.py"]
