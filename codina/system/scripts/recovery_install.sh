#!sbin/sh

#if test -f /ramdisk/recovery.cpio.gz ; then
#	exit
#fi
#
#if  test -f /ramdisk/recovery.cpio ; then
#	exit
#fi
rm -f /ramdisk/recovery.cpio.gz

rm -f /ramdisk/recovery.cpio

cp /tmp/install/bin/recovery.cpio /ramdisk/recovery.cpio