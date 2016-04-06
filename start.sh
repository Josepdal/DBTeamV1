#!/bin/bash 
clear
echo -e "\033[38;5;208m"
echo -e "      ____  ____ _____                        "
echo -e "     |    \|  _ )_   _|___ ____   __  __      "
echo -e "     | |_  )  _ \ | |/ .__|  _ \_|  \/  |     "
echo -e "     |____/|____/ |_|\____/\_____|_/\/\_|     "
echo -e "                                              \033[0;00m"
echo -e "          Developers @Josepdal @MaSkAoS       "
echo -e "   steady.sh by @icc1    start.sh by @Jarriz  "
echo -e "\e[34m"
echo "Please, select your language."
echo -e "\033[38;5;208m"
echo "   1) English."
echo "   2) Spanish."
echo -e "\e[30m"
read VAR
if [ "$VAR" = 2 ]; then

clear
echo -e "\e[34m"
echo "Por favor, selecciona tu opcion."
echo -e "\033[38;5;208m"
echo "   1) Iniciar DBTeam (tmux)."
echo "   2) Abrir sesion anterior (tmux)."
echo "   3) Cerrar todas las sesiones."
echo "   4) Reiniciar DBTeam (tmux)."
echo "   5) Actualizar DBTeam."
echo "   6) Salir."
echo -e "\e[30m"
read VAR
if [ "$VAR" = 1 ]; then
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
tmux attach-session -t script
elif [ "$VAR" = 3 ]; then
killall screen
killall telegram-cli
killall tmux
clear
echo -e "\e[34m"
echo Sesiones cerradas.
echo -e "\e[30m"
elif [ "$VAR" = 4 ]; then
killall tmux
read -t5 -n1 -r -p 'Presiona cualquier tecla para continuar...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 5 ]; then
clear
git pull
elif [ "$VAR" = 6 ]; then
clear
exit
elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Opcion invalida"
echo -e "\e[30m"
else
clear
echo -e "\e[31m"
echo "Opcion invalida"
echo -e "\e[30m"
fi

elif [ "$VAR" = 1 ]; then

clear
echo -e "\e[34m"
echo "Por favor, selecciona tu opcion."
echo -e "\033[38;5;208m"
echo "   1) Run DBTeam (tmux)."
echo "   2) Open old session (tmux)."
echo "   3) Close all sessions."
echo "   4) Restart DBTeam (tmux)."
echo "   5) Update DBTeam."
echo "   6) Exit."
echo -e "\e[30m"
read VAR
if [ "$VAR" = 1 ]; then
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 2 ]; then
tmux attach-session -t script
elif [ "$VAR" = 3 ]; then
killall screen
killall telegram-cli
killall tmux
clear
echo -e "\e[34m"
echo Sessions closed.
echo -e "\e[30m"
echo
elif [ "$VAR" = 4 ]; then
killall tmux
read -t5 -n1 -r -p 'Press any key to continue...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 5 ]; then
clear
git pull
elif [ "$VAR" = 6 ]; then
clear
exit
elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[30m"
else
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[30m"
fi

elif [ "$VAR" = "" ]; then
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[30m"
else
clear
echo -e "\e[31m"
echo "Option invalid"
echo -e "\e[30m"
fi
