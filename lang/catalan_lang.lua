--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--     Support: @Skneos,  @iicc1 & @serx666     --
--                                              --
--            Translated by: @gtrabal           --
--                                              --
--------------------------------------------------

local LANG = 'cat'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.1')
		set_text(LANG, 'versionExtended', 'Traducció versió 0.1')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'Aquest plugin requereix permissos de sudo')
		set_text(LANG, 'require_admin', 'Aquest plugin requereix permissos administrador o superior')
		set_text(LANG, 'require_mod', 'Aquest plugin requereix permissos mod o superior')
		
		-- welcome.lua
		set_text(LANG, 'weloff', 'Welcome enabled.')
		set_text(LANG, 'welon', 'Welcome disabled.')
		set_text(LANG, 'byeon', 'Goodbye enabled.')
		set_text(LANG, 'byeoff', 'Goodbye disabled.')
		set_text(LANG, 'welcome1', 'Hi ')
		set_text(LANG, 'welcome2', 'Welcome to ')
		set_text(LANG, 'weldefault', 'The welcome is the default.')
		set_text(LANG, 'byedefault', 'The goodbye is the default.')
		set_text(LANG, 'newbye', 'Goodbye saved! is')
		set_text(LANG, 'bye1', 'Bye ')
		set_text(LANG, 'bye2', ' thank you for your visit.')
		set_text(LANG, 'welnew', 'Welcome saved! is')
		
		-- Spam.lua --
		set_text(LANG, 'reportUser', 'USUARI')
		set_text(LANG, 'reportReason', 'Motiu del report')
		set_text(LANG, 'reportGroup', 'Grup')
		set_text(LANG, 'reportMessage', 'Missatge')

		set_text(LANG, 'allowedSpamT', 'Spam permès en aquest grup')
		set_text(LANG, 'allowedSpamL', 'Spam permès en aquest supergrup')
		set_text(LANG, 'notAllowedSpamT', 'Spam no permès en aquest grup')
		set_text(LANG, 'notAllowedSpamL', 'Spam no permès en aquest supergrup')

		-- bot.lua --
		set_text(LANG, 'botOn', 'Estic llest, som-hi!')
		set_text(LANG, 'botOff', 'No tinc res a fer aquí')

		-- settings.lua --
		set_text(LANG, 'user', 'Usuari')
		set_text(LANG, 'isFlooding', 'està fent flood.')

		set_text(LANG, 'noStickersT', 'Stickers no permesos en aquest grup.')
		set_text(LANG, 'noStickersL', 'Stickers no permesos en aquest supergrup.')
		set_text(LANG, 'stickersT', 'Stickers permesos en aquest grup.')
		set_text(LANG, 'stickersL', 'Stickers permesos en aquest supergrup.')
		
		set_text(LANG, 'noTgservicesT', 'Serveis de Telegram silenciats en aquest grup.')
		set_text(LANG, 'noTgservicesL', 'Serveis de Telegram silenciats en aquest supergrup.')
		set_text(LANG, 'tgservicesT', 'Serveis de Telegram visibles en aquest grup.')
		set_text(LANG, 'tgservicesL', 'Serveis de Telegram visibles en aquest supergrup.')
		
		set_text(LANG, 'LinksT', 'Links permesos en aquest grup.')
		set_text(LANG, 'LinksL', 'Links permesos en aquest supergrup.')
		set_text(LANG, 'noLinksT', 'Links no permesos en aquest grup.')
		set_text(LANG, 'noLinksL', 'Links no permesos en aquest supergrup.')

		set_text(LANG, 'gifsT', 'Gifs permesos en aquest grup.')
		set_text(LANG, 'gifsL', 'Gifs permesos en aquest supergrup.')
		set_text(LANG, 'noGifsT', 'Gifs no permesos en aquest grup.')
		set_text(LANG, 'noGifsL', 'Gifs no permesos en aquest supergrup.')

		set_text(LANG, 'photosT', 'Fotos permeses en aquest grup.')
		set_text(LANG, 'photosL', 'Fotos permeses en aquest supergrup.')
		set_text(LANG, 'noPhotosT', 'Fotos no permeses en aquest grup.')
		set_text(LANG, 'noPhotosL', 'Fotos no permeses en aquest supergrup.')

		set_text(LANG, 'botsT', 'Bots permesos en aquest grup.')
		set_text(LANG, 'botsL', 'Bots permesos en aquest supergrup.')
		set_text(LANG, 'noBotsT', 'Bots no permesos en aquest grup.')
		set_text(LANG, 'noBotsL', 'Bots no permesos en aquest supergrup.')

		set_text(LANG, 'arabicT', 'Àrab permès en aquest grup.')
		set_text(LANG, 'arabicL', 'Àrab permès en aquest supergrup.')
		set_text(LANG, 'noArabicT', 'Àrab no permès en aquest grup.')
		set_text(LANG, 'noArabicL', 'Àrab no permès en aquest supergrup.')

		set_text(LANG, 'audiosT', 'Àudios permesos en aquest grup.')
		set_text(LANG, 'audiosL', 'Àudios permesos en aquest supergrup.')
		set_text(LANG, 'noAudiosT', 'Àudios no permesos en aquest grup.')
		set_text(LANG, 'noAudiosL', 'Àudios no permesos en aquest supergrup.')

		set_text(LANG, 'kickmeT', 'Autoexpulsió permesa en aquest grup.')
		set_text(LANG, 'kickmeL', 'Autoexpulsió permesa en aquest supergrup.')
		set_text(LANG, 'noKickmeT', 'Autoexpulsió no permesa en aquest grup.')
		set_text(LANG, 'noKickmeL', 'Autoexpulsió no permesa en aquest supergrup.')

		set_text(LANG, 'floodT', 'Flood permès en aquest grup.')
		set_text(LANG, 'floodL', 'Flood permès en aquest supergrup.')
		set_text(LANG, 'noFloodT', 'Flood no permès en aquest grup.')
		set_text(LANG, 'noFloodL', 'Flood no permès en aquest supergrup.')

		set_text(LANG, 'floodTime', 'Temps màxim de flood establert a ')
		set_text(LANG, 'floodMax', 'Número màxim de missatges flood establert a ')

		set_text(LANG, 'gSettings', 'Configuració del grup')
		set_text(LANG, 'sSettings', 'Configuració del supergrup')

		set_text(LANG, 'allowed', 'permès')
		set_text(LANG, 'noAllowed', 'no permès')
		set_text(LANG, 'noSet', 'no establert')

		set_text(LANG, 'stickers', 'Stickers')
		set_text(LANG, 'tgservices', 'Serveis de Tg')
		set_text(LANG, 'links', 'Enllaços')
		set_text(LANG, 'arabic', 'àrab')
		set_text(LANG, 'bots', 'Bots')
		set_text(LANG, 'gifs', 'Gifs')
		set_text(LANG, 'photos', 'Fotos')
		set_text(LANG, 'audios', 'Àudios')
		set_text(LANG, 'kickme', 'Autoexpulsió')
		set_text(LANG, 'spam', 'Spam')
		set_text(LANG, 'gName', 'Nom del grup')
		set_text(LANG, 'flood', 'Flood')
		set_text(LANG, 'language', 'Idioma')
		set_text(LANG, 'mFlood', 'Límit de flood')
		set_text(LANG, 'tFlood', 'Temps de flood')
		set_text(LANG, 'setphoto', 'Establir foto')

		set_text(LANG, 'photoSaved', 'Foto guardada!')
		set_text(LANG, 'photoFailed', 'Error, intenta de nou!')
		set_text(LANG, 'setPhotoAborted', 'Parant el procés per establir foto...')
		set_text(LANG, 'sendPhoto', 'Envia una foto siusplau')

		set_text(LANG, 'chatSetphoto', 'Ara tu pots establir foto en aquest xat.')
		set_text(LANG, 'channelSetphoto', 'Ara tu pots establir foto en aquest canal.')
		set_text(LANG, 'notChatSetphoto', 'Ara tu no pots establir foto en aquest xat.')
		set_text(LANG, 'notChannelSetphoto', 'Ara tu no pots establir foto en aquest canal.')
		set_text(LANG, 'setPhotoError', 'Siusplau, activa la configuració per establir foto (setphoto settings).')

		set_text(LANG, 'linkSaved', 'El link ha estat guardat')
		set_text(LANG, 'groupLink', 'Link del grup')
		set_text(LANG, 'sGroupLink', 'Link del supergrup')
		set_text(LANG, 'noLinkSet', 'No hi ha cap link establert. Siusplau, afegeix un amb #setlink [Link].')

		set_text(LANG, 'chatRename', 'Ara pots renombrar el xat.')
		set_text(LANG, 'channelRename', 'Ara pots renombrar el supergrup.')
		set_text(LANG, 'notChatRename', 'Ara no pots renombrar el xat.')
		set_text(LANG, 'notChannelRename', 'Ara no pots renombrar el supergrup.')

		set_text(LANG, 'lockMembersT', 'El número de membres del xat ha estat bloquejat.')
		set_text(LANG, 'lockMembersL', 'El número de membres del supergrup ha estat bloquejat.')

		set_text(LANG, 'notLockMembersT', 'El número de membres del xat ha estat desbloquejat.')
		set_text(LANG, 'notLockMembersL', 'El número de membres del supergrup ha estat desbloquejat.')

		set_text(LANG, 'langUpdated', 'La llengua ha estat cambiada a: ')
		
		set_text(LANG, 'chatUpgrade', 'Xat convertit en supergrup amb èxit.')
		set_text(LANG, 'notInChann', 'Aquest xat ja és supergrup')
		set_text(LANG, 'desChanged', 'La descripció del supergrup ha estat canviada.')
		set_text(LANG, 'desOnlyChannels', 'La descripció només pot ser canviada en supergrups.')

		set_text(LANG, 'muteAll', 'Tots els membres estan silenciats.')
		set_text(LANG, 'unmuteAll', 'Tots els membres poden parlar ara.')
		set_text(LANG, 'muteAllX:1', 'Aquest grup ha estat silenciat durant')
		set_text(LANG, 'muteAllX:2', 'segons.')

		set_text(LANG, 'createGroup:1', 'Grup')
		set_text(LANG, 'createGroup:2', 'creat.')
		set_text(LANG, 'newGroupWelcome', 'Benvingut al teu nou grup.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'comptes globalment banejades')

		-- giverank.lua --
	    set_text(LANG, 'alreadyAdmin', 'Aquest usuari ja és admin.')
		set_text(LANG, 'alreadyMod', 'Aquest usuari ja és mod.')

		set_text(LANG, 'newAdmin', 'Nou admin')
		set_text(LANG, 'newMod', 'Nou mod')
		set_text(LANG, 'nowUser', 'ara és un usuari.')

		set_text(LANG, 'modList', 'Llista de mods')
		set_text(LANG, 'adminList', 'Llista de administradors')
		set_text(LANG, 'modEmpty', 'La llista de mods està buida en aquest xat.')
		set_text(LANG, 'adminEmpty', 'La llista de administradors està buida.')
		
		-- id.lua --
		set_text(LANG, 'user', 'Usuari')
		set_text(LANG, 'supergroupName', 'Nom del SuperGrup')
		set_text(LANG, 'chatName', 'Nom del xat')
		set_text(LANG, 'supergroup', 'SuperGrup')
		set_text(LANG, 'chat', 'Xat')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'El membre')
		set_text(LANG, 'userUnmuted:2', 'ara pot parlar.')

		set_text(LANG, 'userMuted:1', 'El membre')
		set_text(LANG, 'userMuted:2', 'està silenciat.')

		set_text(LANG, 'kickUser:1', 'Usuari')
		set_text(LANG, 'kickUser:2', 'expulsat.')

		set_text(LANG, 'banUser:1', 'Usuari')
		set_text(LANG, 'banUser:2', 'banejat.')

		set_text(LANG, 'unbanUser:1', 'Usuari')
		set_text(LANG, 'unbanUser:2', 'està desbanejat.')

		set_text(LANG, 'gbanUser:1', 'Usuari')
		set_text(LANG, 'gbanUser:2', 'globalment banejat.')

		set_text(LANG, 'ungbanUser:1', 'Usuari')
		set_text(LANG, 'ungbanUser:2', 'desbanejat globalment.')

		set_text(LANG, 'addUser:1', 'Usuari')
		set_text(LANG, 'addUser:2', 'afegit al xat.')
		set_text(LANG, 'addUser:3', 'afegit al supergrup.')

		set_text(LANG, 'kickmeBye', 'adéu.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'plugins instal·lats.')
		set_text(LANG, 'pEnabled', 'activats.')
		set_text(LANG, 'pDisabled', 'desactivats.')

		set_text(LANG, 'isEnabled:1', 'Plugin')
		set_text(LANG, 'isEnabled:2', 'està activat.')

		set_text(LANG, 'notExist:1', 'Plugin')
		set_text(LANG, 'notExist:2', 'no existeix.')

		set_text(LANG, 'notEnabled:1', 'Plugin')
		set_text(LANG, 'notEnabled:2', 'no activat.')

		set_text(LANG, 'pNotExists', 'No existeix el plugin.')

		set_text(LANG, 'pDisChat:1', 'Plugin')
		set_text(LANG, 'pDisChat:2', 'desactivat en aquest xat.')

		set_text(LANG, 'anyDisPlugin', 'No hi ha plugins desactivats.')
		set_text(LANG, 'anyDisPluginChat', 'No hi ha plugins desactivats en aquest xat.')
		set_text(LANG, 'notDisabled', 'Aquest plugin no està desactivat')

		set_text(LANG, 'enabledAgain:1', 'Plugin')
		set_text(LANG, 'enabledAgain:2', 'està activat de nou')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Ordres')
		set_text(LANG, 'errorNoPlug', 'Aquest plugin no existeix o no té ordres.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Les normes del xat han estat establertes.')
		set_text(LANG, 'remRules', 'Les normes del xat han estat eliminades.')
		
        ------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: activa el bot al xat actual.')
		set_text(LANG, 'bot:2', '#bot off: desactiva el bot al xat actual.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: Mostra les ordres per a tots els plugins.')
		set_text(LANG, 'commands:2', '#commands [plugin]: ordres per aquest plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: Retorna un arxiu lua instalador per a compartir gbans i afegir-ho a un altre bot amb una única ordre.')
		set_text(LANG, 'export_gban:2', '#gbans list: Retorna un arxiu amb la llista de gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: Afegeix una llista de gbans a la teva base de dates redis.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): converteixes la persona que respons en administrador.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: afegeix un administrador mitjançant la seva ID/usuari.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): converteixes la persona que respons en moderador.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: afegeix un moderador mitjançant la seva ID/usuari.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): borra el rang de administrador a la persona que respons.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: borra el rang de administrador mitjançant el seu ID/usuari.')
		set_text(LANG, 'giverank:7', '#admins: llista de tots els admins.')
		set_text(LANG, 'giverank:8', '#mods: llista de tots els mods.')
		set_text(LANG, 'giverank:9', '#members: llista de tots els membres del xat.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: retorna la teva id i la del xat si estas en algun.')
		set_text(LANG, 'id:2', '#ids chat: retorna les IDs dels membres actuals del grup.')
		set_text(LANG, 'id:3', '#ids channel: retorna les IDs dels membres actuals del supergrup.')
		set_text(LANG, 'id:4', '#id <user_name>: retorna la ID del usuari present al xat.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Retorna la ID/alies del usuari.')
		set_text(LANG, 'id:6', '#whois (reply): Retorna la ID del usuari.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: responent un missatge, afegiras a aquest usuari al grup o supergrup actual.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: afegeix a un usuari, per ID o alies, al grup o supergrup actual.')
		set_text(LANG, 'moderation:3', '#kick: responent a un missatge, expulsará al membre del grup o supergrup actual.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: expulsa a un usuari, pel seu ID/alies del grup o supergrup actual.')
		set_text(LANG, 'moderation:5', '#kickme: autokick.')
		set_text(LANG, 'moderation:6', '#ban: responent un missatge, expulsarà i banejarà a aquest usuari del grup o supergrup actual.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: expulsa i baneja a un usuari pel seu ID/alies, impedint-ne el seu retorn.')
		set_text(LANG, 'moderation:8', '#unban: responent a un missatge, desbaneja a aquest usuari del grup o supergrup.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: desbaneja al membre pel seu ID/alies del grup o supergrup.')
		set_text(LANG, 'moderation:10', '#gban: responent a un missatge, el membre serà banejat de tots els grups i supergrups.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: expulsa i baneja al membre, pel seu ID/ales de tots els grups o supergrups impedint-ne el retorn.')
		set_text(LANG, 'moderation:12', '#ungban: responent a un missatge, el membre serà desbanejat de tots els grups i supergrups.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: treu el ban al membre, pel seu ID/alies de tots els grups i supergrups.')
		set_text(LANG, 'moderation:14', '#mute: responent a un missatge silencia al membre eliminant els missatges del supergrup actual.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: silencia a un membre, pel seu ID/alies, eliminant els seus missatges al supergrup actual.')
		set_text(LANG, 'moderation:16', '#unmute: respondent a un missatge, treu el silenci al membre.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: treu el silenci al membre, pel seu ID/alies, al supergrup actual.')
		set_text(LANG, 'moderation:18', '#rem: responent a un missatge, aquest missatge serà borrat.')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 20)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: podràs enviar stickers quan estigui actiu.')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: podràs enviar links quan estigui actiu.')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disable: podràs parlar en àrab i persa quan estigui actiu.')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable: podràs convidar bots al grup quan estigui actiu.')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: podràs enviar gifs quan estigui actiu.')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: podràs enviar fotos quan estigui actiu.')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: podràs enviar àudios quan estigui actiu.')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: els usuaris podran autoexpulsar-se quan estigui actiu.')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: podràs enviar enllaços de spam quan estigui actiu.')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: si un usuari canvia la foto del grup, el bot la canviarà per la foto guardada quan estigui actiu.')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: si un usuari canvia el nom del grup, el bot la canviarà per la foto guardada quan estigui actiu.')
	    set_text(LANG, 'settings:12', '#settings lockmember enable/disable: el bot expulsarà a tota la gent que entri al grup quan estigui actiu.')
	    set_text(LANG, 'settings:13', '#settings floodtime <secs>: estableix el temps de mesurament del flood.')
	    set_text(LANG, 'settings:14', '#settings maxflood <secs>: estableix el número de missatges màxim en un temps determinat per a ser considerat flood.')
	    set_text(LANG, 'settings:15', '#setname <título del grupo>: el bot canviarà el nom del grup.')
	    set_text(LANG, 'settings:16', '#setphoto <después envía la foto>: el bot canviarà la foto del grup.')
	    set_text(LANG, 'settings:17', '#lang <language (en, es...)>: canvia la llengua del bot.')
	    set_text(LANG, 'settings:18', '#setlink <link>: guarda el link del grup.')
	    set_text(LANG, 'settings:19', '#link: mostra el link del grup.')
		set_text(LANG, 'settings:20', '#settings tgservices enable/disable: Borra els missatges de Telegram de nou participant al grup quan estigui actiu.')
		
		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: mostra una llista de tots els plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: activa/desactiva el plugin especificat.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: activa/desactiva el plugin especificat, només al actual grup/supergrup.')
		set_text(LANG, 'plugins:4', '#plugins reload: recarrega tots els plugins.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: mostra la versió del bot.')

		-- version.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: mostra les normes del xat.')
		
		if matches[1] == 'install' then
			return '?? El català ha estat instal·lat a la seva base de dades.'
		elseif matches[1] == 'update' then
			return '?? El català ha estat actualitzat a la seva base de dades.'
		end
	else
		return "Aquest plugin requereix de permisos sudo."
	end
end

return {
	patterns = {
		'[!/#](install) (catalan_lang)$',
		'[!/#](update) (catalan_lang)$'
	},
	run = run,
}
