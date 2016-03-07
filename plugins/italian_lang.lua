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
--           Translated by: @baconnn            --
--                                              --
--------------------------------------------------

local LANG = 'it'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'versione', '0.1')
		set_text(LANG, 'versionExtended', 'Versione traduzione 0.1')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'Questo plugin richiede i privilegi di sudo.')
		set_text(LANG, 'require_admin', 'Questo plugin richiede privilegi da admin o superiori.')
		set_text(LANG, 'require_mod', 'Questo plugin richiede privilegi da moderatore o superiori.')

		-- Spam.lua --
		set_text(LANG, 'reportUser', 'UTENTE')
		set_text(LANG, 'reportReason', 'Riportato per')
		set_text(LANG, 'reportGroup', 'Gruppo')
		set_text(LANG, 'reportMessage', 'Messagio')

		set_text(LANG, 'allowedSpamT', 'Lo spam è ora consentito in questo gruppo.')
		set_text(LANG, 'allowedSpamL', 'Lo spam è ora consentito in questo supergruppo.')
		set_text(LANG, 'notAllowedSpamT', 'Lo spam non è consentito in questo gruppo.')
		set_text(LANG, 'notAllowedSpamL', 'Lo spam non è consentito in questo supegruppo.')

		-- bot.lua --
		set_text(LANG, 'botOn', 'Sono tornato. Let\'s do this')
		set_text(LANG, 'botOff', 'Nulla da fare qui')

		-- settings.lua --
		set_text(LANG, 'user', 'Utente')
		set_text(LANG, 'isFlooding', 'sta floodando')

		set_text(LANG, 'noStickersT', 'Gli stickers non sono consentiti in questo gruppo.')
		set_text(LANG, 'noStickersL', 'Gli stickers non sono consentiti in questo supergruppo.')
		set_text(LANG, 'stickersT', 'Gli stickers sono ora consentiti in questo gruppo.')
		set_text(LANG, 'stickersL', 'Gli stickers non sono consentiti in questo supegruppo.')

		set_text(LANG, 'gifsT', 'Le gif sono ora consentite in questo gruppo.')
		set_text(LANG, 'gifsL', 'Le gif sono ora consentite in questo supergruppo.')
		set_text(LANG, 'noGifsT', 'Le gif non sono consentite in questo gruppo.')
		set_text(LANG, 'noGifsL', 'Le gif non sono consentite in questo supergruppo.')

		set_text(LANG, 'photosT', 'Le immagini sono ora consentite in questo gruppo.')
		set_text(LANG, 'photosL', 'Le immagini sono ora consentite in questo supergruppo.')
		set_text(LANG, 'noPhotosT', 'Le immagini non sono consentite in questo gruppo.')
		set_text(LANG, 'noPhotosL', 'Le immagini non sono consentite in questo supergruppo.')

		set_text(LANG, 'arabicT', 'I caratteri arabi sono ora consentiti in questo gruppo.')
		set_text(LANG, 'arabicL', 'I caratteri arabi sono ora consentiti in questo supergruppo.')
		set_text(LANG, 'noArabicT', 'I caratteri arabi non sono consentiti in questo gruppo.')
		set_text(LANG, 'noArabicL', 'I caratteri arabi non sono consentiti in questo supergruppo.')

		set_text(LANG, 'audiosT', 'I vocali sono ora consentiti in questo gruppo.')
		set_text(LANG, 'audiosL', 'I vocali sono ora consentiti in questo supergruppo.')
		set_text(LANG, 'noAudiosT', 'I vocali non consentiti in questo gruppo.')
		set_text(LANG, 'noAudiosL', 'I vocali non consentiti in questo supergruppo.')

		set_text(LANG, 'kickmeT', 'L\'autokick è ora bilitato in questo gruppo.')
		set_text(LANG, 'kickmeL', 'L\'autokick è ora bilitato in questo supergruppo.')
		set_text(LANG, 'noKickmeT', 'L\'autokick non è bilitato in questo gruppo.')
		set_text(LANG, 'noKickmeL', 'L\'autokick non è bilitato in questo supergruppo.')

		set_text(LANG, 'floodT', 'Il flood è ora consentito in questo gruppo.')
		set_text(LANG, 'floodL', 'Il flood è ora consentito in questo supergruppo.')
		set_text(LANG, 'noFloodT', 'Il flood non è consentito in questo gruppo.')
		set_text(LANG, 'noFloodL', 'Il flood non è consentito in questo supergruppo.')

		set_text(LANG, 'floodTime', 'L\'intervallo di tempo per il controllo del flood è stato impostato a ')
		set_text(LANG, 'floodMax', 'Il numero di messaggi per floodare è stato impostato a ')

		set_text(LANG, 'gSettings', 'Impostazioni del gruppo')
		set_text(LANG, 'sSettings', 'Impostazioni del supergruppo')

		set_text(LANG, 'allowed', 'consentito')
		set_text(LANG, 'noAllowed', 'non consentito')
		set_text(LANG, 'noSet', 'non impostato')

		set_text(LANG, 'stickers', 'Stickers')
		set_text(LANG, 'links', 'Link')
		set_text(LANG, 'arabic', 'Caratteri arabi')
		set_text(LANG, 'bots', 'Bot')
		set_text(LANG, 'gifs', 'Gif')
		set_text(LANG, 'photos', 'Immagini')
		set_text(LANG, 'audios', 'Vocali')
		set_text(LANG, 'kickme', 'Kickme')
		set_text(LANG, 'spam', 'Spam')
		set_text(LANG, 'gName', 'Nome del gruppo')
		set_text(LANG, 'flood', 'Flood')
		set_text(LANG, 'language', 'Lingiaggio')
		set_text(LANG, 'mFlood', 'Flood massimo')
		set_text(LANG, 'tFlood', 'Intervallo flood')
		set_text(LANG, 'setphoto', 'Immagine del gruppo')

		set_text(LANG, 'photoSaved', 'Foto salvata!')
		set_text(LANG, 'photoFailed', 'Errore, per favore prova di nuovo!')
		set_text(LANG, 'setPhotoAborted', 'Interruzione impostazione della foto...')
		set_text(LANG, 'sendPhoto', 'Per favore, invia un\'immagine')

		set_text(LANG, 'linkSaved', 'Nuovo link salvato.')
		set_text(LANG, 'groupLink', 'Link del gruppo')
		set_text(LANG, 'sGroupLink', 'Link del supergruppo')
		set_text(LANG, 'noLinkSet', 'Il link non è ancora stato settato. Per favore impostalo con #setlink [Link].')

		set_text(LANG, 'chatRename', 'Ora il gruppo può essere rinominato.')
		set_text(LANG, 'channelRename', 'Ora il supergruppo può essere rinominato.')
		set_text(LANG, 'notChatRename', 'Ora il gruppo non può essere rinominato.')
		set_text(LANG, 'notChannelRename', 'Ora il supergruppo non può essere rinominato.')

		set_text(LANG, 'lockMembersT', 'Il numero di membri è stato bloccato in questo gruppo.')
		set_text(LANG, 'lockMembersL', 'Il numero di membri è stato bloccato in questo supergruppo.')

		set_text(LANG, 'notLockMembersT', 'Il numero di membri è stato sbloccato in questo gruppo.')
		set_text(LANG, 'notLockMembersL', 'Il numero di membri è stato sbloccato in questo supergruppo.')

		set_text(LANG, 'langUpdated', 'La lingua del bot è stata aggiornata a: ')
		
		set_text(LANG, 'chatUpgrade', 'Chat Upgraded Successfully.')
		set_text(LANG, 'notInChann', 'You can\'t do this in a supergroup.')
		set_text(LANG, 'desChanged', 'Channel description has been changed.')
		set_text(LANG, 'desOnlyChannels', 'Description only can be changed in channels.')

		set_text(LANG, 'muteAll', 'Everyone is muted now.')
		set_text(LANG, 'unmuteAll', 'Everyone can talk now.')
		set_text(LANG, 'muteAllX:1', 'This channel has been muted for')
		set_text(LANG, 'muteAllX:2', 'seconds.')

		set_text(LANG, 'createGroup:1', 'Group')
		set_text(LANG, 'createGroup:2', 'created.')
		set_text(LANG, 'newGroupWelcome', 'Welcome to your new group.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'Utenti bannati globalmente.')

		-- giverank.lua --
		set_text(LANG, 'alreadyAdmin', 'Questo utente è già un amministratore.')
		set_text(LANG, 'alreadyMod', 'Questo utente è già un moderatore.')

		set_text(LANG, 'newAdmin', 'Nuovo amministratore')
		set_text(LANG, 'newMod', 'Nuovo moderatore')
		set_text(LANG, 'nowUser', 'è ora un utente.')

		set_text(LANG, 'modList', 'Lista dei moderatori')
		set_text(LANG, 'adminList', 'Lista degli amministratori')
		set_text(LANG, 'modEmpty', 'La lista dei moderatori è vuota in questo gruppo.')
		set_text(LANG, 'adminEmpty', 'La lista degli amministratori è vuota.')

		-- id.lua --
		set_text(LANG, 'user', 'Utente')
		set_text(LANG, 'supergroupName', 'Nome del supergruppo')
		set_text(LANG, 'chatName', 'Nome del gruppo')
		set_text(LANG, 'supergroup', 'Supergruppo')
		set_text(LANG, 'chat', 'Gruppo')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'Utente')
		set_text(LANG, 'userUnmuted:2', 'desilenziato.')

		set_text(LANG, 'userMuted:1', 'Utente')
		set_text(LANG, 'userMuted:2', 'silenziato.')

		set_text(LANG, 'kickUser:1', 'Utente')
		set_text(LANG, 'kickUser:2', 'kickato.')

		set_text(LANG, 'banUser:1', 'Utente')
		set_text(LANG, 'banUser:2', 'bannato.')

		set_text(LANG, 'unbanUser:1', 'Utente')
		set_text(LANG, 'unbanUser:2', 'unbannato.')

		set_text(LANG, 'gbanUser:1', 'Utente')
		set_text(LANG, 'gbanUser:2', 'bannato globalmente.')

		set_text(LANG, 'ungbanUser:1', 'Utente')
		set_text(LANG, 'ungbanUser:2', 'unbannato globalmente.')

		set_text(LANG, 'addUser:1', 'Utente')
		set_text(LANG, 'addUser:2', 'aggiunto al gruppo.')
		set_text(LANG, 'addUser:3', 'aggiunto al supergruppo.')

		set_text(LANG, 'kickmeBye', 'ciao.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'plugins installati.')
		set_text(LANG, 'pEnabled', 'abilitato.')
		set_text(LANG, 'pDisabled', 'disabilitato.')

		set_text(LANG, 'isEnabled:1', 'Il plugin')
		set_text(LANG, 'isEnabled:2', 'è abilitato.')

		set_text(LANG, 'notExist:1', 'Il plugin')
		set_text(LANG, 'notExist:2', 'non esiste.')

		set_text(LANG, 'notEnabled:1', 'Il plugin')
		set_text(LANG, 'notEnabled:2', 'non è abilitato.')

		set_text(LANG, 'pNotExists', 'Il plugin non esiste.')

		set_text(LANG, 'pDisChat:1', 'Il plugin')
		set_text(LANG, 'pDisChat:2', 'è disabilitato in questa chat.')

		set_text(LANG, 'anyDisPlugin', 'Non ci sono plugin diabilitati.')
		set_text(LANG, 'anyDisPluginChat', 'Non ci sono plugin disabilitati in questa chat.')
		set_text(LANG, 'notDisabled', 'Questo plugin non è diabilitato')

		set_text(LANG, 'enabledAgain:1', 'Il plugin')
		set_text(LANG, 'enabledAgain:2', 'è di nuovo abilitato')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Comandi')
		set_text(LANG, 'errorNoPlug', 'Questo plugin non esiste o non ha una descrizione.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Chat rules have been updated.')
		set_text(LANG, 'remRules', 'Chat rules have been removed.')

		------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: abilita il bot sul gruppo corrente.')
		set_text(LANG, 'bot:2', '#bot off: disabilita il bot sul gruppo corrente.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: mostra la descrizione di ogni plugin.')
		set_text(LANG, 'commands:2', '#commands [plugin]: descrizione del plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: invia un file lua per condividere la tua lista di ban globali ed inviarla in un altro gruppo.')
		set_text(LANG, 'export_gban:2', '#gbans list: invia un archivio con la lista degli utenti bannati globalmente.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: aggiungi una lista di utenti al db redis dei ban globali.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (risposta): promuovi ad amministratore tramite risposta.')
		set_text(LANG, 'giverank:2', '#rank admin <id_utente>/<username>: aggiungi un amministratore tramite ID/username.')
		set_text(LANG, 'giverank:3', '#rank mod (risposta): aggiungi un moderatore tramite risposta.')
		set_text(LANG, 'giverank:4', '#rank mod <id_utente>/<username>: aggiungi un moderatore tramite ID/Username.')
		set_text(LANG, 'giverank:5', '#rank guest (risposta): rimuovi un amministratore tramite risposta.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: rimuovi un amministratore tramite ID/Username.')
		set_text(LANG, 'giverank:7', '#admins: lista degli amministratori del gruppo.')
		set_text(LANG, 'giverank:8', '#mods: lista dei moderatori del gruppo.')
		set_text(LANG, 'giverank:9', '#members: lista dei membri della chat.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: mostra il tuo ID e l\'ID del gruppo se ti trovi in una chat.')
		set_text(LANG, 'id:2', '#ids chat: mostra gli ID dei membri del gruppo.')
		set_text(LANG, 'id:3', '#ids channel: mostra gli ID dei membri del supergruppo.')
		set_text(LANG, 'id:4', '#id <username>: mostra l\'ID dell\'utente in questa chat.')
		set_text(LANG, 'id:5', '#whois <id_utente>/<username>: mostra lo username.')
		set_text(LANG, 'id:6', '#whois (risposta): mostra l\'ID.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: rispondendo ad un messaggio, l\'utente verrà aggiunto al gruppo/supergruppo.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: aggiungi un utente tramite ID/username al gruppo/supergruppo.')
		set_text(LANG, 'moderation:3', '#kick: rispondendo ad un messaggio, l\'utente verrà rimosso dal gruppo/supergruppo.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: rimuovi un utente tramite ID/username al gruppo/supergruppo.')
		set_text(LANG, 'moderation:5', '#kickme: fatti rimuovere.')
		set_text(LANG, 'moderation:6', '#ban: rispondendo ad un messaggio, l\'utente verrà bannato dal gruppo/supergruppo.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: banna un utente tramite ID/username al gruppo/supergruppo.')
		set_text(LANG, 'moderation:8', '#unban: rispondendo ad un messaggio, l\'utente verrà unbannato dal gruppo/supergruppo.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: unbanna un utente tramite ID/username al gruppo/supergruppo.')
		set_text(LANG, 'moderation:10', '#gban: rispondendo ad un messaggio, l\'utente verrà bannato globalmente da ogni gruppo/supergruppo.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: banna globalmente un utente tramite ID/username da ogni gruppo/supergruppo.')
		set_text(LANG, 'moderation:12', '#ungban: rispondendo ad un messaggio, l\'utente verrà unbannato globalmente.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: unbanna globalmente un utente tramite ID/username.')
		set_text(LANG, 'moderation:14', '#mute: rispondendo ad un messaggio, l\'utente verrà silenziato nel corrente supergruppo, ed ogni suo messaggio verrà cancellato.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: l\'utente verrà silenziato tramite ID/username nel corrente supergruppo, ed ogni suo messaggio verrà cancellato.')
		set_text(LANG, 'moderation:16', '#unmute: rispondendo ad un messaggio, l\'utente verrà desilenziato nel corrente supergruppo.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: l\'utente verrà desilenziato tramite ID/username nel corrente supergruppo.')
		set_text(LANG, 'moderation:18', '#rem: rispondendo ad un messaggio, questo verrà rimosso.')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 19)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: quando abilitato, ogni sticker verrà rimosso.')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: quando abilitato, ogni link verrà rimosso.')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disabl: quando abilitato, ogni messaggio contenente caratteri arabi e persiani verrà rimosso.')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable: quando abilitato, ogni ogni bot aggiunto verrà rimosso.')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: quando abilitato, ogni gif verrà rimossa.')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: quando abilitato, ogni immagine verrà rimossa.')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: quando abilitato, ogni vocale verrà rimosso.')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: quando abilitato, gli utenti possono kickarsi autonomamente.')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: quando abilitato, ogni link spam verrà rimosso.')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: quando abilitato, se un utente cambia icona del gruppo, il bot ripristinerà quella salvata.')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: quando abilitato, se un utente cambia il nome del gruppo, il bot ripristinerà il nome salvato.')
	    set_text(LANG, 'settings:12', '#settings lockmembers enable/disable: quando abilitato, il bot rimuoverà ogni utente che etrerà nel gruppo.')
	    set_text(LANG, 'settings:13', '#settings floodtime <secondi>: imposta l\'intervallo di monitoraggio del flood.')
	    set_text(LANG, 'settings:14', '#settings maxflood <messaggi>: imposta il numero di messaggi inviati nel floodtime affinchè vengano considerati flood.')
	    set_text(LANG, 'settings:15', '#setname <nome gruppo>: vambia il nome della chat.')
	    set_text(LANG, 'settings:16', '#setphoto <poi invia la foto>: cambia la foto della chat.')
	    set_text(LANG, 'settings:17', '#lang <language (en, es...)>: cambia l\'idioma del bot.')
	    set_text(LANG, 'settings:18', '#setlink <link>: salva il link del gruppo.')
	    set_text(LANG, 'settings:19', '#link: mostra il link del gruppo.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: mostra una lista di tutti i plugin.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: abilita/disabilita il plugin specifico.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: abilita/disabilita il plugin specifico, ma solo sulla chat corrente.')
		set_text(LANG, 'plugins:4', '#plugins reload: ricarica tutti i plugin.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: mostra la versione del bot.')

		-- rules.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: mostra le regole della chat.')

		if matches[1] == 'install' then
			return 'ℹ️¸ L\'italiano è stato installato come lingua del bot.'
		elseif matches[1] == 'update' then
			return 'ℹ️ Stringhe italiane aggiornate.'
		end
	else
		return "ℹ️ Questo plugin richiede i privilegi di sudo."
	end
end

return {
	patterns = {
		'#(install) (italian_lang)$',
		'#(update) (italian_lang)$'
	},
	run = run
}
