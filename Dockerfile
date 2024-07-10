FROM ubi9/s2i-core:rhel9.4.0

COPY my.id_rsa.pub .

USER root
RUN yum install git -y
RUN git clone https://github.com/sitaramc/gitolite
RUN mkdir -p $HOME/bin
RUN gitolite/install -to $HOME/bin
RUN gitolite setup -pk my.id_rsa.pub

CMD ["/bin/bash"]