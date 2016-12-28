- Cat vs Kettle Servers
- -i => interactive
- -v => LOCAL_DIR:CONTAINER_DIR (bind-mount local dir to container dir)
- -P => publish all ports
- -p => PORT_ON_HOST:PORT_IN_CONTAINER
- -t => terminal
- -d => detached
- docker ps => show running processes
- docker ps -l => show only last
- docker ps -q => show only id
- docker logs <id> (id kann nur erste zeichen sein)
- docker logs -f <id> (follow, like tail -f)
- docker logs --tail <count> --follow <id>
- docker stop (kill gracefully)
- docker kill
- detach: ^P^Q
- docker attach <id>
- docker start <id> (restart old container)
- docker image (wie class) -> container (wie instance)
- new image from "frozen" container
- docker commit / build
- namespace on dockerhub: username/imagename
- local namespace: host:port/imagename
- docker pull/push for down/upload to registry
- docker images
- docker search <imagename>
- Change something in container (docker run -it <image-name>), change stuff,
  exit, docker diff <id>
- docker commit <container-id>
- docker tag <container-id> <name>
- docker commit <container-id> <name>
- Dockerfile: recipe
- docker build -t <image-name> <dir-of-dockerfile>
- docker build --no-cache to prevent caching
- docker history <image-name>
- RUN apt-get update VS RUN ["apt-get", "update"]
- second no substitution etc
- CMD for default command to execute
- docker run -ti <image-name> bash
- ENTRYPOINT to add external parameters
- ENTRYPOINT has to be in json syntax (since params are discarded otherwise, sh
  -c "figlet -f script" "other parameters")
- Combine Entrypoint with Cmd for default params (CMD ["default"])
- CMD and ENTRYPOINT together => have to use json syntax on both
- ENTRYPOINT and shell: --entrypoint(docker run -ti --entrypoint bash figlet
)
- COPY source dest to copy files in container
- MAINTAINER (optional)
- Collapse Layers: RUN apt-get update && ap-get install bla && apt-get clean ... (\ for multiple
  lines) => Layer-Limit (127, AUFS)
- EXPOSE ports, examples: EXPOSE 8080, EXPOSE 80 443, EXPOSE 53/tcp 53/udp
- COPY / /src => equivalent to COPY . /src (always anchored to build context)
- ADD: Like COPY but unpacks archives, can get remote files (like curl)
- VOLUME dirname: persistent directory
- WORKDIR dirname: change dir for subsequent commands
- ENV varname value or docker run -e NAME=VALUE
- USER
- Efficent dockerfiles: little amount of layers, COPY dir with a lot of changing
  files (like code repo) after installing dependencies
- docker rm <container-name>
- docker rename <container-name> <new-container-name>
- docker inspect
- docker inspect --format '{{ .State.Running }}' ticktock
- docker port <container-id> <port-in-container>
- different networks driver: docker run --net <driver> (default: bridge)
- brctl show
- none bridge (--net none) => no external connectivity
- host (--net host) => share host network stack
- netstat -ntlp shows listening sockets on HOST
- container (--net container:<container-id/name>) => use network stack of other
  container (for example vpn on centos and container with ubuntu and python in
same vpn but withouth vpn client)
- docker network ls
- network: virtual switch, subnet, managed by driver(all above and multi-host
  overlay-driver), container-names discoverable by DNS
- docker network create <name>
- docker run --net <name>
- name => DNS-name, no exposed ports necessary inside network
- --net-alias instead of --name (which blocks name globally) to assign name PER
  network
- nslookup <name>
- --net-alias: not unique even in same network
- bind-mount local repo with docker run -v to instantly get changes
- docker-compose.yml: fixate params
- docker run -v /var/run/docker.sock:/var/run/docker.sock docker => run jenkins
  in container and build / start containers

