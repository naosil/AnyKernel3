### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
properties() { '
kernel.string=ExampleKernel by osm0sis @ xda-developers
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=F1f
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } 

BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;

. tools/ak3-core.sh;

dump_boot;

patch_cmdline androidboot.selinux androidboot.selinux=permissive

write_boot; 
