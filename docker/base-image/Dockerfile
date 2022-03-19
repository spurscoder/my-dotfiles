FROM harbor-registry.inner.youdao.com/devops/centos:7

RUN yum install -y which && \
    yum install -y zlib-devel && \
    yum install -y bzip2-devel && \
    yum install -y openssl-devel && \
    yum install -y ncurses-devel && \
    yum install -y sqlite-devel && \
    yum install -y readline-devel && \
    yum install -y tk-devel && \
    yum install -y libffi-devel && \
    yum install -y wget && \
    yum install -y git && \
    yum install -y less && \
    yum install -y cmake

RUN yum -y install gcc-c++ python-devel bzip2-devel zlib-devel && \
	wget https://boostorg.jfrog.io/artifactory/main/release/1.68.0/source/boost_1_68_0.tar.gz && \
	tar zxvf boost_1_68_0.tar.gz

RUN cd boost_1_68_0 && \
    ./bootstrap.sh --prefix=/usr/local/boost && \
	./b2 install

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 \
    && cp -r -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo 'Asia/Shanghai' > /etc/timezone


ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

