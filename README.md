# Mediatomb docker

# Make
```bash
make
```

# Start image as a new container
```bash
sh run.sh
```

# Start and stop container
```bash
docker start mediatomb
docker stop mediatomb
```

# Systemd (to start up on boot)
```bash
sudo ln -s ~/mediatomb/mediatomb.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl start mediatomb.service
sudo systemctl enable mediatomb.service
```
