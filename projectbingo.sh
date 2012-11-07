#!/bin/bash
clr=$(clear) #clearing the screen
txtrst=$(tput sgr0) # Text reset
txtred=$(tput setaf 1) # Red
txtgrn=$(tput setaf 2) # Green
txtylw=$(tput setaf 3) # Yellow
txtblu=$(tput setaf 4) # Blue
txtpur=$(tput setaf 5) # Purple
txtcyn=$(tput setaf 6) # Cyan
txtwht=$(tput setaf 7) # White
bold=$(tput bold) #bold style
dim= $(tput dim) #: turn on half-bright mode
undl=$(tput smul) #: begin underline mode
exundl=$(tput rmul) #: exit underline mode
rev=$(tput rev) #: Turn on reverse mode
std=$(tput smso) #: Enter standout mode
exstd=$(tput rmso) #: Exit standout mode
# all modes are from 1 to 7
back=$(tput setb [4]) #: Set a background colour
fore=$(tput setf [2]) #: Set a foreground colour
sleep=`echo sleep 1`
$clr
dialog --title "WELCOME BOX" --msgbox "\n Welcome to Bingo Shell " 20 40
kdialog --title "BINGO SHELL" --warningyesnocancel " \n Do you want to login ?"
i=$?
f=0
case $i in
0)
$clr
t()
{
password=`kdialog --password "Enter the password"`
if [ "$password" -eq "12345" ]
then
kdialog --msgbox "Password correct.\n Going to shell"
answer="Tushar Makkar"
f=0
else
$clr
kdialog --sorry "Password incorrect.\n Try again"
t
fi
}
t;;
*)
$clr
dialog --inputbox "Enter your name:" 8 40 2>answer
f=1
;;
esac
start()
{
$clr
echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell !!!${exundl}     ${txtrst}"
$sleep
if [ "$f" -eq "1" ]
then
answer="`cat answer`"
fi
printf "Hi $answer"
echo "${bold} Hope your stay with us will be problem free ${txtrst}"
i=0
while [ $i -le 0 ]
do
echo 
i=$((i+1))
done
echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
echo "${txtcyn} 1--- File and Directory management commands " 
echo "${txtcyn} 2--- Text processing commands " 
echo "${txtcyn} 3--- System status commands " 
echo "${txtcyn} 4--- Games " 
echo "${txtcyn} 5--- Internet Speed Dial "
echo "${txtcyn} 6--- Help regarding commands" 
echo "${txtcyn} 7--- Exit ${txtrst} "  
read a
case $a in
1)dir()
{
$clr
       $sleep
        echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell File and Directory Page  !!!${exundl}     ${txtrst}"
        echo ""
        echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
        echo "${txtcyn}1--- Display the contents of the file " 
        echo "${txtcyn}2--- Remove the file "
	 echo "${txtcyn}3--- List the file "
	 echo "${txtcyn}4--- Size of the file "
	 echo "${txtcyn}5--- Go back to the main menu "
	 echo "${txtcyn}6--- Exit the file ${txtrst}"
	read file
	case $file in
		1)$clr
		 $sleep
		echo "${txtcyn}Enter filename${txtrst}"
		read filen
		$(gedit $filen)
$sleep
$sleep
$sleep
dir;;
		2)$clr
                 $sleep
                echo "${txtcyn}Enter filename${txtrst}"
                read filen
                $(rm $filen)
		echo "${txtred}$filen deleted successfully${txtrst} "

$sleep
$sleep
$sleep
dir
;;
		3)$clr
                 $sleep
                for i in `ls -a `
		do
		echo $i
		done 
$sleep
$sleep
$sleep
dir;;
		4)for i in `ls -l`
do
echo $i
done 
$sleep
$sleep
$sleep
$sleep
dir	;;
		5)start	;;
		6)$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions for improving it ${txtrst} "
