#!/bin/bash
# =====================================================================================================
# Copyright (C) 2015 iicc
# =====================================================================================================
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# this program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
# =======================================================================================================
# This script is intended to control the state of a telegram-cli telegram bot running in background.
# The idea is to get the bot fully operative all the time without any supervision by the user.
# It should be able to recover the telegram bot in any case telegram-cli crashes, freezes or whatever.
# tmux support may be added in the future, also more bots support. Check github for updates: iicc1
# This script works by tracing ctxt swithes value in kernel procces at a $RELOADTIME 
# So it can detect any kind of kernel interruption with the procces and reload the bot, all this
# if the preparation and setup has no conflicts and all is perfectly running.
# =======================================================================================================


# ___________________________Script starts here________________________________ #




# Some script variables
OK=0
BAD=0
NONVOLUNTARY=1
NONVOLUNTARYCHECK=0
VOLUNTARY=1
VOLUNTARYCHECK=0
I=1
# Time between checking cpu calls of the cli process. No message received by the bot will
# result in a reload of setup. So set the value high if your bot does not receive lots of messages.
RELOADTIME=10



clear
sleep 0.5

# Space invaders thanks to github.com/windelicato
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
bld=$'\e[1m'
rst=$'\e[0m'

cat << EOF

 $f1  ▀▄   ▄▀     $f2 ▄▄▄████▄▄▄    $f3  ▄██▄     $f4  ▀▄   ▄▀     $f5 ▄▄▄████▄▄▄    $f6  ▄██▄  $rst
 $f1 ▄█▀███▀█▄    $f2███▀▀██▀▀███   $f3▄█▀██▀█▄   $f4 ▄█▀███▀█▄    $f5███▀▀██▀▀███   $f6▄█▀██▀█▄$rst
 $f1█▀███████▀█   $f2▀▀███▀▀███▀▀   $f3▀█▀██▀█▀   $f4█▀███████▀█   $f5▀▀███▀▀███▀▀   $f6▀█▀██▀█▀$rst
 $f1▀ ▀▄▄ ▄▄▀ ▀   $f2 ▀█▄ ▀▀ ▄█▀    $f3▀▄    ▄▀   $f4▀ ▀▄▄ ▄▄▀ ▀   $f5 ▀█▄ ▀▀ ▄█▀    $f6▀▄    ▄▀$rst
 
EOF
echo -e "                \e[100m                Steady script           \e[00;37;40m"
echo -e "               \e[01;34m                  by iicc                \e[00;37;40m"
echo ""
cat << EOF
 $bld$f1▄ ▀▄   ▄▀ ▄   $f2 ▄▄▄████▄▄▄    $f3  ▄██▄     $f4▄ ▀▄   ▄▀ ▄   $f5 ▄▄▄████▄▄▄    $f6  ▄██▄  $rst
 $bld$f1█▄█▀███▀█▄█   $f2███▀▀██▀▀███   $f3▄█▀██▀█▄   $f4█▄█▀███▀█▄█   $f5███▀▀██▀▀███   $f6▄█▀██▀█▄$rst
 $bld$f1▀█████████▀   $f2▀▀▀██▀▀██▀▀▀   $f3▀▀█▀▀█▀▀   $f4▀█████████▀   $f5▀▀▀██▀▀██▀▀▀   $f6▀▀█▀▀█▀▀$rst
 $bld$f1 ▄▀     ▀▄    $f2▄▄▀▀ ▀▀ ▀▀▄▄   $f3▄▀▄▀▀▄▀▄   $f4 ▄▀     ▀▄    $f5▄▄▀▀ ▀▀ ▀▀▄▄   $f6▄▀▄▀▀▄▀▄$rst

EOF

# Bot seleccion
sleep 1.2
echo ""

echo -e "$f6 PLEASE SELECT YOUR BOT:\n $rst"
echo -e "$f3[1]DBTeam\n\n[2]TeleSeed\n\n[3]Telegram-bot\n\n[4]Uzzbot\n\n[5]Other\n\n$rst>>"
read option
case $option in

  1) BOT=DBTeam
  sleep 0.5
  ;;

  2) BOT=TeleSeed
  echo "$f1 ERROR: NOT SUPPORTED YET$rst"
  sleep 3
  exit 1
  ;;

  3) BOT=Telegram-bot
  echo "$f1 ERROR: NOT SUPPORTED YET$rst"
  sleep 3
  exit 1
  ;;

  4) BOT=Merbot
  echo "$f1 ERROR: NOT SUPPORTED YET$rst"
  sleep 3
  exit 1
  ;;

  5) echo "$f1 ERROR: NOT SUPPORTED YET$rst"
	sleep 3
    exit 1
  ;;

  *)
  echo -e "$f1 ERROR: INVALID OPTION$rst"
  sleep 3
  exit 1
  esac
