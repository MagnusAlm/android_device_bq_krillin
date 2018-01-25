## Aquaris E4.5

The BQ Aquaris E4.5 (codenamed _"krillin"_) is a low-range smartphone from bq.

The BQ Aquaris E4.5 was announced in 2014.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | 1.3GHz Quad-Core MT6582
GPU     | Mali-400MP
Memory  | 1GB RAM
Shipped Android Version | 4.4.2
Storage | 8GB
Battery | 2100 mAh
Display | 4.5" 960 x 540 px
Camera  | 8MPx, LED Flash


This branch is work in progress for building Nougat ROMS and TWRP recovery for BQ Aquaris E4.5.

Most things work like phone calls, sms, mms, mobile data, FM Radio, wifi, camera, wifi hotspot and adb.

Not working that I know of: wifi with hidden ssid.


### Full Compilation guide ( I've only tested it on Xubuntu 17.10 )


     You'll need about 100GB of free space for this.

     Install needed libraries and programs:

     * sudo apt-get install -y git ccache automake lzop bison gperf build-essential zip curl zlib1g-dev zlib1g-dev:i386
       g++-multilib python-networkx libxml2-utils bzip2 libbz2-dev libbz2-1.0 libghc-bzlib-dev squashfs-tools pngcrush 
       schedtool dpkg-dev liblz4-tool make optipng maven 

     * sudo apt update
     * sudo apt upgrade -y
     * sudo apt-get install -y openjdk-8-jdk

     * mkdir lineage14.1
     * cd lineage14.1

     * if ! [ -f /bin/repo ]; then
     * mkdir ~/bin
     * PATH=~/bin:$PATH
     * curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
     * chmod 760 ~/bin/repo
     * fi

     You must add a user name and email berfore "repo init".

     * git config --global user.email "Your email @ here"
     * git config --global user.name "Your name here"

     Download sources: 

     * repo init -u git://github.com/LineageOS/android.git -b cm-14.1

     * repo sync --force-sync 

     * git clone https://github.com/MagnusAlm/android_device_bq_krillin.git -b cm-14.1 device/bq/krillin

     * git clone https://github.com/MagnusAlm/android_kernel_bq_krillin.git -b cm-14.1 kernel/bq/krillin

     * git clone https://github.com/MagnusAlm/android_vendor_bq_krillin.git -b cm-14.1 vendor/bq/krillin

     * git clone https://github.com/LineageOS/android_external_stlport.git -b cm-14.1 external/stlport


     Start compiling steps:

     * . build/envsetup.sh


     Either use brunch like this:

     * brunch lineage_krillin-userdebug


     Or lunch and make like this:

     * lunch lineage_krillin-userdebug

     * make -j4 bacon


### Recovery Compilation (TWRP Variant):

  Enter to the "scripts" directory (device/bq/krillin/scripts):

     * . twrp.sh

     * lineage_krillin-userdebug

     * mka recoveryimage

### If you have a compilation error with jack server do:

  Enter to the "scripts" directory (device/bq/krillin/scripts):

     * . jack.sh

### Contributors (In alphabetichal order except for Pablo, since he has done most of the work ;-):

 * * Pablito20202 * *

 * Assusdan
 * Chymardos
 * DanielHK
 * Deckersu
 * DevVil
 * Kra1o5
 * MAD team (Fire855, DragonPT and Derteufel)
 * Samar Vispute
 * sultanxda
 * Varun Chitre
 * Vo-1
 * Xcore
 * Zormax
