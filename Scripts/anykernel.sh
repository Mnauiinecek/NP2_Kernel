# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
properties() { '
kernel.string=NP2 Kernel - KSU-Next
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=PacmanPro
device.name2=pacmanpro
supported.versions=13-16
supported.patchlevels=
'; }

# Shell variables
slot="$(getprop ro.boot.slot_suffix)";
block=/dev/block/by-name/boot$slot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods
. tools/ak3-core.sh;

## AnyKernel boot install
split_boot;
flash_boot;
## end boot install
