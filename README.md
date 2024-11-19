before deploy :
edit /etc/host and add two record:
192.168.1.24 gitlab.lab.com
192.168.1.24 reg.lab.com


in gitlab directory:
docker-compose up -d

in traefik directory:
docker-compose up -d
