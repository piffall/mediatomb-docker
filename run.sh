#!/bin/bash
docker run --name="mediatomb" --rm --net="host" \
    -v ~/Links:/media/Links \ # I symlink all media in a directory
    -v /mnt:/mnt \            # linking to many mount mounts inside mnt
    -p 50500:50500 \
    -t piffall/mediatomb
