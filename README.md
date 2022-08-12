# FounzyWeb

docker pull zud0/founzyweb:latest

docker container create --name founzy -v /home/user/web:/data -p 80:80/tcp zud0/founzyweb:latest

docker container start founzy

docker logs founzy -f

#

docker exec -it founzy /bin/bash gitclone https://github.com/ItsMeSudo/FounzyWeb-React-test.git

docker exec -it founzy /bin/bash permchk

docker exec -it founzy /bin/bash update

#

debug: docker exec -it founzy /bin/bash
