#!/bin/bash
docker run --name="mediatomb" --rm --net="host" \
    -v ~/Links:/media/Links \
    -v /mnt:/mnt \
    -e NET_DEV="enp3s0"
    -p 50500:50500 \
    -t piffall/mediatomb
