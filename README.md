# [Eth(Embedded)](http://www.ethembedded.com) [Hardkernel Odroid XU3](http://www.hardkernel.com/main/products/prdt_info.php?g_code=G140448267127)/[Ethereum](https://www.ethereum.org/) Install Instructions

### Supported Boards:
- Hardkernel Odroid XU3Lite
- Hardkernel Odroid XU3
- Hardkernel Odroid XU4

### Materials Needed:
- Odroid XU3 development board
- 64GB micro SD Card  
- Power Supply for Odroid XU3(5VDC 2A standard barrel connector)
- Ethernet cable (to connect to available, DHCP enabled, internet router)

##### Note: although 64GB is not immediately necessary, as the ethereum blockchain grows you will need the room to 		store it. (At least until SPV is available) Another strong suggestion is to use Class 10 SanDisk Ultra or Extreme models with higher R/W speeds

### Optional Materials:
- Micro HDMI->HDMI cable
- Monitor with HDMI input(or apropriate adapter)
- USB Keyboard

### Installation Method 
###### *Disclaimer* - If you will be formatting an SD card be aware that you will be deleting all information stored on said card.  Eth(Embedded) is *NOT*  responsible for any data loss that may occur during the format process.

1. Insert your FAT32 formatted SD card into your linux PC or Laptop. 
2. Download the Ubuntu 15.04lts images from http://odroid.in/ubuntu_15.04/:
  
  - Desktop (Mate) link: http://odroid.in/ubuntu_15.04/ubuntu-15.04-mate-odroid-xu3-20150710.img.xz
  - Desktop MD5 Hash link: http://odroid.in/ubuntu_15.04/ubuntu-15.04-mate-odroid-xu3-20150710.img.xz.md5sum
  
2. Once you have downloaded the .img file we will need to extract it using [7zip](http://www.7-zip.org/), and then burn the image to our SD card using [WinDiskImager](http://sourceforge.net/projects/win32diskimager/) on Windows, or just use `tar` and `dd` on Linux following the how-to here: https://www.raspberrypi.org/documentation/installation/installing-images/linux.md
3. Safely remove and install SD card into a powered down Odroid XU3 with ethernet cable connected between XU3 and an internet enabled DHCP router.
4. Power on your Odroid XU3.
5. While the Odroid XU3 is booting, we need to log in to our router and look at the dhcp client list to find the IP address assigned to our Odroid XU3 device, alternately you can use one of my favorite mobile apps, [FING](https://play.google.com/store/apps/details?id=com.overlook.android.fing&hl=en), as long as your android phone is connected to the same network. We can then, using a linux cli or [putty](http://www.putty.org/), ssh[(instructions)](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-6-using-ssh/using-ssh-on-a-mac-or-linux) into the device with the following *default* credentials:

	- login : `odroid`
	- password: `odroid`

6. At this point lets take the opportunity to change the `odroid` users password: 

	`passwd` and follow on screen instructions...

7. Next lets download, unzip, and choose eth-install.sh OR geth-install.sh:

	`wget https://github.com/EthEmbedded/OdroidXU3-Eth-Install/archive/v0.1.8.tar.gz`

	`tar -xvzf v0.1.8.tar.gz`
	
	`cd OdroidXU3-Eth-Install`

	`sudo chmod +x geth-install.sh` OR `sudo chmod +x eth-install.sh` 
	
8. Now lets run the install script for either `geth` or `eth`

	`./geth-install.sh`
	
	OR
	
	`./eth-install.sh`
	
9. Finally lets start the client:

	For `geth` :
	
	`cd ~/go-ethereum/build/bin`
	
	`./geth`
	
	For `eth`:
	
	`cd ~/cpp-ethereum/build/eth`
	
	`./eth`

####For more info regarding running cli clients please visit the following links:

For geth/go-ethereum visit: https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options

For eth/cpp-ethereum visit: https://github.com/ethereum/cpp-ethereum/wiki/Using-Ethereum-CLI-Client

####For more information regarding the Hardkernel Odroid Series of boards visit:

Main Homepage: http://www.hardkernel.com/main/main.php

####What now?

*To learn more about Ethereum.org get involved!*

A great place to start are the forums at https://forum.ethereum.org/

OR

Learn more about creating DApps by visiting https://dappsforbeginners.wordpress.com/
