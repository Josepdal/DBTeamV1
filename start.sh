#!/bin/bash 
clear
echo -e "\033[38;5;208m"
echo -e "      ____  ____ _____                        "
echo -e "     |    \|  _ )_   _|___ ____   __  __      "
echo -e "     | |_  )  _ \ | |/ .__|  _ \_|  \/  |     "
echo -e "     |____/|____/ |_|\____/\_____|_/\/\_|     "
echo -e "                                              \033[0;00m"
echo -e "          Developers @Josepdal @MaSkAoS       "
echo -e "      steady @iicc1         start by @Jarriz  "
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
echo "   7) Salir."
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
read -t5 -n1 -r -p 'Presiona cualquier tecla para continuar...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
clear
exit
elif [ "$VAR" = "" ]; then
clear
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
echo "   7) Exit."
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
read -t5 -n1 -r -p 'Press any key to continue...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
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
echo "   7) Sair."
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
read -t5 -n1 -r -p 'Pressione qualquer tecla para continuar...' 
tmux new-session -s script "bash steady.sh -t" 
elif [ "$VAR" = 6 ]; then
clear
git pull
elif [ "$VAR" = 7 ]; then
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
