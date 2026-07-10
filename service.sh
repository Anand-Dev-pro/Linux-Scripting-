# !/bin/bash/

sudo apt update
sudo apt upgrade -y
apt install -y ngnix


if [ $? -eq 0 ]
then 
     echo " Ngnix installed "
else 
	echo " Not installed "
	exit 1
fi

useradd -m appuser

systemctl start ngnix
systemctl enable ngnix




