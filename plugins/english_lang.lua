local LANG = 'en'

local function run(msg, matches)
	print(LANG)
	-- Translation version --
	set_text(LANG, 'version', '0.1')
	set_text(LANG, 'versionExtended', 'Translation version 0.1')

	-- Spam.lua --
	set_text(LANG, 'reportReason', 'Report reason')
	set_text(LANG, 'reportGroup', 'Group')
	set_text(LANG, 'reportMessage', 'Message')

	set_text(LANG, 'allowedSpamT', 'Spam is now allowed in this chat')
	set_text(LANG, 'allowedSpamL', 'Spam is now allowed in this supergroup')
	set_text(LANG, 'notAllowedSpamT', 'Spam is not allowed in this chat')
	set_text(LANG, 'notAllowedSpamL', 'Spam is not allowed in this supergroup')

	-- bot.lua --
	set_text(LANG, 'botOn', 'Bot Online')
	set_text(LANG, 'botOff', 'Bot Offline')
	set_text(LANG, 'botOnUsage', 'enable bot in current channel')
	set_text(LANG, 'botOnUsage', 'disable bot in current channel')

	-- settings.lua --
	set_text(LANG, 'user', 'User')
	set_text(LANG, 'isFlooding', 'is flooding')

	set_text(LANG, 'noStickersT', 'Stickers are not allowed in this chat')
	set_text(LANG, 'noStickersL', 'Stickers are not allowed in this supergroup')
	set_text(LANG, 'stickersT', 'Stickers are now allowed in this chat')
	set_text(LANG, 'stickersL', 'Stickers are not allowed in this supergroup')

	set_text(LANG, 'gifsT', 'Gifs are now allowed in this chat')
	set_text(LANG, 'gifsL', 'Gifs are now allowed in this supergroup')
	set_text(LANG, 'noGifsT', 'Gifs are not allowed in this chat')
	set_text(LANG, 'noGifsL', 'Gifs are not allowed in this supergroup')

	set_text(LANG, 'photosT', 'Photos are now allowed in this chat')
	set_text(LANG, 'photosL', 'Photos are now allowed in this supergroup')
	set_text(LANG, 'noPhotosT', 'Photos are not allowed in this chat')
	set_text(LANG, 'noPhotosL', 'Photos are not allowed in this supergroup')

	set_text(LANG, 'arabicT', 'Arabic is now allowed in this chat')
	set_text(LANG, 'arabicL', 'Arabic is now allowed in this supergroup')
	set_text(LANG, 'noArabicT', 'Arabic is not allowed in this chat')
	set_text(LANG, 'noArabicL', 'Arabic is not allowed in this supergroup')

	set_text(LANG, 'audiosT', 'Audios are now allowed in this chat')
	set_text(LANG, 'audiosL', 'Audios are now allowed in this supergroup')
	set_text(LANG, 'noAudiosT', 'Audios are not allowed in this chat')
	set_text(LANG, 'noAudiosL', 'Audios are not allowed in this supergroup')

	set_text(LANG, 'kickmeT', 'Autokick is now allowed in this chat')
	set_text(LANG, 'kickmeL', 'Autokick is now allowed in this supergroup')
	set_text(LANG, 'noKickmeT', 'Autokick is not allowed in this chat')
	set_text(LANG, 'noKickmeL', 'Autokick is not allowed in this supergroup')

	set_text(LANG, 'floodT', 'Flood is now allowed in this chat')
	set_text(LANG, 'floodL', 'Flood is now allowed in this supergroup')
	set_text(LANG, 'noFloodT', 'Flood is not allowed in this chat')
	set_text(LANG, 'noFloodL', 'Flood is not allowed in this supergroup')

	set_text(LANG, 'floodTime', 'Flood time check has been set to ')
	set_text(LANG, 'floodMax', 'Max flood messages have been set to ')

	set_text(LANG, 'gSettings', 'Group settings')
	set_text(LANG, 'sSettings', 'SuperGroup settings')

	set_text(LANG, 'allowed', 'allowed')
	set_text(LANG, 'noAllowed', 'not allowed')
	set_text(LANG, 'noSet', 'not set')

	set_text(LANG, 'stickers', 'Stickers')
	set_text(LANG, 'links', 'Links')
	set_text(LANG, 'arabic', 'Arabic')
	set_text(LANG, 'bots', 'Bots')
	set_text(LANG, 'gifs', 'Gifs')
	set_text(LANG, 'photos', 'Photos')
	set_text(LANG, 'audios', 'Audios')
	set_text(LANG, 'kickme', 'Kickme')
	set_text(LANG, 'spam', 'Spam')
	set_text(LANG, 'gName', 'Group Name')
	set_text(LANG, 'flood', 'Flood')
	set_text(LANG, 'language', 'Language')
	set_text(LANG, 'mFlood', 'Flood max')
	set_text(LANG, 'tFlood', 'Flood time')

	set_text(LANG, 'langUpdated', 'Your language has been updated to: ')


	if matches[1] == 'install' then
		return 'English was successfully installed on your bot.'
	elseif matches[1] == 'update' then
		return 'English was successfully updated on your bot.'
	end

end

return {
	patterns = {
		'#(install) (english_lang)$',
		'#(update) (english_lang)$'
	},
	run = run,
	privileged = true
}