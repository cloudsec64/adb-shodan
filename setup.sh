#!/bin/bash
packagesNeeded='android-tools lolcat neofetch'
if [ -x "$(command -v apk)" ];       then sudo apk add --no-cache $packagesNeeded
elif [ -x "$(command -v apt-get)" ]; then sudo apt-get install $packagesNeeded
elif [ -x "$(command -v dnf)" ];     then sudo dnf install $packagesNeeded
elif [ -x "$(command -v zypper)" ];  then sudo zypper install $packagesNeeded
elif [ -x "$(command -v pip)" ]; then pip install shodan
elif [ -x "$(command -v pacman)" ]; then sudo pacman -S $packagesNeeded                >
else echo "FAILED TO INSTALL PACKAGE: Package manager not found. You must manually inst>
wait
echo input shodan api key:
read apikey
shodan init $apikey
echo setup completed!
