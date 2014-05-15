angstrom_setup
==============

Warning! On the newest angstrom image there is no dtc in opkg available.
A simple solution is to create the compiled dtbo file on a desktop ubuntu machine
and copy it to the BBB.

Add manualy to uEnv.txt  
mkdir /mnt/boot
mount /dev/mmcblk0p1 /mnt/boot

optargs=quiet drm.debug=7 capemgr.disable_partno=BB-BONELT-HDMI,BB-BONELT-HDMIN capemgr.enable_partno=MINOTAUR-SPI1