sleep 1.2
echo ""

# Checking if the bot folder is in HOME
echo -e "$bld$f4 CHECKING INSTALLED BOT...$rst"
sleep 0.5
ls ../ | grep $BOT > /dev/null
if [ $? != 0 ]; then
  echo -e "$f1 ERROR: BOT: $BOT NOT FOUND IN YOUR HOME DIRECTORY$rst"
  sleep 4
  exit 1
fi
echo -e "$f2 $BOT FOUND IN YOUR HOME DIRECTORY$rst"
sleep 0.5


echo ""
echo -e "\033[38;5;208m      ____  ____ _____                        \033[0;00m"
echo -e "\033[38;5;208m     |    \|  _ )_   _|___ ____   __  __      \033[0;00m"
echo -e "\033[38;5;208m     | |_  )  _ \ | |/ .__|  _ \_|  \/  |     \033[0;00m"
echo -e "\033[38;5;208m     |____/|____/ |_|\____/\_____|_/\/\_|     \033[0;00m"
echo -e "\033[38;5;208m                                              \033[0;00m"

# Starting preliminar setup
sleep 1.5
echo -e "$bld$f4 CHECKING PROCESSES...$rst"
sleep 0.7

# Looks for the number of screen/telegram-cli processes
SCREENNUM=`ps -e | grep -c screen`
CLINUM=`ps -e | grep -c telegram-cli`

if [ $SCREENNUM -ge 3 ]; then
  echo -e "$f1 ERROR: MORE THAN 2 PROCESS OF SCREEN RUNNING.$rst"
  echo -e "$f1 THESE PROCESSES HAVE BE KILLED. THEN RESTART THE SCRIPT$rst"
  echo -e '$f1 RUN: "killall screen" $rst'
  if [ $CLINUM -ge 2 ]; then
    echo -e "$f1 ERROR: MORE THAN 1 PROCESS OF TELEGRAM-CLI RUNNING.$rst"
    echo -e "$f1 THESE PROCESSES WILL BE KILLED. THEN RESTART THE SCRIPT$rst"
	echo -e "$f1 RUN: killall telegram-cli $rst"
  fi
  sleep 4
  exit 1
fi
echo "$f2 SCREEN NUMBER AND CLI NUMBER UNDER THE SUPPORTED LIMIT"
sleep 0.7
echo "$f2 RUNNING $SCREENNUM SCREEN PROCESS$rst"
echo "$f2 RUNNING $CLINUM TELEGRAM-CLI PROCESS$rst"
sleep 0.9

# Getting screen pid's
ps -e | grep screen | sed 's/^[[:space:]]*//' | cut -f 1 -d" " | while read -r line ; do
  sleep 0.5
  echo -e "$f2 SCREEN NUMBER $I PID: $line$rst"
  if [ $I -eq 1 ]; then
    echo $line > SC1
  else
    echo $line > SC2
  fi
  I=$(( $I + 1 ))
done

# I had some weird errors, so I had to do this silly fix:
SCREENPID1=`cat SC1`
SCREENPID2=`cat SC2`
rm SC1 SC2 >/dev/null

sleep 0.7
CLIPID=`ps -e | grep telegram-cli | sed 's/^[[:space:]]*//' | cut -f 1 -d" "`
if [ $CLINUM -eq 1 ]; then
  echo -e "$f2 RUNNING ONE PROCESS OF TELEGRAM-CLI: $CLIPID1$rst"
  echo -e "$bld$f4 KILLING TELEGRAM-CLI PROCESS. NOT NEEDED NOW$rst"
  kill $CLIPID1
else
  echo -e "$f2 RUNNING ZERO PROCESS OF TELEGRAM-CLI$rst"
fi
sleep 0.7


CLINUM=`ps -e | grep -c telegram-cli`
if [ $CLINUM -eq 1 ]; then
  echo -e "$f1 ERROR: TELEGRAM-CLI PID COULDN'T BE KILLED. IGNORE.$rst"
fi
sleep 1


# =====Setup ends===== #

# Opening new screen in a daemon
echo -e "$bld$f4 ATTACHING SCREEN AS DAEMON...$rst"
# Better to clear cli status before
rm ../.telegram-cli/state  > /dev/null 
# Using tmux background maybe is a better option
screen -d -m bash launch.sh

sleep 1.3

SCREENNUM=`ps -e | grep -c screen`
if [ $SCREENNUM != 3 ]; then
  echo -e "$f1 ERROR: SCREEN RUNNING: $SCREENNUM \n SCREEN ESPECTED: 3$rst"
  exit 1
