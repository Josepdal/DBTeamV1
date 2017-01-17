#!/bin/bash 

# If ./start <no option> then
if [ ! "$1" ]; then
clear
echo -e "\033[38;5;208m"
echo -e "      ____  ____ _____                        "
echo -e "     |    \|  _ )_   _|___ ____   __  __      "
echo -e "     | |_  )  _ \ | |/ .__|  _ \_|  \/  |     "
echo -e "     |____/|____/ |_|\____/\_____|_/\/\_|     "
echo -e "                                              \033[0;00m"
echo -e "          Developers @Josepdal @MaSkAoS       "
echo -e "      steady by @iicc1         start by @jarriz  "
echo -en "\n"
echo -e " Run ./start --help to see the availables options  "
echo -e "\e[34m"
echo "Please, select your language."
echo -e "\033[38;5;208m"
echo "   1) English."
echo "   2) Spanish."
echo "   3) Portuguese."
echo -e "\e[0m"
# Read VAR of languages. First language Spanish.
# options
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
echo -e "\e[0m"
# Suboptions spanish
read VAR
if [ "$VAR" = 1 ]; then
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
	sudo tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
	sudo tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	clear
	echo -e '\e[34mSesiones cerradas.\e[0m'
elif [ "$VAR" = 5 ]; then
	clear
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	read -n1 -r -p 'Presiona cualquier tecla para continuar...' 
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
	clear
	sudo git pull
elif [ "$VAR" = 7 ]; then
	clear
	mkdir /home/DBTeamBackup
	sudo rm -R /home/DBTeamBackup/DBTeam
	clear
	cp -R ../DBTeam/ /home/DBTeamBackup
	echo "Respaldo exitoso! Guardado en /home/DBTeamBackup."
	read -n1 -r -p 'Si quieres borrar los backups escribe bkpdel al iniciar start.sh. Presiona cualquier tecla para finalizar'
	clear
elif [ "$VAR" = 8 ]; then
	clear
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	sudo rm -R ../.telegram-cli
	sudo ./launch.sh install
	read -n1 -r -p 'Terminado!, presiona cualquier tecla para el paso siguente'
	sudo ./launch.sh
elif [ "$VAR"  = 9 ]; then
	clear
	echo -e "\e[31m"
	echo "IMPORTANTE: Todos tus plugins se restableceran y actualizaran a la configuracion por defecto de DBTeam."
	echo "            Cualquier otra modificacion externa de DBTeam sera sustituida."
	echo "            Se creara un backup en /home/DBTeamBackup/plugins."
	echo "            Si deseas eliminar todos los backups escribe bkpdel al iniciar start.sh."
	echo "Quieres continuar?"
	echo "	Si = y		No = n	"
# SubVar confirmation and change color.
echo -e '\e[0m'
read subVAR
	if [ "$subVAR"  = y ]; then
		mkdir /home/DBTeamBackup
		sudo rm -R /home/DBTeamBackup/plugins
		clear
		cp -R plugins/ /home/DBTeamBackup
		clear
		echo -e "\e[32m"
		dpkg -s subversion 2>/dev/null >/dev/null || sudo apt-get -y install subversion
		sudo rm -rf plugins
		svn export https://github.com/Josepdal/DBTeam/trunk/plugins
		echo "Plugins restaurados y actualizados!"
		read -n1 -r -p 'Presiona cualquier tecla para volver al inicio.'
		sudo ./start.sh 
	elif [ "$subVAR"  = n ]; then
		clear
		echo -e "\e[0m"
		exit
	elif [ "$subVAR" = "" ]; then
		clear
		echo -e '\e[31mOpcion invalida\e[0m'
		else
		clear
		echo -e '\e[31mOpcion invalida\e[0m'
	fi
