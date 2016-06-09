#!/usr/bin/env bash

THIS_DIR=$(cd $(dirname $0); pwd)
cd $THIS_DIR

update() {
  git pull
  git submodule update --init --recursive
  install_rocks
}

# Will install luarocks on THIS_DIR/.luarocks
install_luarocks() {
  git clone https://github.com/keplerproject/luarocks.git
  cd luarocks
  git checkout tags/v2.3.0-rc2 # Release Candidate

  PREFIX="$THIS_DIR/.luarocks"

  ./configure --prefix=$PREFIX --sysconfdir=$PREFIX/luarocks --force-config

  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  make build && make install
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting.";exit $RET;
  fi

  cd ..
  rm -rf luarocks
}

install_rocks() {
  ./.luarocks/bin/luarocks install luasec
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lbase64 20120807-3
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install luafilesystem
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lub
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install luaexpat
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install redis-lua
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install lua-cjson
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install fakeredis
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install xml
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install feedparser
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi

  ./.luarocks/bin/luarocks install serpent
  RET=$?; if [ $RET -ne 0 ];
    then echo "Error. Exiting."; exit $RET;
  fi
}

install() {
  git pull
  git submodule update --init --recursive
  patch -i "patches/disable-python-and-libjansson.patch" -p 0 --batch --forward
  RET=$?;

  cd tg
  if [ $RET -ne 0 ]; then
    autoconf -i
  fi
  ./configure && make

  RET=$?; if [ $RET -ne 0 ]; then
    echo "Error. Exiting."; exit $RET;
  fi
  cd ..
  install_luarocks
  install_rocks
  
}

if [ "$1" = "install" ]; then
  install
elif [ "$1" = "update" ]; then
  update
