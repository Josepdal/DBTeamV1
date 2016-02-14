LANG = 'es'

local function run(msg, matches)
	-- Translation version --
	set_text(LANG, 'version', '0.1')
	set_text(LANG, 'versionExtended', 'Traducción versión 0.1')

	-- Spam.lua --
	set_text(LANG, 'reportReason', 'Motivo del reporte')
	set_text(LANG, 'reportGroup', 'Grupo')
	set_text(LANG, 'reportMessage', 'Mensaje')

	set_text(LANG, 'allowedSpamT', 'Spam permitido en éste grupo')
	set_text(LANG, 'allowedSpamL', 'Spam permitido en éste supergrupo')
	set_text(LANG, 'notAllowedSpamT', 'Spam no permitido en este grupo')
	set_text(LANG, 'notAllowedSpamL', 'Spam no permitido en este supergrupo')

	-- bot.lua --
	set_text(LANG, 'botOn', 'Bot activado')
	set_text(LANG, 'botOff', 'Bot desactivado')
	set_text(LANG, 'botOnUsage', 'Activa el bot en el supergrupo actual')
	set_text(LANG, 'botOnUsage', 'Desactiva el bot en el supergrupo actual')

	-- settings.lua --
	set_text(LANG, 'user', 'Usuario')
	set_text(LANG, 'isFlooding', 'está haciendo floof')

	set_text(LANG, 'noStickersT', 'Stickers no permitidos en este grupo')
	set_text(LANG, 'noStickersL', 'Stickers no permitidos en este supergrupo')
	set_text(LANG, 'stickersT', 'Stickers permitidos en este grupo')
	set_text(LANG, 'stickersL', 'Stickers permitidos en este supergrupo')

	set_text(LANG, 'gifsT', 'Gifs permitidos en éste grupo')
	set_text(LANG, 'gifsL', 'Gifs permitidos en éste supergrupo')
	set_text(LANG, 'noGifsT', 'Gifs no permitidos en este grupo')
	set_text(LANG, 'noGifsL', 'Gifs no permitidos en este supergrupo')

	set_text(LANG, 'photosT', 'Fotos permitidas en este grupo')
	set_text(LANG, 'photosL', 'Fotos permitidas en este supergrupo')
	set_text(LANG, 'noPhotosT', 'Fotos no permitidas en este grupo')
	set_text(LANG, 'noPhotosL', 'Fotos no permitidas en este supergrupo')

	set_text(LANG, 'arabicT', 'El árabe está ahora permitido en este grupo')
	set_text(LANG, 'arabicL', 'El árabe está ahora permitido en este supergrupo')
	set_text(LANG, 'noArabicT', 'El árabe no está permitido en este grupo')
	set_text(LANG, 'noArabicL', 'El árabe no está permitido en este supergrupo')

	set_text(LANG, 'audiosT', 'Audios permitidos en este grupo')
	set_text(LANG, 'audiosL', 'Audios permitidos en este supergrupo')
	set_text(LANG, 'noAudiosT', 'Audios no permitidos en este grupo')
	set_text(LANG, 'noAudiosL', 'Audios no permitidos en este supergrupo')

	set_text(LANG, 'kickmeT', 'Autoexpulsión permitida en este grupo')
	set_text(LANG, 'kickmeL', 'Autoexpulsioón permitida en este supergrupo')
	set_text(LANG, 'noKickmeT', 'Autoexpulsión no permitida en este grupo')
	set_text(LANG, 'noKickmeL', 'Autoexpulsión no permitida en este supergrupo')

	set_text(LANG, 'floodT', 'Flood permitido en este grupo')
	set_text(LANG, 'floodL', 'Flood permitido en este supergrupo')
	set_text(LANG, 'noFloodT', 'Flood no permitido en este grupo')
	set_text(LANG, 'noFloodL', 'Flood no permitido en este supergrupo')

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

	set_text(LANG, 'langUpdated', 'El idioma ha sido cambiado a: ')

	if matches[1] == 'install' then
		return 'El lenguaje español ha sido instalado satisfactoriamente en tu bot.'
	elseif matches[1] == 'update' then
		return 'El lenguaje español ha sido actualizado satisfactoriamente en tu bot.'
	end

	
end

return {
	patterns = {
		'#(install) (spanish_lang)$',
		'#(update) (spanish_lang)$'
	},
	run = run,
	privileged = true
}