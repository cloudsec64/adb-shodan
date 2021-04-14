   
#!/bin/bash
neofetch --ascii_distro android|lolcat
figlet adbss|lolcat
echo android debug bridge shodan scraper|lolcat
echo select file name|lolcat
read filename
echo searching for devices...|lolcat
shodan download $filename Android Debug Bridge
echo results saved in $filename.json.gz!|lolcat
gzip -d $filename.json.gz
cat $filename.json
echo open abd?[y/n]|lolcat
read option
if [[ $option == y ]]; then
echo select an ip to connect to|lolcat
read targetip
adb connect $targetip
echo successfully connected to target!|lolcat
elif [[ $option == n ]]; then
echo closing...|lolcat
clear

fi
