#!/bin/bash
#Script to fix config.lua By @iicc1
#DBTeam

CONF=data/config.lua
CONF2=data/config2.lua

cat $CONF | grep "enabled_lang" > /dev/null
if [ $? == 0 ]; then
	echo -e "\e[33mPatching config.lua not needed.\e[36m"
	exit 0
else
	
	echo -e "\e[33mPatching config.lua languages...\e[39m"
	sleep 1.5
	
	#config.lua backup
	cp $CONF ${CONF}.backup
	
	grep -v "_lang" $CONF > $CONF2

	awk '/sudo_users/{print "  enabled_lang = {"}1' $CONF2 > $CONF
	sed 's/.*enabled_lang.*/&\n    "arabic_lang",/' $CONF > $CONF2
	sed 's/.*arabic_lang.*/&\n    "catalan_lang",/' $CONF2 > $CONF
	sed 's/.*catalan_lang.*/&\n    "english_lang",/' $CONF > $CONF2
	sed 's/.*english_lang.*/&\n    "galician_lang",/' $CONF2 > $CONF
	sed 's/.*galician_lang.*/&\n    "italian_lang",/' $CONF > $CONF2
	sed 's/.*italian_lang.*/&\n    "persian_lang",/' $CONF2 > $CONF
	sed 's/.*persian_lang.*/&\n    "portuguese_lang",/' $CONF > $CONF2
	sed 's/.*portuguese_lang.*/&\n    "spanish_lang"/' $CONF2 > $CONF
	sed 's/.*spanish_lang.*/&\n  },/' $CONF > $CONF2
	mv $CONF2 $CONF
	echo -e "\e[96mDone!\e[36m"
fi
