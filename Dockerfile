FROM aaronyue/tfs2216

RUN yum clean all && \ 
    yum -y install git openssh-client --nogpgcheck && \
    cd /tmp && \
    wget https://redirector.gvt1.com/edgedl/go/go1.8.5.linux-amd64.tar.gz && tar xvf go1.8.5.linux-amd64.tar.gz && mv go /usr/local/ && \
    rm -rf go1.8.5.linux-amd64.tar.gz && \
    useradd git-go
ENV GOROOT=/usr/local/go PATH=/usr/local/go/bin:$PATH

USER git-go