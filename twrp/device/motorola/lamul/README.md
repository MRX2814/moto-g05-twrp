# Draft TWRP device tree — `lamul`

This is the first device-tree skeleton for Motorola moto g05 XT2523-3.

The fstab and partition sizes were derived from a read-only dump of the
user's current Android 15 build `VVTAS35.51-153-3`. Before any image is
built, the following still needs to be resolved against the TWRP 12.1/13
build system and the stock `VNDRBOOT` format:

1. import the `mt6768-common` recovery configuration;
2. add the 6.6 kernel, DTB and recovery kernel modules;
3. use the actual Motorola vendor-ramdisk layout and compression;
4. replace the draft FBE stanza with the Android 15 metadata-encryption
   configuration and test decryption;
5. build and first test with `fastboot boot`, never by flashing first.