read comment
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit;;
	esac
}
dir
;;
2)status(){
$clr
       $sleep
        echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell Text Processing  Page  !!!${exundl}     ${txtrst}"
        echo ""
        echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
        echo "${txtcyn}1--- Search for a file " 
        echo "${txtcyn}2--- Count lines,words, and charachters in specified files "
        echo "${txtcyn}3--- Go to the main menu "
	echo "${txtcyn}4--- Exit ${txtrst}"
	read fi
	case $fi in
	1)echo "${bold} Enter file name${txtrst}"
read file
echo $file
if [ -e $file ]
then
echo "${txtblu}file is found\nDo you want to open the file press 1 for Yes \n  ${txtrst}"
read k
if [ "$k" -eq "1" ]
then
gedit $file
fi
else
echo "${txtblu}File not found \n ${txtrst} "
fi
$sleep
$sleep
$sleep
status;;
	2)
echo "${bold}Enter file name${txtrst}"
read file
if [ -e $file ]
then
wc $file
else
echo "${txtblu}File not found \n${txtrst} "
fi
$sleep
$sleep
$sleep
status;;
	3)start	;;
	4)$clr
dialog --title " Please Answer " --yesno " Do u like the project ?" 20 40
${clr}
echo "${txtred} Please enter the suggestions for improving it ${txtrst} "
read comment
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit;;
esac
}
status;;
3)syst()
{
$clr
       $sleep
        echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell System Status Page  !!!${exundl}     ${txtrst}"
        echo ""
        echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
        echo "${txtcyn}1--- Display the current date and time  " 
        echo "${txtcyn}2--- Current disk usage "
	echo "${txtcyn}3--- Display process status information "
        echo "${txtcyn}4--- Go to the main menu "
        echo "${txtcyn}5--- Exit ${txtrst}"
        read fsi
        case $fsi in
        1)
date
$sleep
$sleep
$sleep
syst
;;
        2)
df
$sleep
$sleep
$sleep
$sleep
syst
;;
	3)
ps
$sleep
$sleep
$sleep
$sleep
syst
;;
        4)start ;;
        5)$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions for improving it ${txtrst} "
read comment
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$clr
exit;;
esac
}
syst
;;
4)	$clr
	$sleep
	echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell Game Page  !!!${exundl}     ${txtrst}"
	echo ""
	echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
	echo "${txtcyn} 1--- UNIX WONDERS " 
	echo "${txtcyn} 2--- MOTHER CALLING "
	echo "${txtcyn} 3--- GO back to the main menu ${txtrst} "
	echo ""
	read c
	case $c in
		1) $clr
                $sleep
                echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to UNIX WONDERS  !!!${exundl}     ${txtrst}"
                echo " "
		echo "${txtred}${bold} Which command you  want to learn today ?${txtrst} "
		echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
		echo "${txtcyn} 1--- ls " 
		echo "${txtcyn} 2--- date "
		echo "${txtcyn} 3--- pwd "
		echo "${txtcyn} 4--- Go back to main page "
		echo "${txtcyn} 5--- Exit ${txtrst}"
		read input
		case $input in
			1)game()
{
				$clr $sleep
				echo "${txtgrn} ${bold}ls command${txtrst} "
				echo ""
				echo "${bold}                        ${undl}Use of ls${exundl}  "
				echo "${txtblu} It lists the contents of directory ... Try it yourself${txtrst} "
				read c
				if [ $c=="ls" ]
				then
				for i in `ls`
               			do
               				 echo $i
                		done
				else
                               	{
				echo "You have written it wrongly try again "
                                game
				}
                                fi
				$sleep
				$sleep
				$clr
				echo "${txtylw} ${bold}WELL DONE ${txtrst}"
				echo "${txtpur} ${rev}Now let us know about some options of ls${txtrst}"
				echo "${txtblu} -a option : Reverses the order of how the files are displayed.
				Try it yourself only option   ${txtrst}"
				echo "ls"
				read c
				if [ $c=="-a" ]
                                then
                                for i in `ls -a`
                                do
                                         echo $i
                                done
				else 
				{
					echo "You have written it wrongly try again "
					game
				}
				$clr
				echo "${txtblu} Congratulations You have learnt ls command ${txtrst}"
fi
}
game
$sleep
$sleep
$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions for improving it ${txtrst} "
read comment
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit;;
		2)game()
{
		$clr
		$sleep
		  echo "${txtgrn} ${bold}date command${txtrst} "
                                echo ""
                                echo "${bold}                        ${undl}Use of date${exundl}  "
                                echo "${txtblu} It displays the date and time of the system clock..... Try it yourself${txtrst} "
                                read c
                                if [ $c=="date" ]
                                then
                     		date
                                else
                                {
                                echo "You have written it wrongly try again "
                                game
                                }
                                fi
                                $sleep
                                $sleep
                                $clr
                                echo "${txtylw} ${bold}WELL DONE ${txtrst}"
                                echo "${txtpur} ${rev}Now let us know about some options of date${txtrst}"
                                echo "${txtblu} We've to write date + %A for printing the full day according to system
                                Try it yourself only option   ${txtrst}"
                                echo "date"
                                read c
                                if [ $c=="+%A" ]
                                then
                            	date +%A
                                else
                                {
                                        echo "You have written it wrongly try again "
                                        game
                                }
                                $clr
                                echo "${txtblu} Congratulations You have learnt date command ${txtrst}"
fi
}
game
$sleep
$sleep
$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit			;;
		3)
