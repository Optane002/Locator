<p align="center">
<img src="https://img.shields.io/badge/Python-3-brightgreen.svg?style=plastic">
<img src="https://img.shields.io/badge/Docker-✔-blue.svg?style=plastic">
</p>

<p align="center">
  <a href="https://twitter.com/LDCre002"><b>Twitter</b></a>
  <span> - </span>
  <a href="https://t.me/DarkBYOptane"><b>Telegram</b></a>
  <span> - </span>
  <a href="https://www.youtube.com/channel/UCfE3rGCGU8pQ3jZHmurtS9A"><b>Keep Eyes on "Dark" YouTube Channel</b></a>
</p>

Concept behind Locator is simple, just like we host phishing pages to get credentials why not host a fake page that requests your location like many popular location based websites.Locator Hosts a fake website on **In Built PHP Server** and uses **Serveo** to generate a link which we will forward to the target, website asks for Location Permission and if the target allows it, we can get :

* Longitude
* Latitude
* Accuracy
* Altitude - Not always available
* Direction - Only available if user is moving
* Speed - Only available if user is moving

Along with Location Information we also get **Device Information** without any permissions :

* Operating System
* Platform
* Number of CPU Cores
* Amount of RAM - Approximate Results
* Screen Resolution
* GPU information
* Browser Name and Version
* Public IP Address
* IP Address Reconnaissance

## How is this Different from IP GeoLocation

* Other tools and services offer IP Geolocation which is NOT accurate at all and does not give location of the target instead it is the approximate location of the ISP.

* Locator uses HTML API and gets Location Permission and then grabs Longitude and Latitude using GPS Hardware which is present in the device, so Locator works best with Smartphones, if the GPS Hardware is not present, such as on a Laptop, Locator fallbacks to IP Geolocation or it will look for Cached Coordinates.  

* Generally if a user accepts location permsission, Accuracy of the information recieved is **accurate to approximately 30 meters**, Accuracy Depends on the Device.

**Note** : On iPhone due to some reason location accuracy is approximately 65 meters.

## Templates

You can choose a template which will be used by Locator from these : 

* NearYou
* Google Drive
* WhatsApp
* Telegram

## Tested On :

* Kali Linux
* BlackArch Linux
* Ubuntu
* Kali Nethunter
* Termux
* Parrot OS

## Setup Ngrok server

* visit <a href="https://ngrok.com/"><b>ngrok</b></a> official website and claim your free account to download the setup.
* Make sure while you're using ngrok servers,your internet connection is better to interchange the packets.If not you cannot continue this progress.

* If you want to get know more about ngrok using/handlings please visit there Documentations page here. <a href="https://ngrok.com/docs"><b>Docs</b></a>

## Installation

### Kali Linux / Ubuntu / Parrot OS

```bash
git clone https://github.com/Optane002/Locator.git
cd Locator/
chmod 777 install.sh
./install.sh
```

### BlackArch Linux

```bash
pacman -S Locator
```

### Docker

```bash
docker pull Optane002/Locator
```

### Termux

```bash
git clone https://github.com/Optane002/Locator.git
cd Locator/
chmod 777 termux_install.sh
./termux_install.sh
```

## Usage

```bash
python3 Locator.py -h

usage: Locator.py [-h] [-s SUBDOMAIN]

optional arguments:
  -h, --help                              show this help message and exit
  -s SUBDOMAIN, --subdomain Subdomain 	  Provide Subdomain for Serveo URL ( Optional )
  -k KML, --kml KML                       Provide KML Filename ( Optional )
  -t TUNNEL, --tunnel TUNNEL              Specify Tunnel Mode [manual]

# Example

# SERVEO 
########
python3 Locator.py

# NGROK ETC.
############

# In First Terminal Start Locator in Manual mode like this
python3 Locator.py -t manual

# In Second Terminal Start Ngrok or any other tunnel service on port 8080
./ngrok http 8080

#-----------------------------------#

# Subdomain
########### 
python3 Locator.py --subdomain google
python3 Locator.py --tunnel manual --subdomain zomato

#-----------------------------------#

# Docker Usage
##############

# SERVEO
########
docker run -t --rm Optane002/Locator

# NGROK
#######

# Step 1
docker network create ngroknet

# Step 2
docker run --rm -t --net ngroknet --name Locator Optane002/Locator python3 Locator.py -t manual

# Step 3
docker run --rm -t --net ngroknet --name ngrok wernight/ngrok ngrok http Locator:8080
```

## Known Problems

* Services like Serveo and Ngrok are banned in some countries such as Russia etc., so if it's banned in your country you may not get a URL, if not then first READ CLOSED ISSUES, if your problem is not listed, create a new issue.

## Please Be Mentioned

**This tool is a Proof of Concept and is for Educational Purposes Only, Locator shows what data a malicious website can gather about you and your devices and why you should not click on random links and allow critical permissions such as Location etc.**

