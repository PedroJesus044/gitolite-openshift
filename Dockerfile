FROM ubi9

#COPY my.id_rsa.pub .

#USER root
#RUN yum install git perl* -y
#RUN git clone https://github.com/sitaramc/gitolite
#RUN mkdir -p $HOME/bin
#RUN gitolite/install -to $HOME/bin
#RUN $HOME/bin/gitolite setup -pk my.id_rsa.pub

EXPOSE 8080

CMD ["/bin/bash"]