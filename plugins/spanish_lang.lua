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
--            Translated by: @iicc1             --
--                                              --
--------------------------------------------------

local LANG = 'es'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.2')
		set_text(LANG, 'versionExtended', 'Traducción versión 0.2')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'Este plugin requiere privilegios sudo')
		set_text(LANG, 'require_admin', 'Este plugin requiere privilegios admin o superior')
		set_text(LANG, 'require_mod', 'Este plugin requiere privilegios mod o superior')
		
		-- Spam.lua --
	    set_text(LANG, 'reportUser', 'USUARIO')
		set_text(LANG, 'reportReason', 'Motivo del reporte')
		set_text(LANG, 'reportGroup', 'Grupo')
		set_text(LANG, 'reportMessage', 'Mensaje')

		set_text(LANG, 'allowedSpamT', 'Spam permitido en este grupo')
		set_text(LANG, 'allowedSpamL', 'Spam permitido en este supergrupo')
		set_text(LANG, 'notAllowedSpamT', 'Spam no permitido en este grupo')
		set_text(LANG, 'notAllowedSpamL', 'Spam no permitido en este supergrupo')

		-- bot.lua --
		set_text(LANG, 'botOn', 'Estoy listo, allá vamos!')
		set_text(LANG, 'botOff', 'No pinto nada aquí')

		-- settings.lua --
		set_text(LANG, 'user', 'El usuario')
		set_text(LANG, 'isFlooding', 'está haciendo flood.')

		set_text(LANG, 'noStickersT', 'Stickers no permitidos en este grupo.')
		set_text(LANG, 'noStickersL', 'Stickers no permitidos en este supergrupo.')
		set_text(LANG, 'stickersT', 'Stickers permitidos en este grupo.')
		set_text(LANG, 'stickersL', 'Stickers permitidos en este supergrupo.')

		set_text(LANG, 'gifsT', 'Gifs permitidos en este grupo.')
		set_text(LANG, 'gifsL', 'Gifs permitidos en este supergrupo.')
		set_text(LANG, 'noGifsT', 'Gifs no permitidos en este grupo.')
		set_text(LANG, 'noGifsL', 'Gifs no permitidos en este supergrupo.')

		set_text(LANG, 'photosT', 'Fotos permitidas en este grupo.')
		set_text(LANG, 'photosL', 'Fotos permitidas en este supergrupo.')
		set_text(LANG, 'noPhotosT', 'Fotos no permitidas en este grupo.')
		set_text(LANG, 'noPhotosL', 'Fotos no permitidas en este supergrupo.')

		set_text(LANG, 'arabicT', 'El árabe está permitido en este grupo.')
		set_text(LANG, 'arabicL', 'El árabe está permitido en este supergrupo.')
		set_text(LANG, 'noArabicT', 'El árabe no está permitido en este grupo.')
		set_text(LANG, 'noArabicL', 'El árabe no está permitido en este supergrupo.')

		set_text(LANG, 'audiosT', 'Audios permitidos en este grupo.')
		set_text(LANG, 'audiosL', 'Audios permitidos en este supergrupo.')
		set_text(LANG, 'noAudiosT', 'Audios no permitidos en este grupo.')
		set_text(LANG, 'noAudiosL', 'Audios no permitidos en este supergrupo.')

		set_text(LANG, 'kickmeT', 'Autoexpulsión permitida en este grupo.')
		set_text(LANG, 'kickmeL', 'Autoexpulsión permitida en este supergrupo.')
		set_text(LANG, 'noKickmeT', 'Autoexpulsión no permitida en este grupo.')
		set_text(LANG, 'noKickmeL', 'Autoexpulsión no permitida en este supergrupo.')

		set_text(LANG, 'floodT', 'Flood permitido en este grupo.')
		set_text(LANG, 'floodL', 'Flood permitido en este supergrupo.')
		set_text(LANG, 'noFloodT', 'Flood no permitido en este grupo.')
		set_text(LANG, 'noFloodL', 'Flood no permitido en este supergrupo.')

		set_text(LANG, 'floodTime', 'Tiempo máximo de flood establecido a ')
		set_text(LANG, 'floodMax', 'Número máximo de mensajes flood establecido a ')

		set_text(LANG, 'gSettings', 'Ajustes del grupo')
		set_text(LANG, 'sSettings', 'Ajustes del supergrupo')

		set_text(LANG, 'allowed', 'permitido')
		set_text(LANG, 'noAllowed', 'no permitido')
		set_text(LANG, 'noSet', 'no establecido')

		set_text(LANG, 'stickers', 'Stickers')
		set_text(LANG, 'links', 'Enlaces')
		set_text(LANG, 'arabic', 'Árabe')
		set_text(LANG, 'bots', 'Bots')
		set_text(LANG, 'gifs', 'Gifs')
		set_text(LANG, 'photos', 'Fotos')
		set_text(LANG, 'audios', 'Audios')
		set_text(LANG, 'kickme', 'Autoexpulsión')
		set_text(LANG, 'spam', 'Spam')
		set_text(LANG, 'gName', 'Nombre del grupo')
		set_text(LANG, 'flood', 'Flood')
		set_text(LANG, 'language', 'Idioma')
		set_text(LANG, 'mFlood', 'Límite de flood')
		set_text(LANG, 'tFlood', 'Tiempo de flood')
		set_text(LANG, 'setphoto', 'Establecer foto')

		set_text(LANG, 'photoSaved', 'Foto guardada!')
		set_text(LANG, 'photoFailed', 'Error, intenta de nuevo!')
		set_text(LANG, 'setPhotoAborted', 'Parando el proceso de establecer foto...')
		set_text(LANG, 'sendPhoto', 'Envía una foto por favor')

		set_text(LANG, 'linkSaved', 'El enlace ha sido guardado')
		set_text(LANG, 'groupLink', 'Link del grupo')
		set_text(LANG, 'sGroupLink', 'Link del supergrupo')
		set_text(LANG, 'noLinkSet', 'No hay ningún link establecido. Por favor añade uno con #setlink [Link].')

		set_text(LANG, 'chatRename', 'Ahora puedes renombrar el chat.')
		set_text(LANG, 'channelRename', 'Ahora puedes renombrar el supergrupo.')
		set_text(LANG, 'notChatRename', 'Ahora no puedes renombrar el chat.')
		set_text(LANG, 'notChannelRename', 'Ahora no puedes renombrar el supergrupo.')

		set_text(LANG, 'lockMembersT', 'El número de miembros del chat ha sido bloqueado.')
		set_text(LANG, 'lockMembersL', 'El número de miembros del supergrupo ha sido bloqueado.')

		set_text(LANG, 'notLockMembersT', 'El número de miembros del chat ha sido desbloqueado.')
		set_text(LANG, 'notLockMembersL', 'El número de miembros del supergrupo ha sido desbloqueado.')

		set_text(LANG, 'langUpdated', 'El idioma ha sido cambiado a: ')
		
		set_text(LANG, 'chatUpgrade', 'Chat convertido a supergrupo con éxito.')
		set_text(LANG, 'notInChann', 'Este chat ya es supergrupo')
		set_text(LANG, 'desChanged', 'La descripción del supergrupo ha sido cambiada.')
		set_text(LANG, 'desOnlyChannels', 'La descripción solo puede ser cambiada en supergrupos.')

		set_text(LANG, 'muteAll', 'Todos los miembros están silenciados.')
		set_text(LANG, 'unmuteAll', 'Todos los miembros pueden hablar ahora.')
		set_text(LANG, 'muteAllX:1', 'Este grupo ha sido silenciado durante')
		set_text(LANG, 'muteAllX:2', 'segundos.')

		set_text(LANG, 'createGroup:1', 'Group')
		set_text(LANG, 'createGroup:2', 'created.')
		set_text(LANG, 'newGroupWelcome', 'Welcome to your new group.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'cuentas globalmente baneadas.')

		-- giverank.lua --
	    set_text(LANG, 'alreadyAdmin', 'Este usuario ya es admin.')
		set_text(LANG, 'alreadyMod', 'Este usuario ya es mod.')

		set_text(LANG, 'newAdmin', 'Nuevo admin')
		set_text(LANG, 'newMod', 'Nuevo mod')
		set_text(LANG, 'nowUser', 'ahora es un usuario.')

		set_text(LANG, 'modList', 'Lista de Mods')
		set_text(LANG, 'adminList', 'Lista de Admins')
		set_text(LANG, 'modEmpty', 'La lista de mods está vacia en este chat.')
		set_text(LANG, 'adminEmpty', 'La lista de admins está vacia.')
		
		-- id.lua --
		set_text(LANG, 'user', 'Usuario')
		set_text(LANG, 'supergroupName', 'Nombre del SuperGrupo')
		set_text(LANG, 'chatName', 'Nombre del Chat')
		set_text(LANG, 'supergroup', 'SuperGrupo')
		set_text(LANG, 'chat', 'Chat')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'El usuario')
		set_text(LANG, 'userUnmuted:2', 'ahora puede hablar.')

		set_text(LANG, 'userMuted:1', 'El usuario')
		set_text(LANG, 'userMuted:2', 'está silenciado.')

		set_text(LANG, 'kickUser:1', 'Usuario')
		set_text(LANG, 'kickUser:2', 'expulsado.')

		set_text(LANG, 'banUser:1', 'Usuario')
		set_text(LANG, 'banUser:2', 'baneado.')

		set_text(LANG, 'unbanUser:1', 'Usuario')
		set_text(LANG, 'unbanUser:2', 'está desbaneado.')

		set_text(LANG, 'gbanUser:1', 'Usuario')
		set_text(LANG, 'gbanUser:2', 'globalmente baneado.')

		set_text(LANG, 'ungbanUser:1', 'Usuario')
		set_text(LANG, 'ungbanUser:2', 'desbaneado globalmente.')

		set_text(LANG, 'addUser:1', 'Usuario')
		set_text(LANG, 'addUser:2', 'añadido al chat.')
		set_text(LANG, 'addUser:3', 'añadido al supergrupo.')

		set_text(LANG, 'kickmeBye', 'adiós.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'plugins instalados.')
		set_text(LANG, 'pEnabled', 'activados.')
		set_text(LANG, 'pDisabled', 'desactivados.')

		set_text(LANG, 'isEnabled:1', 'Plugin')
		set_text(LANG, 'isEnabled:2', 'está activado.')

		set_text(LANG, 'notExist:1', 'Plugin')
		set_text(LANG, 'notExist:2', 'no existe.')

		set_text(LANG, 'notEnabled:1', 'Plugin')
		set_text(LANG, 'notEnabled:2', 'no activado.')

		set_text(LANG, 'pNotExists', 'No existe el plugin.')

		set_text(LANG, 'pDisChat:1', 'Plugin')
		set_text(LANG, 'pDisChat:2', 'desactivado en este chat.')

		set_text(LANG, 'anyDisPlugin', 'No hay plugins desactivados.')
		set_text(LANG, 'anyDisPluginChat', 'No hay plugins desactivados en este chat.')
		set_text(LANG, 'notDisabled', 'Este plugin no está desactivado')

		set_text(LANG, 'enabledAgain:1', 'Plugin')
		set_text(LANG, 'enabledAgain:2', 'está activado de nuevo')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Comandos')
		set_text(LANG, 'errorNoPlug', 'Este plugin no existe o no tiene comandos.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Chat rules have been updated.')
		set_text(LANG, 'remRules', 'Chat rules have been removed.')
		
        ------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: activa el bot en el chat actual.')
		set_text(LANG, 'bot:2', '#bot off: desactiva el bot en el chat actual.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: Muestra los comandos para todos los plugins.')
		set_text(LANG, 'commands:2', '#commands [plugin]: Comandos para ese plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: Devuelve un archivo lua instalador para compartir gbans y añadirlos en otro bot con un único comando.')
		set_text(LANG, 'export_gban:2', '#gbans list: Devuelve un archivo con la lista de gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: añade una lista de gbans en tu base de datos redis.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): convierte la persona a la que respondes en admin.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: añade un admin mediante su ID/Username.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): convierte la persona a la que respondes en mod.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: añade un mod mediante su ID/Username.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): borra de admin a la persona que respondes.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: borra un admin mediante su ID/Username.')
		set_text(LANG, 'giverank:7', '#admins: lista de todos los admins.')
		set_text(LANG, 'giverank:8', '#mods: lista de todos los mods.')
		set_text(LANG, 'giverank:9', '#members: lista de todos los miembros del chat.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: devuelve tu id y la del chat si estás en alguno.')
		set_text(LANG, 'id:2', '#ids chat: devuelve las IDs de los miembros actuales en el grupo.')
		set_text(LANG, 'id:3', '#ids channel: devuelve las IDs de los miembros actuales en el supergrupo.')
		set_text(LANG, 'id:4', '#id <user_name>: devuelve la ID del usuario presente en el chat.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Devuelve el alias/id del usuario.')
		set_text(LANG, 'id:6', '#whois (reply): Devuelve la ID del usuario.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: respondiendo a un mensaje, añadirá a ese usuario al grupo o supergrupo actual.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: añade a un usuario, por su ID/alias, al grupo o supergrupo actual.')
		set_text(LANG, 'moderation:3', '#kick: respondiendo a un mensaje, expulsará a ese usuario del grupo o supergrupo actual.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: expulsa a un usuario, por su ID/alias, del grupo o supergrupo actual.')
		set_text(LANG, 'moderation:5', '#kickme: autokick.')
		set_text(LANG, 'moderation:6', '#ban: respondiendo a un mensaje, expulsará y baneará a ese usuario del grupo o supergrupo actual.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: expulsa a un usuario, por su ID/alias, e impide que éste vuelva a entrar al grupo o supergrupo.')
		set_text(LANG, 'moderation:8', '#unban: respondiendo a un mensaje, desbanea a ese usuario del grupo o supergrupo.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: desbanea al usuario por su ID/alias del grupo o supergrupo.')
		set_text(LANG, 'moderation:10', '#gban: respondiendo a un mensaje, el usuario será baneado de todos los grupos y supergrupos.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: expulsa y banea al usuario, por su ID/alias, de todos los grupos o supergrupos e impide que éste vuelva a entrar en todos los grupos y/o supergrupos.')
		set_text(LANG, 'moderation:12', '#ungban: respondiendo a un mensaje, quita el baneo de todos los grupos y/o supergrupos.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: quita el baneo al usuario, por su ID/alias, de todos los grupos y/o supergrupos.')
		set_text(LANG, 'moderation:14', '#mute: respondiendo a un mensaje, silencia al usuario eliminando sus mensajes en el supergrupo actual.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: silencia a un usuario, por su ID/alias, eliminando sus mensajes en el supergrupo actual.')
		set_text(LANG, 'moderation:16', '#unmute: respondiendo a un mensaje, quita el silencio al usuario.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: quita el silencio al usuario, por su ID/alias, en el supergrupo actual.')
		set_text(LANG, 'moderation:18', '#rem: respondiendo a un mensaje, ese mensaje será borrado.')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 19)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: podrás mandar stickers cuando esté activo.')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: podrás mandar links cuando esté activo.')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disable: podrás hablar en árabe/persa cuando esté activo.')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable: podrás invitar bots al chat cuando esté activo.')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: podrás mandar gifs cuando esté activo.')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: podrás mandar fotos cuando esté activo.')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: podrás mandar audios cuando esté activo.')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: los usuarios podrán autoexpulsarse cuando esté activo.')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: podrás mandar enlaces de spam cuando esté activo.')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: si un usuario cambia la foto del grupo, el bot la cambiará por la foto guardada cuando esté activo.')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: si un usuario cambia el nombre del grupo, el bot lo cambiará por el nombre guardado cuando esté activo.')
	    set_text(LANG, 'settings:12', '#settings lockmember enable/disable: el bot expulsará a toda la gente que entre al grupo cuando esté activo.')
	    set_text(LANG, 'settings:13', '#settings floodtime <secs>: establece el tiempo de medición del flood.')
	    set_text(LANG, 'settings:14', '#settings maxflood <secs>: establece el máximo de mensajes en un floodtime para ser considerado flood.')
	    set_text(LANG, 'settings:15', '#setname <título del grupo>: el bot cambiará el nombre del grupo.')
	    set_text(LANG, 'settings:16', '#setphoto <después envía la foto>: el bot cambiará la foto del grupo.')
	    set_text(LANG, 'settings:17', '#lang <language (en, es...)>: cambia el idioma del bot.')
	    set_text(LANG, 'settings:18', '#setlink <link>: guarda el link del grupo.')
	    set_text(LANG, 'settings:19', '#link: muestra el link del grupo.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: muestra una lista de todos los plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: activa/desactiva el plugin especificado.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: activa/desactiva el plugin especificado, solo en el actual grupo/supergrupo.')
		set_text(LANG, 'plugins:4', '#plugins reload: recarga todos los plugins.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: muestra la versión del bot.')

		-- version.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: muestra las reglas del chat.')
		
		if matches[1] == 'install' then
			return 'ℹ️ El lenguaje español ha sido instalado en su base de datos.'
		elseif matches[1] == 'update' then
			return 'ℹ️ El lenguaje español ha sido actualizado en su base de datos.'
		end
	else
		return "Este plugin requiere permisos de sudo."
	end
end

return {
	patterns = {
		'#(install) (spanish_lang)$',
		'#(update) (spanish_lang)$'
	},
	run = run,
}
