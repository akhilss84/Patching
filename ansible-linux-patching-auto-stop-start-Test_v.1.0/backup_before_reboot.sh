#!/bin/bash





#Multipath Check status

DT=`date|awk '{print $3$2$6}'`

HOST=`hostname`

FL=$HOST.$DT.log



#  date +%Y%m%d





>$FL

echo " Host Name :" `hostname`>>$FL

echo "-" >>$FL

echo "Date :" `date`>>$FL

echo "-" >>$FL



echo "##############Redhat Version###############">> $FL



echo "-" >>$FL

cat /etc/redhat-release >> $FL

echo "-" >>$FL

echo

echo

echo "##############Kernel Version###############">> $FL



echo "Kernel :" `uname -a`>>$FL

echo "-" >>$FL



echo "##############Network Status ###############">> $FL



netstat -nr>> $FL



echo "-" >>$FL





echo "##############The Mount Status###############">> $FL



echo "-" >>$FL

mount >> $FL



echo "----------------------------------------------------------">>$FL



echo "##############The Disk Status###############">>$FL



echo "-" >>$FL

df -h >>$FL



echo "##############Mount Permission Status###############">>$FL



echo "-" >>$FL

ls -lt / >>$FL



echo "##############Mount Permission Status at dev/mapper###############">>$FL



echo "-" >>$FL

ls -lt /dev/mapper/ >>$FL

echo "----------------------------------------------------------" >>$FL



echo "#####################The Network Status##################" >>$FL



ifconfig >>$FL



echo "-----------------------------------------------------------" >>$FL


echo "#####################The ethtool status##################" >>$FL



for a in `ifconfig | grep -i eth | cut -d " " -f 1` ; do  ethtool $a ; done >>$FL



echo "-----------------------------------------------------------" >>$FL



echo "#####################The Service  Status##################" >>$FL



echo "-" >>$FL

chkconfig --list|grep -i on >>$FL



echo "-" >>$FL





echo "-----------------------------------------------------------" >>$FL





echo "#####################The Processes Status##################" >>$FL



ps -ef >>$FL



echo "-----------------------------------------------------------" >>$FL

echo "#####################The FSTAB Status##################" >>$FL



cat /etc/fstab >>$FL



echo "-----------------------------------------------------------" >>$FL



echo "#####################The GRUB  Status##################" >>$FL

echo "------------/etc/grub.conf --------------" >>$FL

cat /etc/grub.conf >>$FL

echo "-" >>$FL



echo "-----------/boot/grub/grub.conf ---------------" >>$FL

cat /boot/grub/grub.conf >>$FL

echo "------------------------------------------------------------" >>$FL



echo "#####################The HDD Status##################" >>$FL



fdisk -l >>$FL



echo "------------------------------------------------------------" >>$FL

echo "#####################dumpe2fs -h status ##################" >>$FL

for a in `df -h | grep dev|grep -v shm | cut -d" " -f 1`; do dumpe2fs -h $a; done >>$FL



echo "#####################The POWER PATH Status##################" >>$FL



multipath -ll  >>$FL



echo "#####################The PVS Status##################" >>$FL



pvs  >>$FL

echo "-" >>$FL

echo "---vgs---" >>$FL





vgs  >>$FL

echo "-" >>$FL

echo "---lvs---" >>$FL





lvs  >>$FL



echo "##################SCSI-ID#####################" >>$FL







ls -lt /dev/disk/by-*  >>$FL



echo "#######################################" >>$FL



echo "########### MD STATUS ############################" >>$FL



cat /proc/mdstat >>$FL



echo "-">>$FL

mdadm --detail /dev/md0 >>$FL

echo "--------- END RUN------" >>$FL

