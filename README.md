# OpenWrt ADB USB0 Fixer
Pengguna OpenWrt terkadang menggunakan perangkat Android sebagai sumber internet dengan menghubungkannya melalui antarmuka USB0/USB tethering. Namun, terdapat masalah saat pengguna ingin menggunakan ADB untuk mengontrol perangkat Android dari perangkat lain. Saat ADB diaktifkan, antarmuka USB0 menjadi tidak terbaca

## cara memperbaiki
#### 1. menggunakan script bash `fix_usb0.sh`
  - masuk ke terminal
  - jalankan perintah berikut:
    
    ```
    opkg install wget
    wget -O fix_usb0.sh https://raw.githubusercontent.com/basiooo/openwrt-adb-usb0-fixer/main/fix_usb0.sh
    chmod 755 fix_usb0.sh
    ./fix_usb0.sh
    ```
  - reboot perangkat openwrt anda.

#### 2. rename file usb-mode.json
  - masuk file manager
  - masuk kedalam folder /etc/
  - cari file bernama `usb-mode.json`
  - ubah file tersebut menjadi `usb-mode.json.backup`
  - reboot perangkat openwrt anda