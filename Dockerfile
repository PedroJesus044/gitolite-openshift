FROM registry.access.redhat.com/ubi9:9.4-1123.1719560047

#COPY my.id_rsa.pub .

#USER root
#RUN yum install git perl* -y
#RUN git clone https://github.com/sitaramc/gitolite
#RUN mkdir -p $HOME/bin
#RUN gitolite/install -to $HOME/bin
#RUN $HOME/bin/gitolite setup -pk my.id_rsa.pub

EXPOSE 22

CMD ["sleep", "120"]