#!/usr/bin/env bash

while true; do
	read -p "Do you want delete work,osgi/state,tomcat/temp,tomcat/work folders ? (Y/N) " yn
	case $yn in
		[Y]* ) rm -rf work osgi/state tomcat-*/{temp,work}; break;;
		[N]* ) exit 0;;
		* ) echo "Please answer Y or N";;
	esac
done
