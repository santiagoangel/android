#!/system/bin/sh

su
#mount -o remount,rw /system
#cp /sdcard/Download/exfat.ko /system/lib/modules/
#df
#cat /proc/partitions
insmod /system/lib/modules/exfat.ko
#mount -t exfat /dev/block/mmcblk1p1 /storage/sdcard1
mount -t exfat -o iocharset=utf8,namecase=0,errors=remount-ro /dev/block/mmcblk1p1 /storage/sdcard1
chmod -R 777 /storage/sdcard1

#/dev/block/mmcblk1p1 /storage/sdcard1 exfat rw,relatime,fmask=0077,dmask=0077,iocharset=utf8,namecase=0,errors=remount-ro 0 0
