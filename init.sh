#!/bin/bash

docker run --name CUPS -d -v $(pwd)/config:/config -p 631:631 biglioncoding/armhf-cups:xenial > .cid