# end
elif [ "$VAR" = 10 ]; then
	clear
	echo -e "      La instalacion de DBTeam comenzara.      "
	echo -e "DBTeam fue desarrollado por @Josepdal y @MaSkAoS"
	echo -e "Gracias a @iicc1 y a @Jarriz por hacer que DBTeam funcione con mas estabilidad y facilidad"
	read -n1 -r -p 'Presiona cualquier tecla para comenzar la instalación'
	sudo apt-get update && apt-get upgrade
	read -n1 -r -p 'Paso 1/3. Paquetes actualizados, Presiona cualquier tecla para seguir con el siguiente paso'
	sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
	read -n1 -r -p 'Paso 2/3. Dependencias instaladas, Presiona cualquier tecla para seguir con el siguiente paso'
	sudo ./launch.sh install
	read -n1 -r -p 'Paso 3/3. Instalacion completa! Gracias por preferir DBTeam el equipo de DBTeam te lo agradece! Esperamos que DBTeam sea de tu agrado. A continuacion te pedira tu numero telefonico y el codigo de confirmacion que te llegara por sms o Telegram, por favor, ingresa tu numero con + [Codigo De Pais] [Numero telefonico]'
	clear
	sudo service redis-server start
	clear
	sudo ./launch.sh
elif [ "$VAR" = 11 ]; then
	clear
	exit
elif [ "$VAR" = "" ]; then
	clear
	echo -e '\e[31mOpcion invalida\e[0m'
	else
	clear
	echo -e '\e[31mOpcion invalida\e[0m'
fi

# English Lang
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
echo "   9) Restore and Update plugins."
echo "  10) Install DBTeam."
echo "  11) Exit."
echo -e '\e[0m'
# options
read VAR
if [ "$VAR" = 1 ]; then
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
	sudo tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
	sudo tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	clear
	echo -e '\e[34mSessions closed\e[0m'
	echo
elif [ "$VAR" = 5 ]; then
	clear
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	read -n1 -r -p 'Press any key to continue...' 
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
	clear
	sudo git pull
elif [ "$VAR" = 7 ]; then
	clear
	mkdir /home/DBTeamBackup
	sudo rm -R /home/DBTeamBackup/DBTeam
	clear
	cp -R ../DBTeam/ /home/DBTeamBackup
	echo "Backup finished! Saved in /home/DBTeamBackup."
	read -n1 -r -p 'If you want delete all backups type bkpdel at run start.sh. Press any key to exit'
	clear
elif [ "$VAR" = 8 ]; then
	clear
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	sudo rm -R ../.telegram-cli
	sudo ./launch.sh install
	read -n1 -r -p 'Finished!, press any key to the next step.'
	sudo ./launch.sh
elif [ "$VAR"  = 9 ]; then
	clear
	echo -e "\e[31m"
	echo "IMPORTANT: All your plugins will be deleted and updated."
	echo "           Any Modifications will be replaced with the DBTeam repository."
	echo "           Start.sh will make a backup in /home/DBTeamBackup/plugins."
	echo "           If you want delete all backups, type bkpdel at run Start.sh."
	echo "Are you sure?"
	echo "	Yes = y			Not= n		"
# SubVar confirmation and change color
echo -e "\e[0m"
read subVAR
	if [ "$subVAR"  = y ]; then
		mkdir /home/DBTeamBackup/
		sudo rm -R /home/DBTeamBackup/plugins
		clear
		cp -R plugins/ /home/DBTeamBackup
		clear
		echo -e "\e[32m"
		dpkg -s subversion 2>/dev/null >/dev/null || sudo apt-get -y install subversion
		sudo rm -rf plugins
		svn export https://github.com/Josepdal/DBTeam/trunk/plugins
		echo "Plugins restored and updated!"
		read -n1 -r -p 'Press any key to back.'
		sudo ./start.sh
	elif [ "$subVAR"  = n ]; then
		clear
		echo -e "\e[0m"
		exit
	elif [ "$subVAR" = "" ]; then
		clear
		echo -e '\e[31mOption invalid\e[0m'
		else
		clear
		echo -e '\e[31mOption invalid\e[0m'
	fi
# end
elif [ "$VAR" = 10 ]; then
	clear
	echo -e "      DBTeam installation will start.      "
	echo -e "DBTeam was developed by @Josepdal and @MaSkAoS"
	echo -e "Thanks to @iicc1 and @Jarriz because DBTeam works easily and more stable."
	read -n1 -r -p 'Press any key to start install'
	sudo apt-get update && apt-get upgrade
	read -n1 -r -p 'Step 1/3. Packages updated, Press any key to the next step'
	sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
	read -n1 -r -p 'Step 2/3. Dependences installed. Press any key to the next step'
	sudo ./launch.sh install
	read -n1 -r -p 'Step 3/3. Instalation finished! Thanks to install DBTeam, the team of DBTeam say thank you! We hope you like DBTeam. Then, the script will ask your number y and the confirmation code, Telegram will send a sms o Telegram msg, please, type your numer with + [Code state] [Your phone]'
	clear
	sudo service redis-server start
	clear
	sudo ./launch.sh
