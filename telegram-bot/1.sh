#!/system/bin/sh
##################################################
#Checks if the bot is running every 20s.#####################
#In case that the bot is off, it will be reestarted on a new screen########
#You need to have "screen" program installed, sudo apt-get install screen to install it
#############################################
#By @iicc1 ########
###########################################
#It is ony valid if you have one bot in your server, if you have more, change the value of BOT_NUMBER
###############################################

#Default
BOT_NUMBER=1

ps -e | tee check > /dev/null

grep -c "telegram-cli" check > /dev/null
CHECK=`grep -c "telegram-cli" check`

if [ "$CHECK" = "$BOT_NUMBER" ]; then
        sleep 20
        echo "Bot is running..."
else
echo "Error, reestarting bot..."
sleep 5
./launch.sh
quit

fi
rm check
sh check.sh
