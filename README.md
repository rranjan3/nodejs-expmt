# nodejs-expmt
Simple project to experiment with nodejs

Build the image
```
docker build --tag pm2-expmt:latest .
```

Run it as a detached container -
```
docker run --publish 1947:1947 --detach --name my_app pm2-expmt:latest
```

Test if the container is up -
```
curl -XGET http://locahost:1947
```

Relevant read(though specific to ubuntu14) in case below set of commands do not seem to run - https://github.com/Unitech/pm2/issues/2645
```
pm2 start server.js
pm2 save
pm2 startup systemd
```
To experiment with this, use the `docker build` command with `-f failing.Dockerfile` to get the corresponding image. 

This failed in my case as well which drove me further.

Why not use pm2 and docker alongside - https://stackoverflow.com/questions/51191378/what-is-the-point-of-using-pm2-and-docker-together
