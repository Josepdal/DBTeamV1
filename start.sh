#!/bin/bash 
sudo start.sh
clear
echo -e "\033[38;5;208m"
echo -e "      ____  ____ _____                        "
echo -e "     |    \|  _ )_   _|___ ____   __  __      "
echo -e "     | |_  )  _ \ | |/ .__|  _ \_|  \/  |     "
echo -e "     |____/|____/ |_|\____/\_____|_/\/\_|     "
echo -e "                                              \033[0;00m"
echo -e "          Developers @Josepdal @MaSkAoS       "
echo -e "      steady by @iicc1         start by @Jarriz  "
echo -e "\e[34m"
echo "Please, select your language."
echo -e "\033[38;5;208m"
echo "   1) English."
echo "   2) Spanish."
echo "   3) Portuguese."
echo -e "\e[32m"
read VAR
if [ "$VAR" = 2 ]; then

clear
echo -e "\e[34m"
echo "Por favor, selecciona tu opcion."
echo -e "\033[38;5;208m"
echo "   1) Iniciar DBTeam (tmux)."
echo "   2) Abrir sesion anterior (registros)"
echo "   3) Abrir sesion anterior (tmux)."
echo "   4) Cerrar todas las sesiones."
echo "   5) Reiniciar DBTeam (tmux)."
echo "   6) Actualizar DBTeam."
echo "   7) Respaldar DBTeam"
echo "   8) Cambiar telefono."
echo "   9) Restaurar y actualizar plugins."
echo "  10) Instalar DBTeam."
echo "  11) Salir."
echo -e "\e[32m"
read VAR
if [ "$VAR" = 1 ]; then
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
killall screen
killall telegram-cli
killall tmux
clear
echo -e "\e[34m"
echo Sesiones cerradas.
echo -e "\e[32m"
elif [ "$VAR" = 5 ]; then
killall tmux
read -n1 -r -p 'Presiona cualquier tecla para continuar...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
clear
rm -R /home/DBTeamBackup
clear
mkdir /home/DBTeamBackup
cp -R ../DBTeam/ /home/DBTeamBackup
read -n1 -r -p 'Respaldo exitoso! Guardado en /home/DBTeamBackup. Presiona cualquier tecla para finalizar'
clear
elif [ "$VAR" = 8 ]; then
killall screen
killall tmux
killall telegram-cli
rm -R ../.telegram-cli
./launch.sh install
read -n1 -r -p 'Terminado!, presiona cualquier tecla para el paso siguente'
./launch.sh
elif [ "$VAR"  = 9 ]; then
echo -e "\e[31m"
echo "IMPORTANTE: Todos tus plugins se restableceran y actualizaran a la configuracion por defecto de DBTeam."
echo "            Cualquier otra modificacion externa de DBTeam sera sustituida."
echo "Quieres continuar?"
read -n1 -r -p 'Presiona cualquier tecla para continuar'
echo -e "\e[32m"
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/Welcome.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/arabic.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/arabic_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/bot.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/catalan_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/commands.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/english_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/export_gban.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/galician_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/giverank.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/id.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/italian_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/links.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/moderation.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/persian_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/plugins.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/portuguese_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/rules.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/settings.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/spam.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/spanish_lang.lua
wget https://github.com/Josepdal/DBTeam/blob/master/plugins/version.lua
rm -R plugins/Welcome.lua
rm -R plugins/arabic.lua
rm -R plugins/arabic_lang.lua
rm -R plugins/bot.lua
rm -R plugins/catalan_lang.lua
rm -R plugins/commands.lua
rm -R plugins/english_lang.lua
rm -R plugins/export_gban.lua
rm -R plugins/galician_lang.lua
rm -R plugins/giverank.lua
rm -R plugins/id.lua
rm -R plugins/italian_lang.lua
rm -R plugins/links.lua
rm -R plugins/moderation.lua
rm -R plugins/persian_lang.lua
rm -R plugins/plugins.lua
rm -R plugins/portuguese_lang.lua
rm -R plugins/rules.lua
rm -R plugins/settings.lua
rm -R plugins/spam.lua
rm -R plugins/spanish_lang.lua
rm -R plugins/version.lua
mv Welcome.lua plugins/
mv arabic.lua plugins/
mv arabic_lang.lua plugins/
mv bot.lua plugins/
mv catalan_lang.lua plugins/
mv commands.lua plugins/
mv english_lang.lua plugins/
mv export_gban.lua plugins/
mv galician_lang.lua plugins/
mv giverank.lua plugins/
mv id.lua plugins/
mv italian_lang.lua plugins/
mv links.lua plugins/
mv moderation.lua plugins/
mv persian_lang.lua plugins/
mv plugins.lua plugins/
mv portuguese_lang.lua plugins/
mv rules.lua plugins/
mv settings.lua plugins/
mv spam.lua plugins/
mv spanish_lang.lua plugins/
mv version.lua plugins/
echo "Plugins restaurados y actualizados!"
read -n1 -r -p 'Presiona cualquier tecla para volver al inicio.'
./start.sh
elif [ "$VAR" = 10 ]; then
echo -e "      La instalacion de DBTeam comenzara.      "
echo -e "DBTeam fue desarrollado por @Josepdal y @MaSkAoS"
echo -e "Gracias a @iicc1 y a @Jarriz por hacer que DBTeam funcione con mas estabilidad y facilidad"
read -n1 -r -p 'Presiona cualquier tecla para comenzar la instalación'
sudo apt-get update && apt-get upgrade
read -n1 -r -p 'Paso 1/3. Paquetes actualizados, Presiona cualquier tecla para seguir con el siguiente paso'
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
read -n1 -r -p 'Paso 2/3. Dependencias instaladas, Presiona cualquier tecla para seguir con el siguiente paso'
./launch.sh install
read -n1 -r -p 'Paso 3/3. Instalacion completa! Gracias por preferir DBTeam el equipo de DBTeam te lo agradece! Esperamos que DBTeam sea de tu agrado. A continuacion te pedira tu numero telefonico y el codigo de confirmacion que te llegara por sms o Telegram, por favor, ingresa tu numero con + [Codigo De Pais] [Numero telefonico]'
clear
service redis-server start
clear
./launch.sh
elif [ "$VAR" = 11 ]; then
clear
exit

