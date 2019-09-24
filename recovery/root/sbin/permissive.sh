#!/sbin/sh

setenforce 0

mkdir -p /dev/block/platform/mtk-msdc.0/by-name/
busybox mount -o bind /dev/block/platform/mtk-msdc.0/11120000.msdc0/by-name/ /dev/block/platform/mtk-msdc.0/by-name/
