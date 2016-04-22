#!/bin/bash
docker run --name="mediatomb" --rm --net="host" \
    -v ~/Links:/media/Links \
    -v /mnt:/mnt \
    -p 50500:50500 \
    -t piffall/mediatomb
