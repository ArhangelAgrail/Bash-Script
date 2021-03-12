#!/bin/sh
echo ""
echo "Welcome to NadekoBot. Downloading the latest installer..."
root=$(pwd)
wget -N https://github.com/ArhangelAgrail/Bash-Script/raw/master/nadeko_master_installer.sh

bash nadeko_master_installer.sh
cd "$root"
rm "$root/nadeko_master_installer.sh"
exit 0
