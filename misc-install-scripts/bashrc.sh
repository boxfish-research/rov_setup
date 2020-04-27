
#!/bin/bash
echo "## add .bashrc Virtualenvwrapper settings:"

filename="/home/rov/.bashrc"
echo "## Virtualenvwrapper settings:" >> $filename
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> $filename
echo "export WORKON_HOME=$HOME/.virtualenvs" >> $filename
echo "export VIRTUALENVWRAPPER_VIRTUALENV=/home/rov/.local/bin/virtualenv" >> $filename
echo "source ~/.local/bin/virtualenvwrapper.sh" >> $filename

echo "## Change stty CNTR-C to CNTR-K:" >> $filename
echo "stty intr \^k" >> $filename

source /home/rov/.bashrc

