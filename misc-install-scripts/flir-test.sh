#!/bin/bash
echo "## Test Boxfish FLIR camera server code"

cd ~/git/FLIR_pubsub
/home/rov/.virtualenvs/flir/bin/python /home/rov/git/FLIR_pubsub/run/flir-server.py
$SHELL


