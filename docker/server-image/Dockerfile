FROM harbor-registry.inner.youdao.com/correction/sentalyzer-base:python3.6-en

RUN yum install -y git

COPY . /literary-genre
WORKDIR /literary-genre

RUN mkdir -p ~/.ssh/
RUN cp ./.ssh/id_rsa.test ~/.ssh/id_rsa
RUN cp ./.ssh/known_hosts ~/.ssh/known_hosts
RUN chmod 400 ~/.ssh/id_rsa

RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple .

RUN nohup python3 demo/start.py 1>log 2>&1 &

WORKDIR /literary-genre/rpc

ENTRYPOINT ["./run_server.sh"]
