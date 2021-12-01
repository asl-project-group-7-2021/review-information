#!/bin/bash

echo "Connect to https://fw2-imovies.ch:8081"
ssh -L 8081:fw-2.imovies.ch:443 administrator@backup.imovies.ch