echo -e "\e[31m"
echo "Opcion invalida"
echo -e "\e[32m"
else
clear
echo -e "\e[31m"
echo "Opcion invalida"
echo -e "\e[32m"
fi

elif [ "$VAR" = 1 ]; then

clear
echo -e "\e[34m"
echo "Please, select your option."
echo -e "\033[38;5;208m"
echo "   1) Run DBTeam (tmux)."
echo "   2) Last session (register)."
echo "   3) Last session (tmux)."
echo "   4) Close all sessions."
echo "   5) Restart DBTeam (tmux)."
echo "   6) Update DBTeam."
echo "   7) Backup DBTeam."
echo "   8) Change number."
echo "   9) Install DBTeam."
echo "  10) Exit."
echo -e "\e[32m"
read VAR
if [ "$VAR" = 1 ]; then
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
killall screen
killall telegram-cli
killall tmux
clear
echo -e "\e[34m"
echo Sessions closed.
echo -e "\e[32m"
echo
elif [ "$VAR" = 5 ]; then
killall tmux
read -n1 -r -p 'Press any key to continue...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
clear
rm -R /home/DBTeamBackup
clear
mkdir /home/DBTeamBackup
cp -R ../DBTeam/ /home/DBTeamBackup
read -n1 -r -p 'Backup finished! Saved in /home/DBTeamBackup. Press any key to finish'
clear
elif [ "$VAR" = 8 ]; then
killall screen
killall tmux
killall telegram-cli
rm -R ../.telegram-cli
./launch.sh install
read -n1 -r -p 'Finished!, press any key to the next step.'
./launch.sh
elif [ "$VAR" = 9 ]; then
echo -e "      DBTeam installation will start.      "
echo -e "DBTeam was developed by @Josepdal and @MaSkAoS"
echo -e "Thanks to @iicc1 and @Jarriz DBTeam works easily and more stable"
read -n1 -r -p 'Press any key to start install'
sudo apt-get update && apt-get upgrade
read -n1 -r -p 'Step 1/3. Packages updated, Press any key to the next step'
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
read -n1 -r -p 'Step 2/3. Dependences installed. Press any key to the next step'
./launch.sh install
read -n1 -r -p 'Step 3/3. Instalation finished! Thanks to install DBTeam, the team of DBTeam say thank you! We hope you like DBTeam. Then, the script will ask your number y and the confirmation code, Telegram will send a sms o Telegram msg, please, type your numer with + [Code state] [Your phone]'
clear
service redis-server start
clear
./launch.sh
elif [ "$VAR" = 10 ]; then
clear
exit
elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[32m"
else
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[32m"
fi

elif [ "$VAR" = 3 ]; then

clear
echo -e "\e[34m"
echo "Por favor, selecione uma opção."
echo -e "\033[38;5;208m"
echo "   1) Executar DBTeam (tmux)."
echo "   2) Última sessão (registrado)."
echo "   3) Última sessão (tmux)."
echo "   4) Fechar todas as sessões."
echo "   5) Reiniciar DBTeam (tmux)."
echo "   6) Atualizar DBTeam."
echo "   7) Backup DBTeam."
echo "   8) Change number."
echo "   9) Install DBTeam."
echo "  10) Sair."
echo -e "\e[32m"
read VAR
if [ "$VAR" = 1 ]; then
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
killall screen
killall telegram-cli
killall tmux
clear
echo -e "\e[34m"
echo Sessões fechadas.
echo -e "\e[32m"
echo
elif [ "$VAR" = 5 ]; then
killall tmux
read -n1 -r -p 'Pressione qualquer tecla para continuar...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
clear
rm -R /home/DBTeamBackup
clear
mkdir /home/DBTeamBackup
cp -R ../DBTeam/ /home/DBTeamBackup
read -n1 -r -p 'Backup finished! Saved in /home/DBTeamBackup. Press any key to finish'
clear
elif [ "$VAR" = 8 ]; then
killall screen
killall tmux
killall telegram-cli
rm -R ../.telegram-cli
./launch.sh install
read -n1 -r -p 'Finished!, press any key to the next step.'
./launch.sh
elif [ "$VAR" = 9 ]; then
echo -e "      DBTeam installation will start.      "
echo -e "DBTeam was developed by @Josepdal and @MaSkAoS"
echo -e "Thanks to @iicc1 and @Jarriz DBTeam works easily and more stable"
read -n1 -r -p 'Press any key to start install'
sudo apt-get update && apt-get upgrade
read -n1 -r -p 'Step 1/3. Packages updated, Press any key to the next step'
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
read -n1 -r -p 'Step 2/3. Dependences installed. Press any key to the next step'
./launch.sh install
read -n1 -r -p 'Step 3/3. Instalation finished! Thanks to install DBTeam, the team of DBTeam say thank you! We hope you like DBTeam. Then, the script will ask your number y and the confirmation code, Telegram will send a sms o Telegram msg, please, type your numer with + [Code state] [Your phone]'
clear
service redis-server start
clear
./launch.sh
elif [ "$VAR" = 10 ]; then
clear
exit
elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Opção invalida"
echo -e "\e[32m"
else
clear
echo -e "\e[31m"
echo "Opção invalida"
echo -e "\e[32m"
fi

elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[32m"
else
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[32m"
fi
