## SD CARD Setup

_IMAGE Version : 2019-09-26-raspbian-buster-lite_

### A. Setting up RTC
1. sudo apt-get install python-smbus i2c-tools
2. sudo nano /boot/config.txt, add 'dtoverlay=i2c-rtc,pcf8523' to file and uncomment 'dtparam=i2c_arm=on'
3. sudo reboot
4. sudo i2c-detect -y 1
5. sudo apt-get -y remove fake-hwclock 
6. sudo update-rc.d -f fake-hwclock remove
7. sudo systemctl disable fake-hwclock
8. sudo nano /lib/udev/hwclock-set and comment out these three lines: 
  ```
  #if [ -e /run/systemd/system ] ; then
  # exit 0
  #fi
```
```
/sbin/hwclock --rtc=$dev --systz --badyear
```
```
/sbin/hwclock --rtc=$dev --systz
```
9. sudo hwclock -D -r
10. date
11. sudo hwclock -w
12. sudo hwclock -r

### B. Setting up I2S Mic
1. sudo nano /boot/config.txt -> Uncomment #dtparam=i2s=on
2. sudo nano /etc/modules -> Add snd-bcm2835 on its own line
3. sudo reboot
4. lsmod | grep snd
5. sudo apt-get update
6. sudo apt-get install rpi-update
7. sudo rpi-update
8. sudo apt-get install git bc libncurses5-dev bison flex libssl-dev
9. sudo wget https://raw.githubusercontent.com/notro/rpi-source/master/rpi-source -O /usr/bin/rpi-source
10. sudo chmod +x /usr/bin/rpi-source
11. /usr/bin/rpi-source -q --tag-update
12. rpi-source --skip-gcc
13. Code coverage for fuzzing (KCOV) [N/y/?] (NEW)  -> enter and continue
14. sudo mount -t debugfs debugs /sys/kernel/debug
15. git clone https://github.com/PaulCreaser/rpi-i2s-audio
16. cd rpi-i2s-audio
17. make -C /lib/modules/$(uname -r )/build M=$(pwd) modules
18. sudo insmod my_loader.ko
19. lsmod | grep my_loader
20. dmesg | tail
21. sudo cp my_loader.ko /lib/modules/$(uname -r)
22. echo 'my_loader' | sudo tee --append /etc/modules > /dev/null
23. sudo depmod -a
24. sudo modprobe my_loader
25. sudo reboot
26. arecord -l
27. arecord -D plughw:1 -c1 -r 48000 -f S32_LE -t wav -V mono -v file.wav
28. aplay file.wav
29. scp pi@<local-ip>:/home/pi/file.wav ~/Desktop/file.wav
30. sudo nano ~/.asoundrc  ->  
```
pcm.dmic_hw {
	type hw
	card sndrpisimplecar
	channels 2
	format S32_LE
}
	type softvol
	slave.pcm dmic_hw
	control {
		name "Boost Capture Volume"
		card sndrpisimpleca
	}
	min_dB -3.0
	max_dB 30.0
}
 ```
31. arecord -D dmic_sv -c2 -r 44100 -f S32_LE -t wav -V mono -v file.wav
32. arecord -D dmic_sv -c2 -r 48000 -f S32_LE -t wav -V mono -v recording.wav
33. aplay recording.wav

### C. IMU Installation
1. sudo pip3 install --upgrade setuptools
2. pip3 install RPI.GPIO
3. pip3 install adafruit-blinka
4. sudo pip3 install adafruit-circuitpython-adxl34x

### D. Pulse Sensor Installation
1. git clone https://github.com/tutRPi/Raspberry-Pi-Heartbeat-Pulse-Sensor
2. sudo python example.py

### E. Speaker
1. pin 12 -> ALT0 && pin 18 -> ALT5

### F. Network Manager
1. npm install node-wifi @google-cloud/storage python-shell
2. sudo apt install network-manager network-manager-gnome openvpn
3. sudo apt install openvpn-systemd-resolved network-manager-openvpn
4. sudo apt install network-manager-openvpn-gnome
5. sudo apt purge openresolv dhcpcd5
6. sudo ln -sf /lib/systemd/resolv.conf /etc/resolv.conf

### G. Bluetooth
1. sudo apt-get install libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev -y
2. wget www.kernel.org/pub/linux/bluetooth/bluez-5.50.tar.xz
3. tar xvf bluez-5.50.tar.xz && cd bluez-5.50
4. ./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --enable-experimental
5. make -j4
6. sudo make install
7. sudo reboot
8. ./bluez-5.50/test/example-advertisement
9. sudo service bluetooth stop
10. sudo hciconfig hci0 up # reactivate hci0 or another hciX you want to use 
11. npm install bleno --save
