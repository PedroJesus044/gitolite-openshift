FROM ubi9/s2i-core:rhel9.4.0

COPY pibarrap044.id_rsa.pub .

USER root
RUN git clone https://github.com/sitaramc/gitolite
RUN mkdir -p $HOME/bin
RUN gitolite/install -to $HOME/bin
RUN gitolite setup -pk pibarrap044.id_rsa.pub