else
  if [ ! -f ./tg/telegram.h ]; then
    echo "tg not found"
    echo "Run $0 install"
    exit 1
  fi

  if [ ! -f ./tg/bin/telegram-cli ]; then
    echo "tg binary not found"
    echo "Run $0 install"
    exit 1
  fi
  
 ## chmod 777 config_maxing.sh
  echo -e "\033[38;5;208m"   
  echo -e "''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''"
  echo -e "´´´´´´´´´´´´´´´´´´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´´´´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´´´´´¶¶¶¶¶¶´´´´´´´´´´´´´¶¶¶¶¶¶¶´´´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´´¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´¶¶¶¶´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶¶´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´ ´¶¶´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´¶¶,,,,,,,,Ｂ Ａ Ｂ Ｅ Ｌ Ｅ Ｏ Ｎ,,,¶¶´´'''''''''"
  echo -e "´´´´´´´´´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´'´´´´´´´´´"
  echo -e "´´´´´´´´´´¶¶´¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´¶¶´'´´´´´´´´´"
  echo -e "´´´´´´´´´´¶¶´¶¶´´´´´´´´´´´´´´´´''´´´''''´¶¶´¶¶´´´´´'´'''''''"
  echo -e "´´´´´´´´´´¶¶´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´¶¶´'´´´´´´´´´"
  echo -e "´´´´´´´´´´¶¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶'´¶¶´'´´´´´´´´´"
  echo -e "´´´´´´´´´´¶¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´''¶¶''¶¶''´´´´´´´´´"
  echo -e "´´´´´´´´´´´¶¶´¶¶´´´¶¶¶¶¶¶´´´´´''´¶¶¶¶¶¶¶¶´´´¶¶'¶¶´'´''''''''"
  echo -e "´´´´´´´´´´´´¶¶¶¶´¶¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶´'¶¶¶¶'´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´¶¶¶´¶¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶´'¶¶¶´´´'´´´´´´´´´"
  echo -e "´´´´¶¶¶´´´´´´´¶¶´´¶¶¶¶¶¶¶¶´´´´´´´¶¶¶¶¶¶¶¶¶´´¶¶´´´´'´´¶¶¶¶´´´"
  echo -e "´´´¶¶¶¶¶´´´´´¶¶´´´¶¶¶¶¶¶¶´´´¶´¶´´´¶¶¶¶¶¶¶´´'´¶¶´´´'´¶¶¶¶¶¶´´"
  echo -e "´´¶¶´´´¶¶´´´´¶¶´´´´´'´´''´´¶¶¶¶¶´´´'''´´´´'''¶¶´´´'¶¶´´´¶¶´´"
  echo -e "´¶¶¶´´´´¶¶¶¶´´¶¶´´´´´´´´´´¶¶¶´¶¶¶´´´´´´´´´´¶¶´´¶¶¶'¶´´´´¶¶¶´"
  echo -e "¶¶´´´´´´´´´¶¶¶¶¶¶¶¶´´´´´´´¶¶¶´¶¶¶´´´´´´´¶¶¶¶¶¶¶¶¶´'´´´´´´´¶¶"
  echo -e "¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶´´´´¶¶¶´¶¶¶´´´´¶¶¶¶¶¶¶¶´´´´´'´¶¶¶¶¶¶¶¶"
  echo -e "´´¶¶¶¶´¶¶¶¶¶´´´´´´¶¶¶¶¶´´´´'´´´´´´´´¶¶¶¶¶´´´'´´¶¶¶'¶¶¶¶¶¶´''"
  echo -e "´´´´´´´´´´¶¶¶¶¶¶´´¶¶¶´¶¶´´´´´´´´´´´¶¶´¶¶¶´´¶¶¶¶¶¶´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´´¶¶¶¶¶¶´¶´´¶¶¶¶¶¶¶¶¶¶¶´¶¶´¶¶¶¶¶¶´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´´´´´´¶¶´¶´¶¶´¶¶´¶´¶¶¶¶¶¶¶´¶¶´´´´´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´´´´´¶¶¶¶´¶¶´¶´¶¶´¶´¶¶´¶´¶¶´¶¶¶¶¶´´´´´´'´´´´´´´´´"
  echo -e "´´´´´´´´´´´´¶¶¶¶¶´¶¶´´´¶¶¶¶¶¶¶¶¶¶¶¶¶´´´¶¶´¶¶¶¶¶´´´'´´´´´´´´´"
  echo -e "´´´´¶¶¶¶¶¶¶¶¶¶´´´´´¶¶´´´´´´´´´´´´´´´´´¶¶´´´´´´¶¶¶¶'¶¶¶¶¶´´´´"
  echo -e "´´´¶¶´´´´´´´´´´´¶¶¶¶¶¶¶´´´´´´´´´´´´´¶¶¶¶¶¶¶¶´´´´´´'´´´´¶¶´´´"
  echo -e "´´´´¶¶¶´´´´´¶¶¶¶¶´´´´´¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶´´´´´¶¶¶¶¶´´´'´´¶¶¶´´´´"
  echo -e "´´´´´´¶¶´´´¶¶¶´´´´´´´´´´´¶¶¶¶¶¶¶¶¶´´´´´´´´´´´¶¶¶´´'´¶¶´´´´´´"
  echo -e "´´´´´´¶¶´´¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶´'´¶¶´´´´´´"
  echo -e "´´´´´´´¶¶¶¶´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´´¶¶'¶¶´´´´´´'"
  echo -e "''''''''''''''''''''''''''''''''''''''''''''''''''\033[0;00m"
  echo -e "\e[36m"                                      
  echo -e "D.E.V : ＳＨＥＣＫＥＳＰＥＲ"          
  cat << EOF
 $f1░░░░░░███████ ]▄▄▄▄▄▄▄▄▃ $f2 ▓▓☉「ＳＨＥＣＫＥＳＰＥＲ」☉▓▓
 $f1▂▄▅█████████▅▄▃▂         $f2【τειε™】￫＠ＬＯＣＫ＿ＡＴ＿ＭＥ＿ＮＡＷ
 $f1I███████████████████].   $f2【ϐΘϮ】ＢＡＢＥＬＥＯＮ￩
 $f1◥⊙▲⊙▲⊙▲⊙▲⊙▲⊙▲⊙◤..          $f2ＤＥＶＥＲＬＰＥＲ₯ T.E.L.E
EOF
echo -e "\e[100m         D.E.V : ＳＨＥＣＫＥＳＰＥＲ          \e[00;37;40m"
echo -e "\e[01;34m            【τειε™】￫@lock_at_me_now         \e[00;37;40m"
echo ""
  if [ -f data/config.lua ]; then
    ./config_maxing.sh
  fi
  
  if [ -f plugins/gban_installer.lua ]; then
    
    L=$(wc -l plugins/gban_installer.lua | cut -d " " -f1)
    R=$(echo $L -20 | bc)
    
    #N=$(grep -nr "send_msg('chat#id'.*" plugins/gban_installer.lua | cut -d ":" -f1)
    #M=$(grep -nr "send_msg('channel#id'.*" plugins/gban_installer.lua | cut -d ":" -f1)
    
    grep -v "send_msg('chat#id'.*" plugins/gban_installer.lua > gban1
    grep -v "send_msg('channel#id'.*" gban1 > plugins/gban_installer.lua
    sed -i "s/.*chat.*/&\n    send_msg('chat#id'..msg.to.id, '$R accounts globally banned. ☠', ok_cb, false)/" plugins/gban_installer.lua
    sed -i "s/.*channel.*/&\n    send_msg('channel#id'..msg.to.id, '$R accounts globally banned. ☠', ok_cb, false)/" plugins/gban_installer.lua
    rm gban1
    
  fi
  
  ./tg/bin/telegram-cli -k ./tg/tg-server.pub -s ./BABELEON_BOT/babeleon_bot.lua -l 1 -E $@
fi