fi

# Getting screen info
sleep 0.7
echo -e "$bld$f4 RELOADING SCREEN INFO...$rst"
sleep 1
echo -e "$f2 NUMBER OF SCREEN ATTACHED: $SCREENNUM$rst"
echo -e "$f2 SECONDARY SCREEN: $SCREENPID1 AND $SCREENPID2$rst"
SCREEN=`ps -e | grep -v $SCREENPID1 | grep -v $SCREENPID2 | grep screen | sed 's/^[[:space:]]*//' | cut -f 1 -d" "`

sleep 0.5
echo -e "$f2 PRIMARY SCREEN: $SCREEN$rst"

sleep 0.7
echo -e "$bld$f4 RELOADING TELEGRAM-CLI INFO...$rst"
sleep 0.7

# Getting new telegram-cli PID
CLIPID=`ps -e | grep telegram-cli | sed 's/^[[:space:]]*//' |cut -f 1 -d" "`
echo -e "$f2 NEW TELEGRAM-CLI PID: $CLIPID$rst"
if [ -z "${CLIPID}" ]; then
  echo -e "$f1 ERROR: TELEGRAM-CLI PROCESS NOT RUNNING$rst"
  sleep 3
  exit 1
fi


# Locating telegram-cli status
cat /proc/$CLIPID/task/$CLIPID/status > STATUS
NONVOLUNTARY=`grep nonvoluntary STATUS | cut -f 2 -d":" | sed 's/^[[:space:]]*//'`


sleep 5

# :::::::::::::::::::::::::
# ::::::: MAIN LOOP :::::::
# :::::::::::::::::::::::::

  while true; do
  
	echo -e "$f2 TIMES CHECKED AND RUNNING:$f5 $OK $rst"
	echo -e "$f2 TIMES FAILED AND RECOVERED:$f5 $BAD $rst"
	echo ""
	
	cat /proc/$CLIPID/task/$CLIPID/status > CHECK
	VOLUNTARYCHECK=`grep voluntary CHECK | head -1 | cut -f 2 -d":" | sed 's/^[[:space:]]*//'`
	NONVOLUNTARYCHECK=`grep nonvoluntary CHECK | cut -f 2 -d":" | sed 's/^[[:space:]]*//'`
	#echo -e "NONVOLUNTARYCHECK CTXT SWITCHES: $NONVOLUNTARYCHECK"
	#echo -e "NONVOLUNTARY CTXT SWITCHES: $NONVOLUNTARY"
	
	if [ $NONVOLUNTARY != $NONVOLUNTARYCHECK ] || [ $VOLUNTARY != $VOLUNTARYCHECK ]; then
		echo -e "$f5 BOT RUNNING!$rst"
		OK=$(( $OK + 1 ))

	else
		echo -e "$f5 BOT NOT RUNING, TRYING TO RELOAD IT...$rst"
		BAD=$(( $BAD + 1 ))
		sleep 5
		
		rm ../.telegram-cli/state  > /dev/null 

		kill $CLIPID
		kill $SCREEN
		
		screen -d -m bash launch.sh
		sleep 5
		
		CLIPID=`ps -e | grep telegram-cli | sed 's/^[[:space:]]*//' | cut -f 1 -d" "`
		
		if [ -z "${CLIPID}" ]; then
			echo -e "$f1 ERROR: TELEGRAM-CLI PROCESS NOT RUNNING$rst"
			echo -e "$f1 FAILED TO RECOVER BOT$rst"
			sleep 1
		fi
		
		SCREENNUM=`ps -e | grep -c screen`
		if [ $SCREENNUM != 3 ]; then
			echo -e "$f1 ERROR: SCREEN RUNNING: $SCREENNUM \n SCREEN ESPECTED: 3$rst"
			echo -e "$f1 FAILED TO RECOVER BOT$rst"
			exit 1
		fi

		SCREEN=`ps -e | grep -v $SCREENPID1 | grep -v $SCREENPID2 | grep screen | sed 's/^[[:space:]]*//' | cut -f 1 -d" "`
		echo -e "$f5 BOT HAS BEEN SUCCESFULLY RELOADED!$rst"
		echo -e "$f2 TELEGRAM-CLI NEW PID: $CLIPID$rst"
		echo -e "$f2 SCREEN NEW PID: $SCREEN$rst"
		sleep 3
		
	fi
	
	VOLUNTARY=`echo $VOLUNTARYCHECK`
	NONVOLUNTARY=`echo $NONVOLUNTARYCHECK`
	sleep $RELOADTIME
	rm CHECK
	
  done

# ___________________________Script ends here________________________________ #
