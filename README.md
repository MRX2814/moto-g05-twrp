# Dedykowane TWRP — Moto G05 `lamul`

Urządzenie: Motorola Moto G05 XT2523-3  
Codename: `lamul`  
Build: `VVTAS35.51-153-3`  
Slot odczytu: `a`  
SoC: MediaTek MT6768  

## Stan przygotowania

- wykonano wyłącznie odczyt partycji z działającego, zrootowanego telefonu;
- zachowano `boot_a`, `vendor_boot_a` i `dtbo_a` w katalogu `stock/`;
- nie wykonano flashowania ani zmiany danych telefonu;
- recovery musi być przygotowane jako obraz dla `vendor_boot`, nie jako klasyczne `recovery.img`.

## Sumy SHA-256 kopii źródłowych

```text
boot_a.img        6260bf9e0815b2e031fa9892663d68e0b0ece24dbaf4372023026b7441b060f5
dtbo_a.img        51444b394a71780fc807fc463f15ad31ae5d3c6243828671827749447c33a8e5
vendor_boot_a.img a1610f28006bc68b6c9f89340422133d055d0143b0b66257248f125429ecc2d1
```

## Plan testów

1. przygotować drzewo TWRP na bazie drzewa `android_device_motorola_lamu`;
2. dopasować nagłówek i ramdisk `vendor_boot` do wydania Motoroli;
3. zbudować obraz testowy;
4. uruchomić jednorazowo przez `fastboot boot`;
5. sprawdzić ekran, dotyk, ADB, montowanie `/data` i sideload;
6. dopiero po pozytywnym teście rozważyć instalację na stałe.

Pierwsza wersja może uruchamiać interfejs TWRP bez odszyfrowania `/data`; wtedy najpierw poprawiane są biblioteki i polityka szyfrowania, bez ryzykownego flashowania.
