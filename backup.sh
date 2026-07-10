# !/bin/bash/


backup="/backup "
source_dir="/home/ubuntu"


success_fail () {
 if [ $? -eq 0 ]
 then 
	 echo " Backup done "
 else
	 echo " Backup failed "
 fi 

}

if [ ! -d "$backup" ]
then 
	echo " The $backup dir is not exits... creating... "
	mkdir -p "$backup"

else 
	echo " The $backup dir is available"

fi 

        tar -czf "$backup/backup_$(date +%Y-%m-%d).tar.gz" "source_dir" 

	success_fail