game()
{
                $clr
                $sleep
                  echo "${txtgrn} ${bold}pwd command${txtrst} "
                                echo ""
                                echo "${bold}                        ${undl}Use of pwd${exundl}  "
                                echo "${txtblu} It displays the name for current working directory..... Try it yourself${txtrst} "
                                read c
                                if [ $c=="pwd" ]
                                then
                                $(pwd)
                                else
                                {
                                echo "You have written it wrongly try again "
                                game
                                }
                                fi
				$sleep
				$sleep
                                $sleep
                                $sleep
                                echo "${txtylw} ${bold}WELL DONE ${txtrst}"
				$sleep
                                $clr
                                echo "${txtblu} Congratulations You have learnt date command ${txtrst}"
}
game
$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit
;;
		4)start;;
		5)
$clr
dialog --title " Please Answer " --yesno " Do u like the project ?" 20 40
${clr}
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
exit;;
		esac;;
		2) $clr 
		$sleep
		echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to MOTHER CALLING  !!!${exundl}     ${txtrst}"
		echo " "
		echo "${txtblu} Modern technology owes ecology an apology! 
		This is what some people say when the read the news about haze, deforestation, extinction of flora and fauna and global warming. They blame modern technology, the materials and ideas developed in the last century to assist humans in their activities, for the deterioration of ecology. The ecological cycle has been very much disturbed by the developments humankind have achieved. Despite these allegations, we should stop and think, does modern technology really owe ecology an apology? For what reason does it owe ecology an apology? Is it because it took away its attractiveness and reduced attention and respect to nature?s beauty? Is it because it harmed the environment? Has all modern technology harmed Mother Nature? I think modern technology does owe ecology an apology as some but not all of it has negatively affected the ecology. 
		${txtrst} "
		echo "${txtred} ${bold} Do you want to save Mother earth ???? 
		Press y for yes and n for No ${txtrst}"
		read d 
		case $d in
			y) $clr
			echo "${txtblu} You have made the right decision ...
*)Plant a Birthday tree
*)Use Energy saving appliances
*)Reduce-Reuse-Recycle
*)Avoid Food wastage
*)Drive Less, Drive Smart			 ${txtrst}"
echo "${txtpur} ${bold} ${back} ${undl}Thank you for playing MOTHER EARTH ... :)${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$clr
dialog --title " Please Answer " --yesno " Do u like the projectBingo game ?" 20 40
${clr}
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} "
exit
;;
			n) $clr 
			echo "${txtblu} We feel sorry you have no obligations towards Mother Earth ...Your future is in dark...${txtrst}"
			${sleep}
			${sleep}
			${sleep}
			kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
