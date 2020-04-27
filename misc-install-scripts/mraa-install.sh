
#!/bin/bash
set x
echo " ## Install mraa   (see https://wiki.up-community.org/MRAA/UPM)"
sudo add-apt-repository ppa:mraa/mraa
sudo apt-get update
sudo apt-get install mraa-tools mraa-examples libmraa1 libmraa-dev libupm-dev libupm1 upm-examples
sudo apt-get install python-mraa python3-mraa node-mraa libmraa-java
