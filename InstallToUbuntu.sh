#!/bin/bash
########################################
#This is easy install QDK to ubuntu tool
########################################

if [ -d "/usr/local/QDK" ]; then
	echo "QDK exists."
fi

case "$1" in
	install)
		echo "Compiler QPKG encrypt"
		cd src
		make
		cd ../
		echo "Install QDK"
		cp -rf ./shared /usr/local/QDK
		[ -d "/etc/config" ] || mkdir "/etc/config"
		cp ./shared/qdk.conf /etc/config
		sed -e '2d' ./shared/qdk.conf > /etc/config/qdk.conf
		sed -i '2iQDK_PATH_P=/usr/local' /etc/config/qdk.conf
		echo "PATH=$PATH:/usr/local/QDK/bin" >> ~/.bashrc
		source ~/.bashrc
	;;
	remove)
		echo "Remove QDK"
		rm -rf "/etc/config"
		rm -rf "/usr/local/QDK"
		sed -i '/QDK/d' ~/.bashrc
		source ~/.bashrc
	;;
	*)
		echo "Usage: $0 {install|remove}"
		exit 1
esac
exit 0
