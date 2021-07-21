#### Backup data COmpliled on 16 Apr 2016



PATH=$PATH:/sbin:/usr/sbin

export PATH



#mkdir /tmp/Patchbkp_`date '+%Y%m%d'`

#cd /tmp/Patchbkp_`date '+%Y%m%d'`



mkdir /home/AM90007940/Patchbkp_`date '+%Y%m%d'`

cd /home/AM90007940/Patchbkp_`date '+%Y%m%d'`



hostname > host_name

cat /etc/redhat-release > redhat_rel

rpm -qa > rpm.org

df -kh > df_kh

mount > mnt

ll /dev/mapper/ > dev_mapper

ll / > root_dir

ll -d /var/spool/mqueue > mqueue

ifconfig > if_config

ifconfig -a > if_config_a

uname -a > uname_a

cat /etc/fstab > fstab
cat /etc/mdadm.conf > mdadm.conf

cat /etc/grub.conf > grub

netstat -nr > netstat_nr

ps -eaf|grep pmon > pm_on

crontab -l > cron_tab

uptime > up_time

date > da_te

cat /etc/resolv.conf > resolve

fdisk -l > fdisk_l

cat /etc/resolv.conf > resolve

pvdisplay > pvdispaly

vgdisplay > vgdisplay

lvdisplay > lvdisplay

pvs > lvdata

echo "--">>lvdata

vgs >> lvdata

echo "--">>lvdata

lvs >> lvdata

echo "--">>lvdata

cat /etc/grub.conf > grub

/etc/init.d/oracleasm status >oracle.asm.status

powermt save

powermt display dev=all > powermt

powermt save file=powermt.config



multipath -ll > multipath_ll





cp -p /etc/udev/rules.d/50-udev.rules  50.udev_rules

cp -p /etc/inittab   inittab.bak

cp -p /etc/hosts hosts

cp -p /etc/mail/sendmail.mc sendmail.mc

cp -p /etc/mail/submit.cf submit,cf

cp -p /etc/mail/sendmail.cf sendmail.cf

cp -p /etc/mail/submit.mc submit.mc

cp -p /etc/multipath.conf multipath.conf.bak

cp -p /etc/sudoers sudoers.bak

cp -rp /boot/  bootbkp/



cat /etc/rc.local > rc.local_bkp

cp -p /etc/rc.d/rc.sysinit rc.sysinit_bkp



### to take backup of the EMC device config files

cat /etc/emcp_devicesDB.idx > emcp_devicesDB.idx.bak

cat /etc/emcp_devicesDB.dat > emcp_devicesDB.dat.bak

cat /etc/emcp_registration > emcp_registration.bak

/etc/init.d/oracleasm status >oracleasm.status

cat /proc/mdstat >md_stat

getenforce

