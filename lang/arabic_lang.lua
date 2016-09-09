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
--   Translated by Wathiq Al-Qajar { @iluli }   --
--                                              --
--------------------------------------------------

local LANG = 'ar'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.2')
		set_text(LANG, 'versionExtended', 'إصدار الترجمة 0.2')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'هذا الامر يتطلب امتيازات مطور.')
		set_text(LANG, 'require_admin', 'هذا الامر يتطلب امتيازات مسؤول أو أعلى.')
		set_text(LANG, 'require_mod', 'هذا الامر يتطلب امتيازات أدمن أو أعلى.')
		
		-- welcome.lua
		set_text(LANG, 'weloff', 'الترحيب مفعل')
		set_text(LANG, 'welon', 'الترحيب غير مفعل')
		set_text(LANG, 'byeon', 'التوديع مفعل')
		set_text(LANG, 'byeoff', 'التوديع غير مفعل')
		set_text(LANG, 'welcome1', 'اهلا ')
		set_text(LANG, 'welcome2', 'مرحبا بكم في ')
		set_text(LANG, 'weldefault', 'الترحيب هو الافتراضي.')
		set_text(LANG, 'byedefault', 'الماوادعة هي الافتراضية.')
		set_text(LANG, 'newbye', 'حفظ وداعا! هو')
		set_text(LANG, 'bye1', 'وداعا ')
		set_text(LANG, 'bye2', ' شكرا على الزيارة.')
		set_text(LANG, 'welnew', 'نرحب بكم حفظ! هو')

		-- Spam.lua --
		set_text(LANG, 'reportUser', 'العضو')
		set_text(LANG, 'reportReason', 'تقرير السبب')
		set_text(LANG, 'reportGroup', 'المجموعة')
		set_text(LANG, 'reportMessage', 'رسالة')

		set_text(LANG, 'allowedSpamT', 'البريد المزعج الآن متاح في هذه المجموعة.')
		set_text(LANG, 'allowedSpamL', 'البريد المزعج الآن متاح في هذه المجموعة الخارقة.')
		set_text(LANG, 'notAllowedSpamT', 'البريد المزعج غير متاح في هذه المجموعة.')
		set_text(LANG, 'notAllowedSpamL', 'البريد المزعج غير متاح في هذه المجموعة الخارقة.')

		-- bot.lua --
		set_text(LANG, 'botOn', 'لقد عُدت. دعونا نفعل ذلك 😅')
		set_text(LANG, 'botOff', 'لا شيء نفعله هُنا 😔')

		-- settings.lua --
		set_text(LANG, 'user', 'العضو')
		set_text(LANG, 'isFlooding', 'يقوم بالتكرار')

		set_text(LANG, 'noStickersT', 'الملصقات غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noStickersL', 'الملصقات غير متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'stickersT', 'الملصقات الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'stickersL', 'الملصقات الآن متاحة في هذه المجموعة الخارقة.')
		
		set_text(LANG, 'noTgservicesT', 'خدمات التليگرام غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noTgservicesL', 'خدمات التليگرام غير متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'tgservicesT', 'خدمات التليگرام الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'tgservicesL', 'خدمات التليگرام الآن متاحة في هذه المجموعة الخارقة.')
		
		set_text(LANG, 'LinksT', 'الروابط الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'LinksL', 'الروابط الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noLinksT', 'الروابط غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noLinksL', 'الروابط غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'gifsT', 'الصور المتحركة الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'gifsL', 'الصور المتحركة الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noGifsT', 'الصور المتحركة غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noGifsL', 'الصور المتحركة غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'photosT', 'الصور الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'photosL', 'الصور الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noPhotosT', 'الصور غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noPhotosL', 'الصور غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'botsT', 'البوتات الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'botsL', 'البوتات الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noBotsT', 'البوتات غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noBotsL', 'البوتات غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'arabicT', 'العربية الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'arabicL', 'العربية الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noArabicT', 'العربية غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noArabicL', 'العربية غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'audiosT', 'الصوتيات الآن متاحة في هذه المجموعة.')
		set_text(LANG, 'audiosL', 'الصوتيات الآن متاحة في هذه المجموعة الخارقة.')
		set_text(LANG, 'noAudiosT', 'الصوتيات غير متاحة في هذه المجموعة.')
		set_text(LANG, 'noAudiosL', 'الصوتيات غير متاحة في هذه المجموعة الخارقة.')

		set_text(LANG, 'kickmeT', 'الطرد التلقائي الآن متاح في هذه المجموعة.')
		set_text(LANG, 'kickmeL', 'الطرد التلقائي الآن متاح في هذه المجموعة الخارقة.')
		set_text(LANG, 'noKickmeT', 'الطرد التلقائي غير متاح في هذه المجموعة.')
		set_text(LANG, 'noKickmeL', 'الطرد التلقائي غير متاح في هذه المجموعة الخارقة.')

		set_text(LANG, 'floodT', 'التكرار الآن متاح في هذه المجموعة.')
		set_text(LANG, 'floodL', 'التكرار الآن متاح في هذه المجموعة الخارقة.')
		set_text(LANG, 'noFloodT', 'التكرار غير متاح في هذه المجموعة.')
		set_text(LANG, 'noFloodL', 'التكرار غير متاح في هذه المجموعة الخارقة.')

		set_text(LANG, 'floodTime', 'تم ضبط اختيار وقت التكرار لـ ')
		set_text(LANG, 'floodMax', 'تم تعيين الحد الأقصى لرسائل التكرار لـ ')

		set_text(LANG, 'gSettings', 'اعدادات المجموعة')
		set_text(LANG, 'sSettings', 'اعدادات المجموعة الخارقة')

		set_text(LANG, 'allowed', 'سماح')
		set_text(LANG, 'noAllowed', 'لاتسمح')
		set_text(LANG, 'noSet', 'غير مضبوط')

		set_text(LANG, 'stickers', 'الملصقات')
		set_text(LANG, 'tgservices', 'خدمات التليگرام')
		set_text(LANG, 'links', 'الروابط')
		set_text(LANG, 'arabic', 'العربية')
		set_text(LANG, 'bots', 'البوتات')
		set_text(LANG, 'gifs', 'الصور المتحركة')
		set_text(LANG, 'photos', 'الصور')
		set_text(LANG, 'audios', 'الصوتيات')
		set_text(LANG, 'kickme', 'اطردني')
		set_text(LANG, 'spam', 'البريد المزعج')
		set_text(LANG, 'gName', 'اسم المجموعة')
		set_text(LANG, 'flood', 'التكرار')
		set_text(LANG, 'language', 'اللغة')
		set_text(LANG, 'mFlood', 'الحد الأقصى للتكرار')
		set_text(LANG, 'tFlood', 'وقت التكرار')
		set_text(LANG, 'setphoto', 'وضع صورة')
		
		set_text(LANG, 'photoSaved', 'تم حفظ الصورة!')
		set_text(LANG, 'photoFailed', 'فشل, الرجاء المحاولة مجدداً!')
		set_text(LANG, 'setPhotoAborted', 'توقفت عملية وضع صورة...')
		set_text(LANG, 'sendPhoto', 'رجاءً, ارسل الصورة')

		set_text(LANG, 'chatSetphoto', 'الآن يمكنك وضع صورة في هذه المجموعة.')
		set_text(LANG, 'channelSetphoto', 'الآن يمكنك وضع صورة في هذه المجموعة الخارقة.')
		set_text(LANG, 'notChatSetphoto', 'الآن لايمكنك وضع صورة في هذه المجموعة.')
		set_text(LANG, 'notChannelSetphoto', 'الآن لايمكنك وضع صورة في هذه المجموعة الخارقة.')
		set_text(LANG, 'setPhotoError', 'رجاءً, قم بتفعيل اعدادات وضع الصورة.')

		set_text(LANG, 'linkSaved', 'تم حفظ الرابط الجديد.')
		set_text(LANG, 'groupLink', 'رابط المجموعة')
		set_text(LANG, 'sGroupLink', 'رابط المجموعة الخارقة')
		set_text(LANG, 'noLinkSet', 'لم يتم وضع رابط, رجاءً ضع رابط بواسطة #setlink [الرابط].')

		set_text(LANG, 'chatRename', 'الآن يمكنك إعادة تسمية المجموعة.')
		set_text(LANG, 'channelRename', 'الآن يمكنك إعادة تسمية المجموعة الخارقة.')
		set_text(LANG, 'notChatRename', 'الآن لايمكنك إعادة تسمية المجموعة.')
		set_text(LANG, 'notChannelRename', 'الآن لايمكنك إعادة تسمية المجموعة الخارقة.')

		set_text(LANG, 'lockMembersT', 'تم قفل عدد اعضاء المجموعة.')
		set_text(LANG, 'lockMembersL', 'تم قفل عدد اعضاء المجموعة الخارقة.')

		set_text(LANG, 'notLockMembersT', 'الآن تم فتح عدد اعضاء المجموعة.')
		set_text(LANG, 'notLockMembersL', 'الآن تم فتح عدد اعضاء المجموعة الخارقة.')

		set_text(LANG, 'langUpdated', 'تم تحديث لغتك لـ: ')

		set_text(LANG, 'chatUpgrade', 'تم ترقية المجموعة  بنجاح.')
		set_text(LANG, 'notInChann', 'لا تستطيع عمل ذلك في المجموعة الخارقة.')

		set_text(LANG, 'chatUpgrade', 'تم ترقية المجموعة بنجاح.')
		set_text(LANG, 'notInChann', 'لا تستطيع عمل ذلك في المجموعة الخارقة.')
		set_text(LANG, 'desChanged', 'تم تغيير وصف المجموعة الخارقة.')
		set_text(LANG, 'desOnlyChannels', 'تستطيع تغيير الوصف فقط في المجموعات الخارقة.')

		set_text(LANG, 'muteAll', 'تم كتم المجموعة الآن.')
		set_text(LANG, 'unmuteAll', 'تم الغاء كتم المجموعة.')
		set_text(LANG, 'muteAllX:1', 'تم كتم المجموعة لـ')
		set_text(LANG, 'muteAllX:2', 'ثواني.')

		set_text(LANG, 'createGroup:1', 'تم صنعها')
		set_text(LANG, 'createGroup:2', 'المجموعة.')
		set_text(LANG, 'newGroupWelcome', 'مرحباً بك في مجموعتك الجديدة.')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'الحسابات المحظورة عام.')

		-- giverank.lua --
		set_text(LANG, 'alreadyAdmin', 'هذا العضو هو بالفعل مشرف.')
		set_text(LANG, 'alreadyMod', 'هذا العضو هو بالفعل مسؤول.')

		set_text(LANG, 'newAdmin', 'المشرف الجديد')
		set_text(LANG, 'newMod', 'المسؤول الجديد')
		set_text(LANG, 'nowUser', 'هو الآن عضو.')

		set_text(LANG, 'modList', 'قائمة المسؤولين')
		set_text(LANG, 'adminList', 'قائمة المشرفين')
		set_text(LANG, 'modEmpty', 'قائمة المسؤولين فارغة في هذه المجموعة.')
		set_text(LANG, 'adminEmpty', 'قائمة المشرفين فارغة.')

		-- id.lua --
		set_text(LANG, 'user', 'العضو')
		set_text(LANG, 'supergroupName', 'اسم المجموعة الخارقة')
		set_text(LANG, 'chatName', 'اسم المجموعة')
		set_text(LANG, 'supergroup', 'مجموعة خارقة')
		set_text(LANG, 'chat', 'المجموعة')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'العضو')
		set_text(LANG, 'userUnmuted:2', 'تم الغاء كتمه.')

		set_text(LANG, 'userMuted:1', 'العضو')
		set_text(LANG, 'userMuted:2', 'تم كتمه.')

		set_text(LANG, 'kickUser:1', 'العضو')
		set_text(LANG, 'kickUser:2', 'تم طرده.')

		set_text(LANG, 'banUser:1', 'العضو')
		set_text(LANG, 'banUser:2', 'تم حظره.')

		set_text(LANG, 'unbanUser:1', 'العضو')
		set_text(LANG, 'unbanUser:2', 'تم الغاء حظره.')

		set_text(LANG, 'gbanUser:1', 'العضو')
		set_text(LANG, 'gbanUser:2', 'تم حظره عام.')

		set_text(LANG, 'ungbanUser:1', 'العضو')
		set_text(LANG, 'ungbanUser:2', 'تم الغاء حظره العام.')

		set_text(LANG, 'addUser:1', 'العضو')
		set_text(LANG, 'addUser:2', 'اضيف للمجموعة.')
		set_text(LANG, 'addUser:3', 'اضيف للمجموعة الخارقة.')

		set_text(LANG, 'kickmeBye', 'وداعاً.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'الاضافات')
		set_text(LANG, 'installedPlugins', 'الاضافات المثبته.')
		set_text(LANG, 'pEnabled', 'مفعلة.')
		set_text(LANG, 'pDisabled', 'معطلة.')

		set_text(LANG, 'isEnabled:1', 'الاضافة')
		set_text(LANG, 'isEnabled:2', 'تم تفعيلها.')

		set_text(LANG, 'notExist:1', 'الاضافة')
		set_text(LANG, 'notExist:2', 'غير موجودة.')

		set_text(LANG, 'notEnabled:1', 'الاضافة')
		set_text(LANG, 'notEnabled:2', 'غير مفعلة.')

		set_text(LANG, 'pNotExists', 'الاضافة غير موجودة.')

		set_text(LANG, 'pDisChat:1', 'الاضافة')
		set_text(LANG, 'pDisChat:2', 'تم تعطيلها في هذه المجموعة.')

		set_text(LANG, 'anyDisPlugin', 'لاتوجد أي اضافات معطلة.')
		set_text(LANG, 'anyDisPluginChat', 'لاتوجد أي اضافات معطلة لهذه المجموعة.')
		set_text(LANG, 'notDisabled', 'هذه الاضافة غير معطلة')

		set_text(LANG, 'enabledAgain:1', 'الاضافة')
		set_text(LANG, 'enabledAgain:2', 'تم تفعيلها مرة اخرى')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'الأوامر')
		set_text(LANG, 'errorNoPlug', 'الاضافة غير موجودة أو لم يتم استخدامها.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'تم تحديث قوانين المجموعة.')
		set_text(LANG, 'remRules', 'تم ازالة قوانين المجموعة.')

		------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: تفعيل البوت')
		set_text(LANG, 'bot:2', '#bot off: تعطيل البوت')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: الأوامر لكل اضافة')
		set_text(LANG, 'commands:2', '#commands [plugin]: الأوامر لهذه الاضافة')

	-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: لتثبيت قائمه المحظورين عام في بوت اخر بأمر واحد')
		set_text(LANG, 'export_gban:2', '#gbans list: ارشيف بقائمة من المحظورين عام')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: اضافة قائمة المحظورين لبوتك')
	
	-- welcome.lua --
        set_text(LANG, 'welcome:0', 6)
        set_text(LANG, 'welcome:1', '#setwelcome [text for welcome]. يمكنك جعل رسالة ترحيب مخصصة لهذه المجموعة')
        set_text(LANG, 'welcome:2', '#setbye [text for farewell]. يمكنك جعل رسالة توديع مخصصة لهذه المجموعة')
        set_text(LANG, 'welcome:3', '#getwelcome - إرجاع الترحيب الحالي في هذه المجموعة')
        set_text(LANG, 'welcome:4', '#getbye - إرجاع التوديع الحالي في هذه المجموعة')
        set_text(LANG, 'welcome:5', '#welcome on/off - تفعيل/الغاء تفعيل الترحيب في المجموعة')
        set_text(LANG, 'welcome:6', '#bye on/off - تفعيل/الغاء تفعيل التوديع في المجموعة')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): اضافة مشرف بالرد')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: اضافة مشرف بواسطة الايدي/المعرف')
		set_text(LANG, 'giverank:3', '#rank mod (reply): اضافة مسؤول بالرد')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: اضافة مسؤول بواسطة الايدي/المعرف')
		set_text(LANG, 'giverank:5', '#rank guest (reply): ازالة مشرف بالرد')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: ازالة مشرف بواسطة الايدي/المعرف')
		set_text(LANG, 'giverank:7', '#admins: قائمة بجميع المشرفين')
		set_text(LANG, 'giverank:8', '#mods: قائمة بجميع المسؤولين')
		set_text(LANG, 'giverank:9', '#members: قائمة بجميع الأعضاء')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: اظهار ايدي الشخص والمجموعة')
		set_text(LANG, 'id:2', '#ids chat: اظهار ايدي الأعضاء')
		set_text(LANG, 'id:3', '#ids channel: اظهار ايدي اعضاء المجموعة الخارقة')
		set_text(LANG, 'id:4', '#id <user_name>: اظهار الايدي للمعرف')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: اظهار معرف الشخص')
		set_text(LANG, 'id:6', '#whois (reply): اظهار الايدي بالرد')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: اضافة عضو بالرد.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: اضافة عضو بالمعرف او الايدي')
		set_text(LANG, 'moderation:3', '#kick: طرد بالرد')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: طرد بالمعرف او الايدي')
		set_text(LANG, 'moderation:5', '#kickme: طرد نفسك')
		set_text(LANG, 'moderation:6', '#ban: حظر بالرد')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: حظر بالمعرف او الايدي')
		set_text(LANG, 'moderation:8', '#unban: رفع الحظر بالرد')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: رفع الحظر بالمعرف او الايدي')
		set_text(LANG, 'moderation:10', '#gban: حظر عام بالرد')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: حظر عام بالمعرف او الايدي')
		set_text(LANG, 'moderation:12', '#ungban: رفع الحظرالعام بالرد')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: رفع الحظر العام بالرد او المعرف')
		set_text(LANG, 'moderation:14', '#mute: كتم عضو بالرد')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: كتم بالمعرف او الايدي')
		set_text(LANG, 'moderation:16', '#unmute: رفع الكتم بالرد')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: رفع الكتم بالمعرف او الايدي')
		set_text(LANG, 'moderation:18', '#rem: مسح رسالة بالرد')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 19)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: منع الملصقات')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: منع الروابط')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disable: منع العربية')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable:منع البوتات')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: منع الصور المتحركة')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: منع الصور')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: منع الصوتيات')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: منع الطرد التقائي')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: منع البريد المزعج')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: منع وضع صورة')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: منع وضع اسم')
	    set_text(LANG, 'settings:12', '#settings lockmember enable/disable: منع قفل الاعضاء')
	    set_text(LANG, 'settings:13', '#settings floodtime <secs>: تعيين وقت التكرار')
	    set_text(LANG, 'settings:14', '#settings maxflood <msgs>: تعيين الحد الاقصى في وقت التكرار')
	    set_text(LANG, 'settings:15', '#setname <group title>: تغيير اسم المجموعة.')
	    set_text(LANG, 'settings:16', '#setphoto <then send photo>: تغيير صورة المجموعة')
	    set_text(LANG, 'settings:17', '#lang <language (en, es...)>: تغيير لغة البوت')
	    set_text(LANG, 'settings:18', '#setlink <link>: حفظ الرابط للمجموعة')
	    set_text(LANG, 'settings:19', '#link: الحصول على رابط المجموعة')
	    set_text(LANG, 'settings:20', '#settings tgservices enable/disable: مسح الرسائل عند دخول عضو جديد.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: اظهار لائحة جميع الاضافات')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: تفعيل/تعطيل الاضافة المحددة')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: تفعيل/تعطيل الاضافه المحددة فقط في المجموعات')
		set_text(LANG, 'plugins:4', '#plugins reload: اعادة تحميل جميع الاضافات')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: اظهار اصدار البوت')

		-- rules.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: اظهار قوانين المجموعة')

		if matches[1] == 'install' then
			return 'ℹ  تم تنصيب اللغة العربية بنجاح'
		elseif matches[1] == 'update' then
			return 'ℹ️ تم تحديث اللغة العربية بنجاح'
		end
	else
		return "🚫 هذه الاضافة تتطلب مطور"
	end
end

return {
	patterns = {
		'[!/#](install) (arabic_lang)$',
		'[!/#](update) (arabic_lang)$'
	},
	run = run
}
