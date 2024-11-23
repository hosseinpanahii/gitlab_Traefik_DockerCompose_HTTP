
#!/bin/sh
# setting -> cicd -> runner => copy token
registration_token=Ft_8f-vUv-TzXsmycCqR

docker exec -it gitlab-runner \
  gitlab-runner register \
    --non-interactive \
    --registration-token ${registration_token} \
    --locked=false \
    --description docker-stable \
    --url http://gitlab.lab.com/ \
    --executor docker \
    --docker-image docker:stable \
    --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
    --docker-network-mode web_net