elif [ "$VAR" = 11 ]; then
	clear
	exit
elif [ "$VAR" = "" ]; then
	clear
	echo -e '\e[31mOption invalid\e[0m'
else
	clear
	echo -e '\e[31mOption invalid\e[0m'
fi

# Portuguese Lang

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
echo "   8) Mudar número."
echo "   9) Excluir e Atualizar plugins."
echo "   10) Instalar DBTeam."
echo "   11) Sair."
echo -e "\e[0m"
# Suboptions portuguese
read VAR
if [ "$VAR" = 1 ]; then
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
	sudo tmux attach-session -t DBTeam
elif [ "$VAR" = 3 ]; then
	sudo tmux attach-session -t script
elif [ "$VAR" = 4 ]; then
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	clear
	echo -e '\e[34mSessões fechadas.\e[0m'
	echo
elif [ "$VAR" = 5 ]; then
	clear
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	read -n1 -r -p 'Pressione qualquer tecla para continuar...' 
	sudo tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
	clear
	sudo git pull
elif [ "$VAR" = 7 ]; then
	clear
	sudo rm -R /home/DBTeamBackup/DBTeam
	mkdir /home/DBTeamBackup
	clear
	cp -R ../DBTeam/ /home/DBTeamBackup
	echo "Backup finalizado! Salvo em /home/DBTeamBackup."
	read -n1 -r -p 'If you want delete all backups type bkpdel at run start.sh. Pressione qualquer tecla para finalizar.'
	clear
elif [ "$VAR" = 8 ]; then
	clear
	sudo killall telegram-cli
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	sudo rm -R ../.telegram-cli
	sudo ./launch.sh install
	read -n1 -r -p 'Finalizado!, Pressione qualquer tecla para o próximo passo.'
	sudo ./launch.sh
elif [ "$VAR"  = 9 ]; then
	clear
	echo -e "\e[31m"
	echo "IMPORTANT: All your plugins will be deleted and updated."
	echo "           Any Modifications will be replaced with the DBTeam repository."
	echo "           Start.sh will make a backup in /home/DBTeamBackup/plugins."
	echo "           If you want delete all backups, type bkpdel at run Start.sh."
	echo "Are you sure?"
	echo "	Yes = y		Not = n	"
# SubVar confirmation and change color.
echo -e "\e[0m"
read subVAR
	if [ "$subVAR"  = y ]; then
		mkdir /home/DBTeamBackup
		sudo rm -R /home/DBTeamBackup/plugins
		clear
		cp -R plugins/ /home/DBTeamBackup
		clear
		echo -e "\e[32m"
		dpkg -s subversion 2>/dev/null >/dev/null || sudo apt-get -y install subversion
		sudo rm -rf plugins
		svn export https://github.com/Josepdal/DBTeam/trunk/plugins
		echo "Plugins restored and updated!"
		read -n1 -r -p 'Press any key to back.'
		sudo ./start.sh
	elif [ "$subVAR"  = n ]; then
		clear
		echo -e "\e[0m"
		exit
	elif [ "$subVAR" = "" ]; then
		clear
		echo -e '\e[31mOpção invalida\e[0m'
	else
		clear
		echo -e '\e[31mOpção invalida\e[0m'
	fi
elif [ "$VAR" = 10 ]; then
	clear
	echo -e "      A Instalação DBTeam será iniciada.      "
	echo -e "DBTeam foi desenvolvida por @Josepdal e @MaSkAoS"
	echo -e "Obrigado para @iicc1 e @Jarriz por fazer DBTeam trabalhar de forma fácil e mais estável"
	read -n1 -r -p 'Pressione qualquer tecla para iniciar a instalação'
	sudo apt-get update && apt-get upgrade
	read -n1 -r -p 'Passo 1/3. Pacotes atualizados, pressione qualquer tecla para o próximo passo'
	sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev
	read -n1 -r -p 'Passo 2/3. Dependências instaladas. Pressione qualquer tecla para o próximo passo'
	sudo ./launch.sh install
	read -n1 -r -p 'Passo 3/3. Instalação finalizada! Obrigado por instalar o DBTeam, a equipe do DBTeam diz obrigado! Esperamos que você goste do DBTeam. Então, o script irá pedir o seu número e o código de confirmação, Telegram irá enviar um sms com o código do Telegram, por favor, digite o número com +[DDI] [Seu Telefone]'
	clear
	sudo service redis-server start
	clear
	sudo ./launch.sh
	echo -e "\e[0m"
