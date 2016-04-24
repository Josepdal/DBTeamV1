---------------------------------------------------------
--         ____  ____ _____                            --
--        |    \|  _ )_   _|___ ____   __  __          --
--        | |_  )  _ \ | |/ ·__|  _ \_|  \/  |         --
--        |____/|____/ |_|\____/\_____|_/\/\_|         --
--                                                     --
---------------------------------------------------------
--                                                     --
--         Developers: @Josepdal & @MaSkAoS            --
--       Support: @Skneos,  @iicc1 & @serx666          --
--                                                     --
--           Translated by: @M4STER_ANGEL              --
--                                                     --
---------------------------------------------------------

local LANG = 'ga'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '2.1')
		set_text(LANG, 'versionExtended', 'Traducción na versión 2.1')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'Este plugin require privilexios sudo')
		set_text(LANG, 'require_admin', 'Este plugin requiere privilexios admin ou superior')
		set_text(LANG, 'require_mod', 'Este plugin requiere privilexios mod ou superior')
		
		-- welcome.lua
		set_text(LANG, 'weloff', 'Benvida actiada')
		set_text(LANG, 'welon', 'Benvida desactivada')
		set_text(LANG, 'byeon', 'Despedida activada')
		set_text(LANG, 'byeoff', 'Despedida desactivada')
		set_text(LANG, 'welcome1', 'Ola ')
		set_text(LANG, 'welcome2', 'Benvido a ')
		set_text(LANG, 'weldefault', 'A benvida é a por defecto')
		set_text(LANG, 'byedefault', 'A despedida é a por defecto')
		set_text(LANG, 'newbye', 'A despedida gardouse como')
		set_text(LANG, 'bye1', 'Adeus ')
		set_text(LANG, 'bye2', ' grazas poa túa visita')
		set_text(LANG, 'welnew', 'A benvida gadrouse como')
		
		-- Spam.lua --
	    	set_text(LANG, 'reportUser', 'USUARIO')
		set_text(LANG, 'reportReason', 'Motivo do reporte')
		set_text(LANG, 'reportGroup', 'Grupo')
		set_text(LANG, 'reportMessage', 'Mensaxe')

		set_text(LANG, 'allowedSpamT', 'Spam permitido neste grupo')
		set_text(LANG, 'allowedSpamL', 'Spam permitido neste supergrupo')
		set_text(LANG, 'notAllowedSpamT', 'Spam non permitido neste grupo')
		set_text(LANG, 'notAllowedSpamL', 'Spam non permitido neste supergrupo')

		-- bot.lua --
		set_text(LANG, 'botOn', 'Estou listo, imos alá!')
		set_text(LANG, 'botOff', 'Non pinto nada aquí')

		-- settings.lua --
		set_text(LANG, 'user', 'O usuario')
		set_text(LANG, 'isFlooding', 'está a facer flood.')

		set_text(LANG, 'noStickersT', 'Stickers non permitidos neste grupo.')
		set_text(LANG, 'noStickersL', 'Stickers non permitidos neste supergrupo.')
		set_text(LANG, 'stickersT', 'Stickers permitidos neste grupo.')
		set_text(LANG, 'stickersL', 'Stickers permitidos neste supergrupo.')

		set_text(LANG, 'noTgservicesT', 'Servizos de Telegram silenciados neste chat.')
		set_text(LANG, 'noTgservicesL', 'Servizos de Telegram silenciados neste supergrupo.')
		set_text(LANG, 'tgservicesT', 'Servizos de Telegram visibles neste chat.')
		set_text(LANG, 'tgservicesL', 'Servizos de Telegram visibles neste supergrupo.')
		
		set_text(LANG, 'gifsT', 'Gifs permitidos neste grupo.')
		set_text(LANG, 'gifsL', 'Gifs permitidos neste supergrupo.')
		set_text(LANG, 'noGifsT', 'Gifs non permitidos neste grupo.')
		set_text(LANG, 'noGifsL', 'Gifs non permitidos neste supergrupo.')

		set_text(LANG, 'photosT', 'Imaxes permitidas neste grupo.')
		set_text(LANG, 'photosL', 'Imaxes permitidas neste supergrupo.')
		set_text(LANG, 'noPhotosT', 'Imaxes non permitidas neste grupo.')
		set_text(LANG, 'noPhotosL', 'Imaxes non permitidas neste supergrupo.')

		set_text(LANG, 'arabicT', 'o árabe está permitido neste grupo.')
		set_text(LANG, 'arabicL', 'o árabe está permitido neste supergrupo.')
		set_text(LANG, 'noArabicT', 'o árabe non está permitido neste grupo.')
		set_text(LANG, 'noArabicL', 'o árabe non está permitido neste supergrupo.')

		set_text(LANG, 'audiosT', 'Audios permitidos neste grupo.')
		set_text(LANG, 'audiosL', 'Audios permitidos neste supergrupo.')
		set_text(LANG, 'noAudiosT', 'Audios non permitidos neste grupo.')
		set_text(LANG, 'noAudiosL', 'Audios non permitidos neste supergrupo.')

		set_text(LANG, 'kickmeT', 'Autoexpulsión permitida neste grupo.')
		set_text(LANG, 'kickmo', 'Autoexpulsión permitida neste supergrupo.')
		set_text(LANG, 'noKickmeT', 'Autoexpulsión non permitida neste grupo.')
		set_text(LANG, 'noKickmo', 'Autoexpulsión non permitida neste supergrupo.')

		set_text(LANG, 'floodT', 'Flood permitido neste grupo.')
		set_text(LANG, 'floodL', 'Flood permitido neste supergrupo.')
		set_text(LANG, 'noFloodT', 'Flood non permitido neste grupo.')
		set_text(LANG, 'noFloodL', 'Flood non permitido neste supergrupo.')

		set_text(LANG, 'floodTime', 'Tempo máximo de flood establecido a ')
		set_text(LANG, 'floodMax', 'Número máximo de mensaxes no flood establecidos a ')

		set_text(LANG, 'gSettings', 'Axustes do grupo')
		set_text(LANG, 'sSettings', 'Axustes do supergrupo')

		set_text(LANG, 'allowed', 'Permitido')
		set_text(LANG, 'noAllowed', 'Non permitido')
		set_text(LANG, 'noSet', 'Non establecido')

		set_text(LANG, 'stickers', 'Stickers')
		set_text(LANG, 'tgservices', 'Servizos TG')
		set_text(LANG, 'links', 'Enlaces')
		set_text(LANG, 'arabic', 'Árabe')
		set_text(LANG, 'bots', 'Bots')
		set_text(LANG, 'gifs', 'Gifs')
		set_text(LANG, 'photos', 'Fotos')
		set_text(LANG, 'audios', 'Audios')
		set_text(LANG, 'kickme', 'Autoexpulsión')
		set_text(LANG, 'spam', 'Spam')
		set_text(LANG, 'gName', 'Nome do grupo')
		set_text(LANG, 'flood', 'Flood')
		set_text(LANG, 'language', 'Linguaxe')
		set_text(LANG, 'mFlood', 'Límite de flood')
		set_text(LANG, 'tFlood', 'Tiempo de flood')
		set_text(LANG, 'setphoto', 'Establecer imaxe')

		set_text(LANG, 'photoSaved', 'Foto gardada!')
		set_text(LANG, 'photoFailed', 'Error, intentao de nuevo!')
		set_text(LANG, 'setPhotoAborted', 'Parando o proceso de establecer foto...')
		set_text(LANG, 'sendPhoto', 'Envía unha foto por favor')

		set_text(LANG, 'linkSaved', 'O enlace foi guardado')
		set_text(LANG, 'groupLink', 'Link do grupo')
		set_text(LANG, 'sGroupLink', 'Link do supergrupo')
		set_text(LANG, 'noLinkSet', 'Non hai ningún link establecido. Por favor engade un con #setlink [Link].')

		set_text(LANG, 'chatRename', 'Agora podes renomear o chat.')
		set_text(LANG, 'channoRename', 'Agora podes renomear o supergrupo.')
		set_text(LANG, 'notChatRename', 'Agora non podes renomear o chat.')
		set_text(LANG, 'notChannoRename', 'Agora non podes renomear o supergrupo.')

		set_text(LANG, 'lockMembersT', 'O número de membros do chat foi bloqueado.')
		set_text(LANG, 'lockMembersL', 'O número de membros do supergrupo foi bloqueado.')

		set_text(LANG, 'notLockMembersT', 'O número de membros do chat foi desbloqueado.')
		set_text(LANG, 'notLockMembersL', 'O número de membros do supergrupo foi desbloqueado.')

		set_text(LANG, 'langUpdated', 'O idioma foi cambiado a: ')
		
		set_text(LANG, 'chatUpgrade', 'Chat convertido nun supergrupo con éxito.')
		set_text(LANG, 'notInChann', 'Este chat xa é supergrupo')
		set_text(LANG, 'desChanged', 'A descripción do supergrupo foi cambiada.')
		set_text(LANG, 'desOnlyChannos', 'A descripción só pode ser cambiada nos supergrupos.')

		set_text(LANG, 'muteAll', 'Todo-los miembros están silenciados.')
		set_text(LANG, 'unmuteAll', 'Todo-los miembros poden falar ahora.')
		set_text(LANG, 'muteAllX:1', 'Este grupo foi silenciado durante')
		set_text(LANG, 'muteAllX:2', 'segundos.')

		set_text(LANG, 'createGroup:1', 'Grupo')
		set_text(LANG, 'createGroup:2', 'creado.')
		set_text(LANG, 'newGroupWocome', 'Benvido ao novo grupo.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'Contas globalmente baneadas.')

		-- giverank.lua --
	    	set_text(LANG, 'alreadyAdmin', 'Este usuario xa é admin.')
		set_text(LANG, 'alreadyMod', 'Este usuario xa é mod.')

		set_text(LANG, 'newAdmin', 'Novo admin')
		set_text(LANG, 'newMod', 'Novo mod')
		set_text(LANG, 'nowUser', 'Agora é un usuario.')

		set_text(LANG, 'modList', 'Lista de Mods')
		set_text(LANG, 'adminList', 'Lista de Admins')
		set_text(LANG, 'modEmpty', 'A lista de mods está vacia neste chat.')
		set_text(LANG, 'adminEmpty', 'A lista de admins está vacia.')
		
		-- id.lua --
		set_text(LANG, 'user', 'Usuario')
		set_text(LANG, 'supergroupName', 'Nome do SuperGrupo')
		set_text(LANG, 'chatName', 'Nome do Chat')
		set_text(LANG, 'supergroup', 'SuperGrupo')
		set_text(LANG, 'chat', 'Chat')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'O usuario')
		set_text(LANG, 'userUnmuted:2', 'Agora pode falar.')

		set_text(LANG, 'userMuted:1', 'O usuario')
		set_text(LANG, 'userMuted:2', 'Está silenciado.')

		set_text(LANG, 'kickUser:1', 'Usuario')
		set_text(LANG, 'kickUser:2', 'Expulsado.')

		set_text(LANG, 'banUser:1', 'Usuario')
		set_text(LANG, 'banUser:2', 'Baneado.')

		set_text(LANG, 'unbanUser:1', 'Usuario')
		set_text(LANG, 'unbanUser:2', 'Está desbaneado.')

		set_text(LANG, 'gbanUser:1', 'Usuario')
		set_text(LANG, 'gbanUser:2', 'Globalmente baneado.')

		set_text(LANG, 'ungbanUser:1', 'Usuario')
		set_text(LANG, 'ungbanUser:2', 'Desbaneado globalmente.')

		set_text(LANG, 'addUser:1', 'Usuario')
		set_text(LANG, 'addUser:2', 'Engadido ao chat.')
		set_text(LANG, 'addUser:3', 'Engadido ao supergrupo.')

		set_text(LANG, 'kickmeBye', 'Adeus.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'Plugins instalados.')
		set_text(LANG, 'pEnabled', 'Activados.')
		set_text(LANG, 'pDisabled', 'Desactivados.')

		set_text(LANG, 'isEnabled:1', 'Plugin')
		set_text(LANG, 'isEnabled:2', 'está activado.')

		set_text(LANG, 'notExist:1', 'Plugin')
		set_text(LANG, 'notExist:2', 'non existe.')

		set_text(LANG, 'notEnabled:1', 'Plugin')
		set_text(LANG, 'notEnabled:2', 'non activado.')

		set_text(LANG, 'pNotExists', 'Non existe o plugin.')

		set_text(LANG, 'pDisChat:1', 'Plugin')
		set_text(LANG, 'pDisChat:2', 'Desactivado neste chat.')

		set_text(LANG, 'anyDisPlugin', 'Non hai plugins desactivados.')
		set_text(LANG, 'anyDisPluginChat', 'Non hai plugins desactivados neste chat.')
		set_text(LANG, 'notDisabled', 'Este plugin non está desactivado')

		set_text(LANG, 'enabledAgain:1', 'Plugin')
		set_text(LANG, 'enabledAgain:2', 'Está activado de novo')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Comandos')
		set_text(LANG, 'errorNoPlug', 'Este plugin non existe ou non ten comandos.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'As regras do chat foron actualizadas.')
		set_text(LANG, 'remRules', 'As regras do chat foron quitadas.')
		
		
        	------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: activa o bot no chat actual.')
		set_text(LANG, 'bot:2', '#bot off: desactiva o bot no chat actual.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: Mostra os comandos para todo-los plugins.')
		set_text(LANG, 'commands:2', '#commands [plugin]: Comandos para ese plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: Devolve un archivo .lua instalador para compartir gbans y engadilos noutro bot coun único comando.')
		set_text(LANG, 'export_gban:2', '#gbans list: Devolve un archivo coa lista de gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: engade unha lista de gbans na tua base de datos redis.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): convirte a persoa á que respondes nun admin.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: engade un admin mediante o seu ID/Alias.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): convirte a persona á que respondes nun mod.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: engade un mod mediante su ID/Alias.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): borra de admin á persona que respondes.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: borra un admin mediante su ID/Alias.')
		set_text(LANG, 'giverank:7', '#admins: lista de todo-los admins.')
		set_text(LANG, 'giverank:8', '#mods: lista de todo-los mods do chat.')
		set_text(LANG, 'giverank:9', '#members: lista de todo-los miembros do chat.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: devolve a tu id e a do chat se estás nalgún.')
		set_text(LANG, 'id:2', '#ids chat: devolve as IDs dos membros actuales no grupo.')
		set_text(LANG, 'id:3', '#ids channo: devolve as IDs dos membros actuales no supergrupo.')
		set_text(LANG, 'id:4', '#id <user_name>: devolve a ID do usuario presente no chat.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Devolve o ID/Alias do usuario.')
		set_text(LANG, 'id:6', '#whois (reply): Devolve a ID do usuario.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: respondendo a unha mensaxe, engadirá a ese usuario ao grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: engadirá a un usuario, polo su ID/Alias, ao grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:3', '#kick: respondendo a unha mensaxe, expulsará a ese usuario do grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: expulsa a un usuario, polo su ID/Alias, do grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:5', '#kickme: expúlsame do grupo.')
		set_text(LANG, 'moderation:6', '#ban: respondendo a unha mensaxe, expulsará e baneará a ese usuario do grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: expulsa a un usuario, polo su ID/Alias, e impide que este vuova a entrar ao grupo ou supergrupo actual.')
		set_text(LANG, 'moderation:8', '#unban: respondendo a unha mensaxe, desbanea a ese usuario do grupo ou supergrupo.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: desbanea a ese usuario polo su ID/Alias do grupo ou supergrupo.')
		set_text(LANG, 'moderation:10', '#gban: respondendo a unha mensaxe, o usuario será baneado de todo-los grupos e/o supergrupos.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: expulsa e banea al usuario, polo seu ID/alias, de todo-los grupos e/o supergrupos e impide que este volva a entrar en todo-los grupos e/o supergrupos.')
		set_text(LANG, 'moderation:12', '#ungban: respondendo a unha mensaxe, quita o baneo de todo-los grupos e/o supergrupos.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: quita o baneo ao usuario, polo seu ID/alias, de todo-los grupos e/o supergrupos.')
		set_text(LANG, 'moderation:14', '#mute: respondendo a unha mensaxe, silencia ao usuario eliminando sus mensaxes no supergrupo actual.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: silencia a un usuario, polo seu ID/alias, eliminando as suas mensaxes no supergrupo actual.')
		set_text(LANG, 'moderation:16', '#unmute: respondendo a un mensaxe, quita o silencio al usuario.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: quita o silencio ao usuario, polo seu ID/alias, no supergrupo actual.')
		set_text(LANG, 'moderation:18', '#rem: respondendo a unha mensaxe, esa mensaxe será borrada.')
		
		-- settings.lua --
		set_text(LANG, 'settings:0', 20)
		set_text(LANG, 'settings:1', '#settings stickers enable/disable: poderás mandar stickers cando estea activo.')
		set_text(LANG, 'settings:2', '#settings links enable/disable: poderás mandar links cuando estea activo.')
		set_text(LANG, 'settings:3', '#settings arabic enable/disable: poderás falar en árabe/persa cando estea activo.')
		set_text(LANG, 'settings:4', '#settings bots enable/disable: poderás engadir bots ao chat cando estea activo.')
		set_text(LANG, 'settings:5', '#settings gifs enable/disable: poderás mandar gifs cando estea activo.')
		set_text(LANG, 'settings:6', '#settings photos enable/disable: poderás mandar imaxes cando estea activo.')
		set_text(LANG, 'settings:7', '#settings audios enable/disable: poderás mandar audios cando estea activo.')
		set_text(LANG, 'settings:8', '#settings kickme enable/disable: os usuarios poderán autoexpulsarse cando estea activo.')
		set_text(LANG, 'settings:9', '#settings spam enable/disable: poderás mandar enlaces de spam (telegram.me) cando estea activo.')
		set_text(LANG, 'settings:10', '#settings setphoto enable/disable: se un usuario cambia a foto do grupo, o bot cambiarana pola foto gardada cando estea activo.')
		set_text(LANG, 'settings:11', '#settings setname enable/disable: se un usuario cambia o nome do grupo, o bot cambiarano polo nome gardado cando estea activo.')
		set_text(LANG, 'settings:12', '#settings lockmember enable/disable: o bot expulsará a toda-la xente que entre ao grupo cuando estea activo.')
		set_text(LANG, 'settings:13', '#settings floodtime <segs>: establece o tiempo de medición do flood.')
		set_text(LANG, 'settings:14', '#settings maxflood <segs>: establece o máximo de mensaxes nun floodtime para ser considerado flood.')
		set_text(LANG, 'settings:15', '#setname <nome do grupo>: o bot cambiará o nome do grupo.')
		set_text(LANG, 'settings:16', '#setphoto <despois envía a foto>: o bot cambiará la foto do grupo.')
		set_text(LANG, 'settings:17', '#lang <language (en, es, ga...)>: cambia o idioma do bot.')
		set_text(LANG, 'settings:18', '#setlink <link>: garda o link do grupo.')
		set_text(LANG, 'settings:19', '#link: mostra o link do grupo.')
		set_text(LANG, 'settings:20', '#settings tgservices enable/disable: borra todo-las mensaxes de Telegram dun novo participante no supergrupo cuando estea activo.')
		
		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: mostra unha lista de todos os plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: activa/desactiva o plugin especificado.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: activa/desactiva o plugin especificado, solo no grupo/supergrupo actual.')
		set_text(LANG, 'plugins:4', '#plugins rooad: recarga todos los plugins.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: mostra a versión do bot.')

		-- version.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: mostra as regras do chat.')
		
		if matches[1] == 'install' then
			return 'A linguaxe galego foi instalada na sua base de datos.'
		elseif matches[1] == 'update' then
			return 'A linguaxe galego foi actualizada na sua base de datos.'
		end
	else
		return "Este plugin require permisos sudo."
	end
end

return {
	patterns = {
		'[!/#](install) (galician_lang)$',
		'[!/#](update) (galician_lang)$'
	},
	run = run,
}
