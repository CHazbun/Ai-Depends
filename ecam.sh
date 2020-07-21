#!/bin/bash

echo
/bin/echo -e "\e[1;33m   !---------------------------------------------!\e[0m"
/bin/echo -e "\e[1;33m   !   Lets get started.                         ! \e[0m"
/bin/echo -e "\e[1;33m   !---------------------------------------------!\e[0m"
#echo
echo
/bin/echo -e "\e[1;33m   |-| Starting Webmin        \e[0m"

#systemctl enable webmin
#systemctl start webmin
/etc/init.d/webmin start
echo
/bin/echo -e "\e[1;33m   |-| Starting Apache        \e[0m"

#systemctl enable apache2
#systemctl start apache2
/etc/init.d/apache2 start
echo
/bin/echo -e "\e[1;33m   |-| Starting Bind9 DNS        \e[0m"

#systemctl enable bind9
#systemctl start bind9
/etc/init.d/bind9 start
echo
/bin/echo -e "\e[1;33m   |-| Starting MYSQL        \e[0m"

#systemctl enable mysql
#systemctl start mysql
/etc/init.d/mysql start
echo
/bin/echo -e "\e[1;33m   |-| Starting Postfix for sending email        \e[0m"

#systemctl enable postfix
#systemctl start postfix
/etc/init.d/postfix start
echo
/bin/echo -e "\e[1;33m   |-| Starting ProFTP        \e[0m"

#systemctl enable proftpd
#systemctl start proftpd
/etc/init.d/proftpd start
echo
/bin/echo -e "\e[1;33m   |-| Starting the Watchers        \e[0m"

cd /home/fp_ecamai/public_html/public/Python
python3 /home/fp_ecamai/public_html/public/Python/shell_scripts_enable.py

echo

	/bin/echo -e "\e[1;31m  !--------------------------------------------------------------!\e[0m"
	/bin/echo -e "\e[1;31m  ! If we didn't get any errors, the system should               !\e[0m"
	/bin/echo -e "\e[1;31m  ! be ready to go.                                              !\e[0m"
	/bin/echo -e "\e[1;31m  !--------------------------------------------------------------!\e[0m"
#	echo
	exit

