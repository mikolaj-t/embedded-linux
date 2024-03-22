mkdir /tmp/d
mount /dev/mmcblk0p1 /tmp/d
cd /tmp/d
wget 192.168.0.162:8000/Image
wget 192.168.0.162:8000/bcm2711-rpi-4-b.dtb