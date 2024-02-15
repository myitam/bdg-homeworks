docker volume create --name vol-nginx
docker run -d --name nginx-volume -p 8082:80 -v vol-nginx:/usr/share/nginx/html nginx
docker ps
cd /var/lib/docker/volumes/
ls
cd vol-nginx/
ls
cd _data/
ls
vim index.html