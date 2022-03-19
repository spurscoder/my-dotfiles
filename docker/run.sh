docker build -t harbor-registry.inner.youdao.com/correction/typo-base:python3 . -f ./Dockerfile

docker push  harbor-registry.inner.youdao.com/correction/typo-base:python3
docker pull  xxx

docker run --rm -it --entrypoint bash harbor-registry.inner.youdao.com/correction/typo-base:python3
# docker exec -it <container-name-or-id> bash


> docker cp .ssh/known_hosts  5713c3669ccc:/

# https://stackoverflow.com/questions/44480740/how-to-save-a-docker-container-state
# docker commit container to image


# https://stackoverflow.com/questions/25267372/correct-way-to-detach-from-a-container-without-stopping-it
# docker detach


