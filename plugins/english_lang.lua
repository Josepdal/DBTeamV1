local LANG = 'en'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.1')
		set_text(LANG, 'versionExtended', 'Translation version 0.1')

		-------------
		-- Plugins --
		-------------

		-- Spam.lua --
		set_text(LANG, 'reportReason', 'Report reason')
		set_text(LANG, 'reportGroup', 'Group')
		set_text(LANG, 'reportMessage', 'Message')

		set_text(LANG, 'allowedSpamT', 'Spam is now allowed in this chat')
		set_text(LANG, 'allowedSpamL', 'Spam is now allowed in this supergroup')
		set_text(LANG, 'notAllowedSpamT', 'Spam is not allowed in this chat')
		set_text(LANG, 'notAllowedSpamL', 'Spam is not allowed in this supergroup')

		-- bot.lua --
		set_text(LANG, 'botOn', 'I\'m back. Let\'s do this')
		set_text(LANG, 'botOff', 'Nothing to do here')

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

		-- global plugins --
		set_text(LANG, 'require_sudo', 'This plugin requires sudo privileges.')
		set_text(LANG, 'require_admin', 'This plugin requires admin privileges or higher.')
		set_text(LANG, 'require_mod', 'This plugin requires mod privileges or higher.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'accounts globally banned.')

		-- giverank.lua --
		set_text(LANG, 'alreadyAdmin', 'This user is already admin.')
		set_text(LANG, 'alreadyMod', 'This user is already mod.')

		set_text(LANG, 'newAdmin', 'New admin')
		set_text(LANG, 'newMod', 'New mod')
		set_text(LANG, 'nowUser', 'is now an user.')

		set_text(LANG, 'modList', 'Mods list')
		set_text(LANG, 'adminList', 'Admins list')
		set_text(LANG, 'modEmpty', 'Mod list is empty in this chat.')
		set_text(LANG, 'adminEmpty', 'Admin list is empty.')

		-- id.lua --
		set_text(LANG, 'user', 'User')
		set_text(LANG, 'supergroupName', 'SuperGroup Name')
		set_text(LANG, 'chatName', 'Chat Name')
		set_text(LANG, 'supergroup', 'SuperGroup')
		set_text(LANG, 'chat', 'Chat')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'User')
		set_text(LANG, 'userUnmuted:2', 'unmuted.')

		set_text(LANG, 'userMuted:1', 'User')
		set_text(LANG, 'userMuted:2', 'muted.')

		set_text(LANG, 'kickUser:1', 'User')
		set_text(LANG, 'kickUser:2', 'kicked out.')

		set_text(LANG, 'banUser:1', 'User')
		set_text(LANG, 'banUser:2', 'banned.')

		set_text(LANG, 'unbanUser:1', 'User')
		set_text(LANG, 'unbanUser:2', 'is unbanned.')

		set_text(LANG, 'gbanUser:1', 'User')
		set_text(LANG, 'gbanUser:2', 'globally banned.')

		set_text(LANG, 'gbanUser:1', 'User')
		set_text(LANG, 'gbanUser:2', 'unglobally banned.')

		set_text(LANG, 'addUser:1', 'User')
		set_text(LANG, 'addUser:2', 'added to chat.')
		set_text(LANG, 'addUser:3', 'added to channel.')

		set_text(LANG, 'kickmeBye', 'bye')



		------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:1', '#bot on: enable bot in current channel.')
		set_text(LANG, 'bot:2', '#bot off: disable bot in current channel.')

		-- commands.lua --
		set_text(LANG, 'commands:1', '#commands: Show all commands for every plugin.')
		set_text(LANG, 'commands:2', '#commands [plugin]: Commands for that plugin.')

		-- export_gban.lua --
		set_text(LANG, 'exportGban:1', '#gbans installer: Return a lua file installer to share gbans and add those in another bot in just one command.')
		set_text(LANG, 'exportGban:2', '#gbans list: Return an archive with a list of gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gbanInstaller:1', '#install gbans: add a list of gbans into your redis db.')

		-- giverank.lua --
		set_text(LANG, 'giveRank:1', '#rank admin (reply): add admin by reply.')
		set_text(LANG, 'giveRank:2', '#rank admin <user_id>/<user_name>: add admin by user ID/Username.')
		set_text(LANG, 'giveRank:3', '#rank mod (reply): add mod by reply.')
		set_text(LANG, 'giveRank:4', '#rank mod <user_id>/<user_name>: add mod by user ID/Username.')
		set_text(LANG, 'giveRank:5', '#rank guest (reply): remove admin by reply.')
		set_text(LANG, 'giveRank:6', '#rank guest <user_id>/<user_name>: remove admin by user ID/Username.')
		set_text(LANG, 'giveRank:7', '#admins: list of all admin members.')
		set_text(LANG, 'giveRank:8', '#mods: list of all mod members.')
		set_text(LANG, 'giveRank:9', '#members: list of all channel members.')

		-- id.lua --
		set_text(LANG, 'id:1', '#id: Return your ID and the chat id if you are in one.')
		set_text(LANG, 'id:2', '#ids chat: Return the IDs of the current chat members.')
		set_text(LANG, 'id:3', '#ids channel: Return the IDs of the current channel members.')
		set_text(LANG, 'id:4', '#id <user_name>: Return the member username ID from the current chat.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Return username.')
		set_text(LANG, 'id:6', '#whois (reply): Return user id.')

		-- moderation.lua --
		set_text(LANG, 'moderation:1', '#add: replying to a message, the user will be added to the current group/supergroup.')
		set_text(LANG, 'moderation:2', '#add <id>|<username>: adds a user by its ID/Username to the current group/supergroup.')
		set_text(LANG, 'moderation:3', '#kick: replying to a message, the user will be kicked in the current group/supergroup.')
		set_text(LANG, 'moderation:4', '#kick <id>|<username>: the user will be kicked by its ID/Username in the current group/supergroup.')
		set_text(LANG, 'moderation:5', '#whois (reply): Return user id.')
		set_text(LANG, 'moderation:6', '#ban: replying to a message, the user will be kicked and banned in the current group/supergroup.')
		set_text(LANG, 'moderation:7', '#ban <id>|<username>: the user will be banned by its ID/Username in the current group/supergroup and it wont be able to return.')
		set_text(LANG, 'moderation:8', '#unban: replying to a message, the user will be unbanned in the current group/supergroup.')
		set_text(LANG, 'moderation:9', '#unban <id>|<username>: the user will be unbanned by its ID/Username in the current group/supergroup.')
		set_text(LANG, 'moderation:10', '#gban: replying to a message, the user will be kicked and banned from all groups/supergroups.')
		set_text(LANG, 'moderation:11', '#gban <id>|<username>: the user will be banned by its ID/Username from all groups/supergroups and it wont be able to enter.')
		set_text(LANG, 'moderation:12', '#ungban: replying to a message, the user will be unbanned from all groups/supergroups.')
		set_text(LANG, 'moderation:13', '#ungban <id>|<username>: the user will be unbanned by its ID/Username from all groups/supergroups.')
		set_text(LANG, 'moderation:14', '#mute: replying to a message, the user will be silenced in the current supergroup, erasing all its messages.')
		set_text(LANG, 'moderation:15', '#mute <id>|<username>: the user will be silenced by its ID/Username inthe current supergroup, erasing all its messages.')
		set_text(LANG, 'moderation:16', '#unmute: replying to a message, the user will be unsilenced in the current supergroup.')
		set_text(LANG, 'moderation:17', '#unmute <id>|<username>: the user will be unsilenced by its ID/Username in the current supergroup.')
		set_text(LANG, 'moderation:18', '#rem: replying to a message, the message will be removed.')
		
		-- settings.lua --
		set_text(LANG, 'settings:1', '#settings stickers enable/disable')
		set_text(LANG, 'settings:2', '#settings links enable/disable')
		set_text(LANG, 'settings:3', '#settings arabic enable/disable')
		set_text(LANG, 'settings:4', '#settings bots enable/disable')
		set_text(LANG, 'settings:5', '#settings gifs enable/disable')
		set_text(LANG, 'settings:6', '#settings photos enable/disable')
		set_text(LANG, 'settings:7', '#settings audios enable/disable')
		set_text(LANG, 'settings:8', '#settings kickme enable/disable')
		set_text(LANG, 'settings:9', '#settings spam enable/disable')
		set_text(LANG, 'settings:10', '#settings setphoto enable/disable')
		set_text(LANG, 'settings:11', '#settings setname enable/disable')
		set_text(LANG, 'settings:12', '#settings lockmembers enable/disable')
		set_text(LANG, 'settings:13', '#settings floodtime <secs>')
		set_text(LANG, 'settings:14', '#settings maxflood <secs>')
		set_text(LANG, 'settings:15', '#setname <group title>')
		set_text(LANG, 'settings:16', '#setphoto <then send photo>')
		set_text(LANG, 'settings:17', '#lang <language (en, es...)>')
		set_text(LANG, 'settings:18', '#setlink <link>')
		set_text(LANG, 'settings:19', '#link: to get link')

		-- plugins.lua --
		set_text(LANG, 'plugins:1', '#plugins: shows a list of all plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: enable/disable the specified plugin.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: enable/disable the specified plugin, only in the current group/supergroup.')
		set_text(LANG, 'plugins:4', '#plugins reload: reloads all plugins.')




		if matches[1] == 'install' then
			return 'ℹ️ English was successfully installed on your bot.'
		elseif matches[1] == 'update' then
			return 'ℹ️ English was successfully updated on your bot.'
		end
	else
		return "🚫 This plugin requires sudo privileged user."
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