elif [ "$VAR" = 11 ]; then
	clear
	exit
elif [ "$VAR" = "" ]; then
	clear
	echo -e '\e[31mOpção invalida\e[0m'
else
	clear
	echo -e '\e[31mOpção invalida\e[0m'
fi
# DELETE BACKUPS
elif [ "$VAR" = bkpdel ]; then
	clear
	echo -e "\e[31m"
	echo "1) Delete plugins backup."
	echo "2) Delete DBTeam backup."
	echo "3) Delete all backups."
read BKPVAR
if [ "$BKPVAR" = 1 ]; then
	sudo rm -Rf /home/DBTeamBackup/plugins
	clear
	echo -e '\e[31mBackups of Plugins removed\e[0m'
elif [ "$BKPVAR" = 2 ]; then
	sudo rm -R /home/DBTeamBackup/DBTeam
	clear
	echo -e '\e[31mBackups of DBTeam removed\e[0m'
elif [ "$BKPVAR" = 3 ]; then
	sudo rm -R /home/DBTeamBackup/
	clear
	echo -e '\e[31mBackups removed\e[0m'
elif [ "$BKPVAR" = "" ]; then
	clear
	echo -e '\e[31mOption invalid\e[0m'
else
	clear
	echo -e '\e[31mOption invalid\e[0m'
fi
# If not type a valor
elif [ "$VAR" = "" ]; then
	clear
	echo -e '\e[31mOption invalid\e[0m'
else
	clear
	echo -e '\e[31mOption invalid\e[0m'
fi
fi

# Options in ./start.sh <option>

if [ "$1" = "tmux" ]; then
	sudo screen -X -S DBTeam kill
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	clear
	sudo tmux new-session -s script "bash steady.sh -t" 
fi

if [ "$1" = "kill" ]; then
	clear
	sudo screen -X -S DBTeam kill
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	echo -e '\e[31mSessions closed.\e[0m'
fi

if [ "$1" = "attach" ]; then
	clear
	sudo tmux attach-session -t DBTeam
fi

if [ "$1" = "screen" ]; then
	sudo screen -X -S DBTeam kill
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	clear
	sudo screen -S DBTeam -t screen bash steady.sh -s
fi

if [ "$1" = "update" ]; then
	echo -e '\e[1;34m'
	sudo apt-get update
	clear
	sudo screen -X -S DBTeam kill
	sudo tmux kill-session -t DBTeam
	sudo tmux kill-session -t script
	sudo killall telegram-cli
	clear
	echo -e '\e[1;32m'
	sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev make unzip git redis-server g++ libjansson-dev libpython-dev expat libexpat1-dev tmux subversion
	clear
	echo -e '\e[1;34m'
	sudo rm -Rf .git/refs/stash .git/logs/refs/stash
	clear
	sudo git pull
	echo -e '\e[0;32m----------\e[0m'
	echo -e '\e[0;32m----------\e[0m'
	echo -e '\e[0;32m--\e[0m\e[1;32m DONE \e[0m\e[0;32m--\e[0m'
	echo -e '\e[0;32m----------\e[0m'
	echo -e '\e[0;32m----------\e[0m'
	sleep 1s
fi

if [ "$1" = "--help" ]; then
	echo -en "\n"
	echo "You can use ./start.sh <option>"
	echo "Options availables:"
	echo -en "\n"
	echo "tmux - start a tmux session."
	echo "kill - kill sessions in screen/tmux."
	echo "attach - return to tmux session of DBTeam."
	echo "update - update all dependences, packages and DBTeam."
	echo "screen - start a screen session of DBTeam."
	echo -en "\n"
fi
