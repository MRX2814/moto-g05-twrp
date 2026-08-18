# Następny etap kompilacji

Szkielet urządzenia jest w `twrp/device/motorola/lamul`.

Do pełnej kompilacji potrzebne są jeszcze:

1. środowisko TWRP 12.1/AOSP;
2. oficjalne drzewo `device/motorola/mt6768-common`;
3. `device/motorola/lamu-kernels` wraz z właściwym `Image.gz`, DTB i modułami;
4. vendor blobs z firmware Android 15 `VVTAS35.51-153-3`;
5. dopasowanie ramdisku `VNDRBOOT` i sprawdzenie deszyfrowania FBE.

Po zbudowaniu pierwszy test musi wyglądać tak:

```text
adb reboot bootloader
fastboot boot out/target/product/lamul/vendor_boot.img
```

Nie używać `fastboot flash vendor_boot` przed sprawdzeniem dotyku, ADB,
montowania `/data` i powrotu do systemu.
