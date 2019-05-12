#!sbin/sh

rm -f /ramdisk/recovery.cpio.gz

rm -f /ramdisk/recovery.cpio

rm -f /ramdisk/modules_list.txt

cp /tmp/install/bin/modules_list.txt /ramdisk/modules_list.txt

cp /tmp/install/bin/recovery.cpio /ramdisk/recovery.cpio

# cp /tmp/install/bin/recovery.cpio.gz /ramdisk/recovery.cpio.gz
