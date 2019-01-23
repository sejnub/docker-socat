# docker-socat


## Run it

```sh

clear

################################################################################"
################################################################################"
################################################################################"
################################################################################"

. /usr/local/etc/sejnub-credentials.env
export DOCKER_SOCAT_BRANCH=master

cd ~
curl https://raw.githubusercontent.com/sejnub/docker-socat/master/generic_scripts/first_start.sh | bash


cd ~
cd ~/docker-socat/generic_scripts
ls -asl



```

## More tools

- elasticsearch-hq
  - <https://hub.docker.com/r/elastichq/elasticsearch-hq/>
  - docker run -p 5001:5000 elastichq/elasticsearch-hq
- cerebro
  - <https://github.com/lmenezes/cerebro>
  - <https://hub.docker.com/r/yannart/cerebro/>
- curator
