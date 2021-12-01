#!/bin/bash

echo "Connect to https://fw1-imovies.ch:8080"
ssh -L 8080:fw-1.imovies.ch:443 administrator@ca.imovies.ch
