
## get id_rsa and id_rsa.pub
## put id_rsa.pub to gitlab
ssh-keygen -t rsa -C "wangjp@rd.netease.com"


## let machine known this site
ssh-keyscan -H gitlab.corp.youdao.com >> .ssh/known_hosts
