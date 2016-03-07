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
--------------------------------------------------

local LANG = 'en'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.2')
		set_text(LANG, 'versionExtended', 'Translation version 0.2')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'This plugin requires sudo privileges.')
		set_text(LANG, 'require_admin', 'This plugin requires admin privileges or higher.')
		set_text(LANG, 'require_mod', 'This plugin requires mod privileges or higher.')

		-- Spam.lua --
		set_text(LANG, 'reportUser', 'USER')
		set_text(LANG, 'reportReason', 'Report reason')
		set_text(LANG, 'reportGroup', 'Group')
		set_text(LANG, 'reportMessage', 'Message')

		set_text(LANG, 'allowedSpamT', 'Spam is now allowed in this chat.')
		set_text(LANG, 'allowedSpamL', 'Spam is now allowed in this supergroup.')
		set_text(LANG, 'notAllowedSpamT', 'Spam is not allowed in this chat.')
		set_text(LANG, 'notAllowedSpamL', 'Spam is not allowed in this supergroup.')

		-- bot.lua --
		set_text(LANG, 'botOn', 'I\'m back. Let\'s do this')
		set_text(LANG, 'botOff', 'Nothing to do here')

		-- settings.lua --
		set_text(LANG, 'user', 'User')
		set_text(LANG, 'isFlooding', 'is flooding')

		set_text(LANG, 'noStickersT', 'Stickers are not allowed in this chat.')
		set_text(LANG, 'noStickersL', 'Stickers are not allowed in this supergroup.')
		set_text(LANG, 'stickersT', 'Stickers are now allowed in this chat.')
		set_text(LANG, 'stickersL', 'Stickers are now allowed in this supergroup.')

		set_text(LANG, 'gifsT', 'Gifs are now allowed in this chat.')
		set_text(LANG, 'gifsL', 'Gifs are now allowed in this supergroup.')
		set_text(LANG, 'noGifsT', 'Gifs are not allowed in this chat.')
		set_text(LANG, 'noGifsL', 'Gifs are not allowed in this supergroup.')

		set_text(LANG, 'photosT', 'Photos are now allowed in this chat.')
		set_text(LANG, 'photosL', 'Photos are now allowed in this supergroup.')
		set_text(LANG, 'noPhotosT', 'Photos are not allowed in this chat.')
		set_text(LANG, 'noPhotosL', 'Photos are not allowed in this supergroup.')

		set_text(LANG, 'arabicT', 'Arabic is now allowed in this chat.')
		set_text(LANG, 'arabicL', 'Arabic is now allowed in this supergroup.')
		set_text(LANG, 'noArabicT', 'Arabic is not allowed in this chat.')
		set_text(LANG, 'noArabicL', 'Arabic is not allowed in this supergroup.')

		set_text(LANG, 'audiosT', 'Audios are now allowed in this chat.')
		set_text(LANG, 'audiosL', 'Audios are now allowed in this supergroup.')
		set_text(LANG, 'noAudiosT', 'Audios are not allowed in this chat.')
		set_text(LANG, 'noAudiosL', 'Audios are not allowed in this supergroup.')

		set_text(LANG, 'kickmeT', 'Autokick is now allowed in this chat.')
		set_text(LANG, 'kickmeL', 'Autokick is now allowed in this supergroup.')
		set_text(LANG, 'noKickmeT', 'Autokick is not allowed in this chat.')
		set_text(LANG, 'noKickmeL', 'Autokick is not allowed in this supergroup.')

		set_text(LANG, 'floodT', 'Flood is now allowed in this chat.')
		set_text(LANG, 'floodL', 'Flood is now allowed in this supergroup.')
		set_text(LANG, 'noFloodT', 'Flood is not allowed in this chat.')
		set_text(LANG, 'noFloodL', 'Flood is not allowed in this supergroup.')

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
		set_text(LANG, 'setphoto', 'Set photo')

		set_text(LANG, 'photoSaved', 'Photo saved!')
		set_text(LANG, 'photoFailed', 'Failed, please try again!')
		set_text(LANG, 'setPhotoAborted', 'Stopping setphoto process...')
		set_text(LANG, 'sendPhoto', 'Please, send a photo')

		set_text(LANG, 'linkSaved', 'New link saved.')
		set_text(LANG, 'groupLink', 'Group Link')
		set_text(LANG, 'sGroupLink', 'SuperGroup Link')
		set_text(LANG, 'noLinkSet', 'There is not link set yet. Please add one by #setlink [Link].')

		set_text(LANG, 'chatRename', 'Now you can rename the chat.')
		set_text(LANG, 'channelRename', 'Now you can rename the channel.')
		set_text(LANG, 'notChatRename', 'Now you can\'t rename the chat.')
		set_text(LANG, 'notChannelRename', 'Now you can\'t rename the channel.')

		set_text(LANG, 'lockMembersT', 'The number of members has been locked on this chat.')
		set_text(LANG, 'lockMembersL', 'The number of members has been locked on this channel.')

		set_text(LANG, 'notLockMembersT', 'The number of members now is not locked on this chat.')
		set_text(LANG, 'notLockMembersL', 'The number of members now is not locked on this channel.')

		set_text(LANG, 'langUpdated', 'Your language has been updated to: ')

		set_text(LANG, 'chatUpgrade', 'Chat Upgraded Successfully.')
		set_text(LANG, 'notInChann', 'You can\'t do this in a supergroup.')

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

		set_text(LANG, 'ungbanUser:1', 'User')
		set_text(LANG, 'ungbanUser:2', 'unglobally banned.')

		set_text(LANG, 'addUser:1', 'User')
		set_text(LANG, 'addUser:2', 'added to chat.')
		set_text(LANG, 'addUser:3', 'added to channel.')

		set_text(LANG, 'kickmeBye', 'bye.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'plugins installed.')
		set_text(LANG, 'pEnabled', 'enabled.')
		set_text(LANG, 'pDisabled', 'disabled.')

		set_text(LANG, 'isEnabled:1', 'Plugin')
		set_text(LANG, 'isEnabled:2', 'is enabled.')

		set_text(LANG, 'notExist:1', 'Plugin')
		set_text(LANG, 'notExist:2', 'does not exists.')

		set_text(LANG, 'notEnabled:1', 'Plugin')
		set_text(LANG, 'notEnabled:2', 'not enabled.')

		set_text(LANG, 'pNotExists', 'Plugin doesn\'t exists.')

		set_text(LANG, 'pDisChat:1', 'Plugin')
		set_text(LANG, 'pDisChat:2', 'disabled on this chat.')

		set_text(LANG, 'anyDisPlugin', 'There aren\'t any disabled plugins.')
		set_text(LANG, 'anyDisPluginChat', 'There aren\'t any disabled plugins for this chat.')
		set_text(LANG, 'notDisabled', 'This plugin is not disabled')

		set_text(LANG, 'enabledAgain:1', 'Plugin')
		set_text(LANG, 'enabledAgain:2', 'is enabled again')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Commands')
		set_text(LANG, 'errorNoPlug', 'This plugin does not exists or has not usages.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Chat rules have been updated.')
		set_text(LANG, 'remRules', 'Chat rules have been removed.')

		------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: enable bot in current channel.')
		set_text(LANG, 'bot:2', '#bot off: disable bot in current channel.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: Show all commands for every plugin.')
		set_text(LANG, 'commands:2', '#commands [plugin]: Commands for that plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: Return a lua file installer to share gbans and add those in another bot in just one command.')
		set_text(LANG, 'export_gban:2', '#gbans list: Return an archive with a list of gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: add a list of gbans into your redis db.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): add admin by reply.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: add admin by user ID/Username.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): add mod by reply.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: add mod by user ID/Username.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): remove admin by reply.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: remove admin by user ID/Username.')
		set_text(LANG, 'giverank:7', '#admins: list of all admin members.')
		set_text(LANG, 'giverank:8', '#mods: list of all mod members.')
		set_text(LANG, 'giverank:9', '#members: list of all channel members.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: Return your ID and the chat id if you are in one.')
		set_text(LANG, 'id:2', '#ids chat: Return the IDs of the current chat members.')
		set_text(LANG, 'id:3', '#ids channel: Return the IDs of the current channel members.')
		set_text(LANG, 'id:4', '#id <user_name>: Return the member username ID from the current chat.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Return username.')
		set_text(LANG, 'id:6', '#whois (reply): Return user id.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: replying to a message, the user will be added to the current group/supergroup.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: adds a user by its ID/Username to the current group/supergroup.')
		set_text(LANG, 'moderation:3', '#kick: replying to a message, the user will be kicked in the current group/supergroup.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: the user will be kicked by its ID/Username in the current group/supergroup.')
		set_text(LANG, 'moderation:5', '#kickme: kick yourself.')
		set_text(LANG, 'moderation:6', '#ban: replying to a message, the user will be kicked and banned in the current group/supergroup.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: the user will be banned by its ID/Username in the current group/supergroup and it wont be able to return.')
		set_text(LANG, 'moderation:8', '#unban: replying to a message, the user will be unbanned in the current group/supergroup.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: the user will be unbanned by its ID/Username in the current group/supergroup.')
		set_text(LANG, 'moderation:10', '#gban: replying to a message, the user will be kicked and banned from all groups/supergroups.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: the user will be banned by its ID/Username from all groups/supergroups and it wont be able to enter.')
		set_text(LANG, 'moderation:12', '#ungban: replying to a message, the user will be unbanned from all groups/supergroups.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: the user will be unbanned by its ID/Username from all groups/supergroups.')
		set_text(LANG, 'moderation:14', '#mute: replying to a message, the user will be silenced in the current supergroup, erasing all its messages.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: the user will be silenced by its ID/Username inthe current supergroup, erasing all its messages.')
		set_text(LANG, 'moderation:16', '#unmute: replying to a message, the user will be unsilenced in the current supergroup.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: the user will be unsilenced by its ID/Username in the current supergroup.')
		set_text(LANG, 'moderation:18', '#rem: replying to a message, the message will be removed.')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 19)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: when disabled, all stickers will be cleared.')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: when disabled, all links will be cleared.')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disabl: when disabled, all messages with arabic/persian will be cleared.')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable: when disabled, if someone adds a bot, it will be kicked.')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: when disabled, all gifs will be cleared.')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: when disabled, all photos will be cleared.')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: when disabled, all audios will be cleared.')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: when disabled, people can kick out itself.')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: when disabled, all spam links will be cleared.')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: when enabled, if a user changes the group photo, the bot will revert to the saved photo.')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: when enabled, if a user changes the group name, the bot will revert to the saved name.')
	    set_text(LANG, 'settings:12', '#settings lockmember enable/disable: when enabled, the bot will kick all people that enters to the group.')
	    set_text(LANG, 'settings:13', '#settings floodtime <secs>: set the time that bot uses to check flood.')
	    set_text(LANG, 'settings:14', '#settings maxflood <msgs>: set the maximum messages in a floodtime to be considered as flood.')
	    set_text(LANG, 'settings:15', '#setname <group title>: the bot will change group title.')
	    set_text(LANG, 'settings:16', '#setphoto <then send photo>: the bot will change group photo.')
	    set_text(LANG, 'settings:17', '#lang <language (en, es...)>: it changes the language of the bot.')
	    set_text(LANG, 'settings:18', '#setlink <link>: saves the link of the group.')
	    set_text(LANG, 'settings:19', '#link: to get the link of the group.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: shows a list of all plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: enable/disable the specified plugin.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: enable/disable the specified plugin, only in the current group/supergroup.')
		set_text(LANG, 'plugins:4', '#plugins reload: reloads all plugins.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: shows bot version.')

		-- rules.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: shows channel rules.')

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
	run = run
}
