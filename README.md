# Mediatomb docker

Mediatomb package is missing in Debian 8.x. So get it working on a Docker container.

## Build image
```bash
sudo make
```

## Start image as a new container
```bash
sudo sh run.sh # Edit this script to mount your media directories inside container.
```

## Start and stop container
```bash
sudo docker start mediatomb
sudo docker stop mediatomb
```

## Systemd (to start up on boot)

### Enable as service
```bash
sudo cp ~/mediatomb-docker/mediatomb.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start mediatomb.service
sudo systemctl enable mediatomb.service
```

### Start and stop
````bash
sudo service mediatomb start
sudo service mediatomb stop
```

## Access mediatomb Web UI
[http://localhost:50500](http://localhost:50500)