$sleep
$sleep
$sleep
$sleep
$clr

			echo "${txtpur} ${bold} ${back} ${undl}Thank you for playing Bingo MOTHER EARTH ... :)${exundl} ${txtrst} "
			exit;;
		esac;;
		3)  start;;
	esac;;
5)internet()
{
	$clr
	$sleep
	echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell Internet page  !!!${exundl}     ${txtrst}"
	echo ""
	echo "${txtred} ${rev} ${bold} Enter your choice ${txtrst} "
	echo "${txtcyn} 1--- Facebook " 
	echo "${txtcyn} 2--- Google " 
	echo "${txtcyn} 3--- Yahoo "
	echo "${txtcyn} 4--- Gmail "
	echo "${txtcyn} 5--- Duck Duck Go "
	echo " 6--- Some adult web site"
	echo "${txtcyn} 7--- Any other Site "
	echo "${txtcyn} 8--- Exit ${txtrst}"
	read b
	case $b in
		1) `echo firefox 'http://facebook.com'`
	internet		;;
		2) `echo firefox 'http://www.google.com'`
	internet
	;;
		3) `echo firefox 'www.yahoo.com'`
	internet
	;;
		4) `echo firefox 'www.gmail.com'`
	internet
	;;
		5) `echo firefox 'www.duckduckgo.com'`
	internet
	;;
		6)export birthday=`zenity --calendar --text='When is your
	birthday?' --title='DETAILS TABLE'>kot`
	kot=`cat kot`
	l=`echo $kot|cut -d '/' -f 3`
	v=$((2012-l))
	if [ $v -gt 19 ]
	then
	echo "${bold} ${txtred} Access Granted\n ${txtrst}"
	echo "${txtcyn} Enter site \n ${txtrst}"
	read site
	`echo firefox $site`
	else
	echo "${bold} ${txtred} Access Denied\n ${txtrst}"
	fi
$sleep
$sleep
$sleep
	internet
	;;
		7)  echo "${txtcyn} Enter new site
			${txtrst}" 
			read site
			`echo firefox $site`;;
		8)$clr
	kdialog --title "ProjectBingo Magic Shell" \
	--warningcontinuecancel "Are you sure you want to exit"
	if [ $? -eq "1" ]
	then
	start
	fi
	kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
	"\n Do you like the project ?"
	$clr
	echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
	read comment
	`echo $comment>>comment.txt`
	`echo "by $answer\n">>comment.txt`
	echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
	echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
	$sleep
	$sleep
	$sleep
	$clr
	exit;;
esac
}
internet;;
6)
$clr
$sleep
echo  "${txtgrn}   ${bold}   ${back}       ${undl}Welcome to Bingo Shell Help page  !!!${exundl}     ${txtrst}"
echo ""
echo "${txtred} ${rev} ${bold} Enter your command help ${txtrst} "
read cmd
echo $(man $cmd)
echo "${txtpur} ${bold} ${back} ${undl}Thank you for using Bingo Shell ... :)${exundl} ${txtrst} ";;
7)$clr
kdialog --title "ProjectBingo Magic Shell" \
--warningcontinuecancel "Are you sure you want to exit"
if [ $? -eq "1" ]
then
start
fi
kdialog --title "ProjectBingo Magic Shell" --warningyesnocancel \
"\n Do you like the project ?"
$clr
echo "${txtred} Please enter the suggestions and your valuable comments which will indeed help in making BINGO SHELL a success in future  ${txtrst} "
read comment
`echo $comment>>comment.txt`
`echo "by $answer\n">>comment.txt`
echo "${txtgrn} ${bold} We regret for any inconveniences.We'll try to solve them in next versions ${txtrst}"
echo "${txtpur} ${bold} ${undl}---------------------------Thank you for using Bingo shell ... :)----------------------${exundl} ${txtrst} "
$sleep
$sleep
$sleep
$sleep
$clr
exit;;
*) $clr
echo "${bold}Please Enter Correct option"
$sleep
$sleep
$clr
start;;
esac
}
start
