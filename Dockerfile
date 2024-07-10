FROM registry.access.redhat.com/ubi9:9.4-1123.1719560047

COPY my.id_rsa.pub .

USER root
RUN yum install git perl* -y
RUN git clone https://github.com/sitaramc/gitolite
RUN gitolite/install -to /bin
RUN gitolite setup -pk my.id_rsa.pub

EXPOSE 22

CMD ["sleep", "inf"]