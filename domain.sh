#! /bin/bash
red=$`tput setaf 1`
green=$`tput setaf 2`
blue=$`tput setaf 4`
reset=$`tput sgr0`
greetings()
{
echo "`tput setaf 4`                                                                                                                                                              
                                                                                                                                                             
DDDDDDDDDDDDD             OOOOOOOOO     MMMMMMMM               MMMMMMMM               AAA               IIIIIIIIIINNNNNNNN        NNNNNNNN   SSSSSSSSSSSSSSS 
D::::::::::::DDD        OO:::::::::OO   M:::::::M             M:::::::M              A:::A              I::::::::IN:::::::N       N::::::N SS:::::::::::::::S
D:::::::::::::::DD    OO:::::::::::::OO M::::::::M           M::::::::M             A:::::A             I::::::::IN::::::::N      N::::::NS:::::SSSSSS::::::S
DDD:::::DDDDD:::::D  O:::::::OOO:::::::OM:::::::::M         M:::::::::M            A:::::::A            II::::::IIN:::::::::N     N::::::NS:::::S     SSSSSSS
  D:::::D    D:::::D O::::::O   O::::::OM::::::::::M       M::::::::::M           A:::::::::A             I::::I  N::::::::::N    N::::::NS:::::S            
  D:::::D     D:::::DO:::::O     O:::::OM:::::::::::M     M:::::::::::M          A:::::A:::::A            I::::I  N:::::::::::N   N::::::NS:::::S            
  D:::::D     D:::::DO:::::O     O:::::OM:::::::M::::M   M::::M:::::::M         A:::::A A:::::A     `tput setaf 1`      I::::I  N:::::::N::::N  N::::::N S::::SSSS         
  D:::::D     D:::::DO:::::O     O:::::OM::::::M M::::M M::::M M::::::M        A:::::A   A:::::A          I::::I  N::::::N N::::N N::::::N  SS::::::SSSSS    
  D:::::D     D:::::DO:::::O     O:::::OM::::::M  M::::M::::M  M::::::M       A:::::A     A:::::A         I::::I  N::::::N  N::::N:::::::N    SSS::::::::SS  
  D:::::D     D:::::DO:::::O     O:::::OM::::::M   M:::::::M   M::::::M      A:::::AAAAAAAAA:::::A        I::::I  N::::::N   N:::::::::::N       SSSSSS::::S 
  D:::::D     D:::::DO:::::O     O:::::OM::::::M    M:::::M    M::::::M     A:::::::::::::::::::::A       I::::I  N::::::N    N::::::::::N            S:::::S
  D:::::D    D:::::D O::::::O   O::::::OM::::::M     MMMMM     M::::::M    A:::::AAAAAAAAAAAAA:::::A      I::::I  N::::::N     N:::::::::N            S:::::S
DDD:::::DDDDD:::::D  O:::::::OOO:::::::OM::::::M               M::::::M   A:::::A             A:::::A   II::::::IIN::::::N      N::::::::NSSSSSSS     S:::::S
D:::::::::::::::DD    OO:::::::::::::OO M::::::M       `tput setaf 2`        M::::::M  A:::::A               A:::::A  I::::::::IN::::::N       N:::::::NS::::::SSSSSS:::::S
D::::::::::::DDD        OO:::::::::OO   M::::::M               M::::::M A:::::A                 A:::::A I::::::::IN::::::N        N::::::NS:::::::::::::::SS 
DDDDDDDDDDDDD             OOOOOOOOO     MMMMMMMM               MMMMMMMMAAAAAAA                   AAAAAAAIIIIIIIIIINNNNNNNN         NNNNNNN SSSSSSSSSSSSSSS   
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                             

"
echo "Welcome `tput setaf 1` $USER! `tput sgr0`. You are using `tput setaf 6` LIVE SUBDOMAINS FINDER `tput sgr0` coded by `tput setaf 3`yuvaprasath0709`tput sgr0`" 
echo "Please make sure you have `tput setaf 4`'assetfinder'`tput sgr0` and `tput setaf 4`'httprobe'`tput sgr0` installed in your system"
}
greetings 
echo =============================================================================
read -p "`tput setaf 5` Enter the Domain `tput sgr0` : " dom
echo " `tput setaf 4` It may take a while depending on the number of subdomains. Sit back and relax :) `tput sgr0` "
end()
{
echo " `tput sgr0` ==== `tput setaf 3` Process Completed!. Thank you for using `tput sgr0` `tput setaf 6` LIVE SUBDOMAINS FINDER`tput sgr0` ===="
}
task1()
{
assetfinder --subs-only $dom > subs.txt
}
task2()
{
cat subs.txt | httprobe `tput sgr0` > live_subs.txt
}
task3()
{
while read url ; do
	echo ${url#*//} >> urls.txt
done < live_subs.txt
sort -u urls.txt > sorted_subs.txt
echo "++++++++  Live Subdomains of `tput setaf 5` $dom `tput sgr0` ++++++++" `tput setaf 2`
cat  sorted_subs.txt 
echo "`tput setaf 4`======================================== `tput sgr0`"
echo "Result saved in `tput setaf 1` live_subs.txt `tput sgr0`"
rm urls.txt
rm live_subs.txt
rm subs.txt
}
task1
task2
task3
end
