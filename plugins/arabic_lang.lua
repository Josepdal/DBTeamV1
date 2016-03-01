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
--  Translated by Wathiq Al-Qajar { @Wathiqq }  --
--                                              --
--------------------------------------------------


local LANG = 'ar'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.1')
		set_text(LANG, 'versionExtended', 'إصدار الترجمة نسخة 0.1')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', '.يتطلب هذاالمساعده امتيازات مطور')
		set_text(LANG, 'require_admin', '.يتطلب هذاالمساعده امتيازات المسئول او اعلى')
		set_text(LANG, 'require_mod', '.يتطلب هذاالمساعده الامتيازات الادمن او اعلى')

		-- Spam.lua --
		set_text(LANG, 'reportUser', 'مستخدم')
		set_text(LANG, 'reportReason', 'تقرير السبب')
		set_text(LANG, 'reportGroup', 'كروب')
		set_text(LANG, 'reportMessage', 'رسالة')

		set_text(LANG, 'allowedSpamT', '.لا يسمح البريد المزعج في هذه الدردشة')
		set_text(LANG, 'allowedSpamL', '.لا يسمح البريد المزعج في هذاالسوبر كروب')
		set_text(LANG, 'notAllowedSpamT', '.لا يسمح البريد المزعج في هذه الدردشة')
		set_text(LANG, 'notAllowedSpamL', '.لا يسمح البريد المزعج في هذاالسوبر كروب')

		-- bot.lua --
		set_text(LANG, 'botOn', 'تم تشغيل البوت')
		set_text(LANG, 'botOff', 'تم اطفاء البوت')

		-- settings.lua --
		set_text(LANG, 'user', 'مستخدم')
		set_text(LANG, 'isFlooding', 'الفلود')

		set_text(LANG, 'noStickersT', '.لا يسمح للملصقات في هذه الدردشة')
		set_text(LANG, 'noStickersL', '.لا يسمح للملصقات في هذا السوبر كروب')
		set_text(LANG, 'stickersT', 'لا يسمح للملصقات في هذه الدردشة.')
		set_text(LANG, 'stickersL', '.لا يسمح للملصقات في هذا السوبر كروب')

		set_text(LANG, 'gifsT', '.لا يسمح بلصور المتحركة في هذه الدردشة')
		set_text(LANG, 'gifsL', '.لا يسمح بلصور المتحركة في هذا السوبر كروب')
		set_text(LANG, 'noGifsT', '.لا يسمح بلصور المتحركة في هذه الدردشة')
		set_text(LANG, 'noGifsL', '.لا يسمح بلصور المتحركة في هذا السوبر كروب')

		set_text(LANG, 'photosT', '.لا يسمح بلصور في هذه الدردشة')
		set_text(LANG, 'photosL', '.لا يسمح للصور في هذا السوبر كروب')
		set_text(LANG, 'noPhotosT', '.لا يسمح بلصور في هذه الدردشة')
		set_text(LANG, 'noPhotosL', '.لا يسمح للصور في هذا السوبر كروب')

		set_text(LANG, 'arabicT', '.لا يسمح تكلم العربية في هذه الدردشة')
		set_text(LANG, 'arabicL', '.لا يسمح تكلم العربية في هذا السوبر كروب')
		set_text(LANG, 'noArabicT', '.لا يسمح تكلم العربية في هذه الدردشة')
		set_text(LANG, 'noArabicL', '.لا يسمح تكلم العربية في هذا السوبر كروب')

		set_text(LANG, 'audiosT', 'ل.ا يسمح للصوتيات في هذه الدردشة')
		set_text(LANG, 'audiosL', '.لا يسمح للصوتيات في هذا اسوبر كروب')
		set_text(LANG, 'noAudiosT', '.لا يسمح للصوتيات في هذه الدردشة')
		set_text(LANG, 'noAudiosL', '.لا يسمح للصوتيات في هذا اسوبر كروب')

		set_text(LANG, 'kickmeT', 'Autokick is now allowed in this chat.')
		set_text(LANG, 'kickmeL', 'Autokick is now allowed in this supergroup.')
		set_text(LANG, 'noKickmeT', 'Autokick is not allowed in this chat.')
		set_text(LANG, 'noKickmeL', 'Autokick is not allowed in this supergroup.')

		set_text(LANG, 'floodT', 'الفلود مفعل في الكروب.')
		set_text(LANG, 'floodL', 'الفلود مفعل في السوبر كروب.')
		set_text(LANG, 'noFloodT', 'الفلود مفعل في الكروب.')
		set_text(LANG, 'noFloodL', 'الفلود مفعل في السوبر كروب.')

		set_text(LANG, 'floodTime', 'تم ضبط الاختيار وقت الفلود لـ ')
		set_text(LANG, 'floodMax', 'تم تعيين رسائل الفلود ماكس لـ ')

		set_text(LANG, 'gSettings', 'ضبط مجموعة')
		set_text(LANG, 'sSettings', 'ضبط سوبر كروب')

		set_text(LANG, 'allowed', 'سماح')
		set_text(LANG, 'noAllowed', 'لاتسمح')
		set_text(LANG, 'noSet', 'غير مضبوط')

		set_text(LANG, 'stickers', 'ملصقات')
		set_text(LANG, 'links', 'روابط')
		set_text(LANG, 'arabic', 'العربية')
		set_text(LANG, 'bots', 'البوتات')
		set_text(LANG, 'gifs', 'الصور التحركة')
		set_text(LANG, 'photos', 'الصور')
		set_text(LANG, 'audios', 'الصوتيات')
		set_text(LANG, 'kickme', 'طردي')
		set_text(LANG, 'spam', 'غير مرغوب فية')
		set_text(LANG, 'gName', 'اسم الكروب')
		set_text(LANG, 'flood', 'فلود')
		set_text(LANG, 'language', 'لغة')
		set_text(LANG, 'mFlood', 'فلود ماكس')
		set_text(LANG, 'tFlood', 'وقت الفلود')
		set_text(LANG, 'setphoto', 'تعيين صورة')

		set_text(LANG, 'photoSaved', 'تم حفض الصورة!')
		set_text(LANG, 'photoFailed', 'خطاء ,الرجاء اعادة المحاولة!')
		set_text(LANG, 'setPhotoAborted', 'وقف وضع عملية الصور...')
		set_text(LANG, 'sendPhoto', 'الرجاء,ارسالة الصورة هنا')

		set_text(LANG, 'linkSaved', 'تم حفض الرابط الجديد.')
		set_text(LANG, 'groupLink', 'رابط الكروب')
		set_text(LANG, 'sGroupLink', 'رابط السوبر كروب')
		set_text(LANG, 'noLinkSet', 'لم يتم وضع رابط الرجاء ضغط على #setlink مع الرابط')

		set_text(LANG, 'chatRename', 'الان يمكنك اعادة تسمية الكروب.')
		set_text(LANG, 'channelRename', 'الآن يمكنك إعادة تسمية القناة.')
		set_text(LANG, 'notChatRename', 'الآن لا يمكنك إعادة تسمية الكروب.')
		set_text(LANG, 'notChannelRename', 'الآن لا يمكن إعادة تسمية القناة.')

		set_text(LANG, 'lockMembersT', 'تم حظر عدد أعضاء هذه الدردشة.')
		set_text(LANG, 'lockMembersL', 'تم حظر عدد أعضاء هذه القناة.')

		set_text(LANG, 'notLockMembersT', 'عدد الأعضاء الآن لم يتم تأمين على هذه الكروب.')
		set_text(LANG, 'notLockMembersL', 'عدد الأعضاء الآن لم يتم تأمين على هذه القناة.')

		set_text(LANG, 'langUpdated', 'تم تحديث اللغة لـ: ')

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
		set_text(LANG, 'accountsGban', 'حسابات المحظورة عام.')

		-- giverank.lua --
		set_text(LANG, 'alreadyAdmin', 'هذا المستخدم هو بالفعل مشرف.')
		set_text(LANG, 'alreadyMod', 'هذا المستخدم هو بالفعل مسؤؤل.')

		set_text(LANG, 'newAdmin', 'المشرف الجديد')
		set_text(LANG, 'newMod', 'المسؤؤل الجديد')
		set_text(LANG, 'nowUser', 'هو الآن مستخدم.')

		set_text(LANG, 'modList', 'قائمة المسؤؤلون')
		set_text(LANG, 'adminList', 'قائمة المشرفون')
		set_text(LANG, 'modEmpty', 'قائمة المسؤؤلون فارغة في هاذه الكروب.')
		set_text(LANG, 'adminEmpty', 'قائمة المشرفون فارغة.')

		-- id.lua --
		set_text(LANG, 'user', 'مستخدم')
		set_text(LANG, 'supergroupName', 'اسم السوبر كروب')
		set_text(LANG, 'chatName', 'اسم الكروب')
		set_text(LANG, 'supergroup', 'سوبر كروب')
		set_text(LANG, 'chat', 'كروب')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'مستخدم')
		set_text(LANG, 'userUnmuted:2', 'الغاء التجاهل.')

		set_text(LANG, 'userMuted:1', 'مستخدم')
		set_text(LANG, 'userMuted:2', 'تجاهل.')

		set_text(LANG, 'kickUser:1', 'مستخدم')
		set_text(LANG, 'kickUser:2', 'طرد.')

		set_text(LANG, 'banUser:1', 'مستخدم')
		set_text(LANG, 'banUser:2', 'حظر.')

		set_text(LANG, 'unbanUser:1', 'مستخدم')
		set_text(LANG, 'unbanUser:2', 'غير محضور.')

		set_text(LANG, 'gbanUser:1', 'مستخدم')
		set_text(LANG, 'gbanUser:2', 'المحضور عام.')

		set_text(LANG, 'ungbanUser:1', 'مستخدم')
		set_text(LANG, 'ungbanUser:2', 'الغير محضور عام.')

		set_text(LANG, 'addUser:1', 'مستخدم')
		set_text(LANG, 'addUser:2', 'اضافة الى كروب.')
		set_text(LANG, 'addUser:3', 'اضافة الى القناة.')

		set_text(LANG, 'kickmeBye', 'وداعا.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'الإضافات')
		set_text(LANG, 'installedPlugins', 'تثبيت الاضافات.')
		set_text(LANG, 'pEnabled', 'تفعيل.')
		set_text(LANG, 'pDisabled', 'تعطيل.')

		set_text(LANG, 'isEnabled:1', 'الإضافات')
		set_text(LANG, 'isEnabled:2', 'يتم تفعيلها.')

		set_text(LANG, 'notExist:1', 'الاضافات')
		set_text(LANG, 'notExist:2', 'لا توجد.')

		set_text(LANG, 'notEnabled:1', 'الاضافات')
		set_text(LANG, 'notEnabled:2', 'غير مفعل.')

		set_text(LANG, 'pNotExists', 'الاضافة لا توجد.')

		set_text(LANG, 'pDisChat:1', 'الاضافات')
		set_text(LANG, 'pDisChat:2', 'تعطيل على هاذا الكروب.')

		set_text(LANG, 'anyDisPlugin', 'لا توجد أية الإضافات معطلة.')
		set_text(LANG, 'anyDisPluginChat', 'لا توجد أية الإضافات المعطلة لهذه الدردشة.')
		set_text(LANG, 'notDisabled', 'لا يتم تعطيل هذا الاضافات')

		set_text(LANG, 'enabledAgain:1', 'الاضافات')
		set_text(LANG, 'enabledAgain:2', 'يتم تفعيل مرة أخرى')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'الاوامر')
		set_text(LANG, 'errorNoPlug', 'الاضافات ليسة موجودة في الاستخدام.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Chat rules have been updated.')
		set_text(LANG, 'remRules', 'Chat rules have been removed.')

		------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: تمكين بوت في القناة الحالية.')
		set_text(LANG, 'bot:2', '#bot off: تعطيل بوت في القناة الحالية.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: عرض كل الأوامر لكل المساعد.')
		set_text(LANG, 'commands:2', '#commands [plugins]: أوامر لهذا البرنامج المساعد.')

		
		-- rules.lua --
 		set_text(LANG, 'setRules', 'تم تحديث قوانين الكروب.')
 		set_text(LANG, 'remRules', 'تم إزالة قوانين الكروب.')
		
		
		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: العودة المثبت ملف لوا لتبادل gbans وإضافة تلك في بوت آخر في أمر واحد فقط.')
		set_text(LANG, 'export_gban:2', '#gbans list: العودة أرشيف بقائمة من gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: إضافة قائمة مسودات في ديسيبل رديس الخاص بك.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): إضافة ادمن من قبل الرد.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: إضافة ادمن من قبل المستخدم ID/Username.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): اضافة مشرف من قبل الرد.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: اضافة مشرف من قبل المستخدم ID/Username.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): إزالة ادمن قبل الرد.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: إزالة ادمن من قبل المستخدمID/Username.')
		set_text(LANG, 'giverank:7', '#admins: قائمة بجميع الأعضاء المشرف.')
		set_text(LANG, 'giverank:8', '#mods: قائمة بجميع الأعضاء المشرفين.')
		set_text(LANG, 'giverank:9', '#members: قائمة بجميع الأعضاء قناة.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: اضهار الايدي.')
		set_text(LANG, 'id:2', '#ids chat: اضهار ايديات الاعضاء.')
		set_text(LANG, 'id:3', '#ids channel: اضهار ايديات الاعضاءفي القناة الحالية.')
		set_text(LANG, 'id:4', '#id <user_name>:اضهار ايدي عضو.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: اضهار اسم المستخدم.')
		set_text(LANG, 'id:6', '#whois (reply): اضهار ايدي المستخدم.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: الرد على رسالة، سيتم إضافة المستخدم إلى مجموعة الحالي / السوبركروب.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: يضيف المستخدم عن طريق لمعرف / اسم المستخدم إلى مجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:3', '#kick: الرد على رسالة، سيتم طرد المستخدم في المجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: سيتم طرد المستخدم من قبل في الهوية / اسم المستخدم في المجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:5', '#kickme: طرد نفسي من الكروب.')
		set_text(LANG, 'moderation:6', '#ban: الرد على رسالة، سيتم طرد المستخدم وحظرت في المجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: سيتم حظر المستخدم عن طريق لمعرف / اسم المستخدم في المجموعة الحالي / السوبر كروب، وأنها لن تكون قادرة على العودة.')
		set_text(LANG, 'moderation:8', '#unban: الرد على رسالة، سيتم إلغاء حظر المستخدم في المجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: سيتم إلغاء حظر المستخدم من قبل في الهوية / اسم المستخدم في المجموعة الحالي / السوبر كروب.')
		set_text(LANG, 'moderation:10', '#gban:الرد على رسالة، سيتم طرد المستخدم ومنعت من جميع الفئات / سوبر كروب.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: سيتم حظر المستخدم عن طريق لمعرف / اسم المستخدم من جميع الفئات / supergroups وأنها لن تكون قادرة على الدخول.')
		set_text(LANG, 'moderation:12', '#ungban: الرد على رسالة، سيتم إلغاء حظر المستخدم من جميع الفئات / supergroups.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: سيتم إلغاء حظر المستخدم من قبل في الهوية / اسم المستخدم من جميع الفئات / supergroups.')
		set_text(LANG, 'moderation:14', '#mute: الرد على رسالة، سيتم إسكات المستخدم في السوبر كروب الحالي، ومحو كل رسائلها.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: سيتم إسكات المستخدم عن طريق لمعرف / اسم المستخدم في السوبر كروب الحالي، ومحو كل رسائلها.')
		set_text(LANG, 'moderation:16', '#unmute: الرد على رسالة، سيتم فتح الصامت المستخدم في السوبر كروب.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: سيتم فتح الصامت المستخدم عن طريق لمعرف / اسم المستخدم في السوبر كروب')
		set_text(LANG, 'moderation:18', '#rem: الرد على رسالة، سيتم إزالة رسالة.')
		
		-- settings.lua --
	    set_text(LANG, 'settings:0', 19)
	    set_text(LANG, 'settings:1', '#settings stickers enable/disable: عندما مكن، سيتم مسح جميع ملصقات.')
	    set_text(LANG, 'settings:2', '#settings links enable/disable: عندما تمكين، سيتم مسح جميع الروابط.')
	    set_text(LANG, 'settings:3', '#settings arabic enable/disabl: عندما مكن، سيتم مسح جميع الرسائل مع العربية / الفارسية.')
	    set_text(LANG, 'settings:4', '#settings bots enable/disable: عندما مكن، إذا كان شخص ما يضيف بوت، فإنه سيطرد.')
	    set_text(LANG, 'settings:5', '#settings gifs enable/disable: عندما مكن، سيتم مسح جميع الصور المتحركة.')
	    set_text(LANG, 'settings:6', '#settings photos enable/disable: عندما مكن، سيتم مسح جميع الصور.')
	    set_text(LANG, 'settings:7', '#settings audios enable/disable: عندما مكن، سيتم مسح كافة الأصوات.')
	    set_text(LANG, 'settings:8', '#settings kickme enable/disable: عندما مكن، يمكن للناس أن تطرد نفسها.')
	    set_text(LANG, 'settings:9', '#settings spam enable/disable: عندما مكن، سيتم مسح جميع الروابط المزعجة.')
	    set_text(LANG, 'settings:10', '#settings setphoto enable/disable: عندما مكن، إذا كان المستخدم بتغيير صورة جماعية، فإن البوت يعود إلى الصورة المحفوظة.')
	    set_text(LANG, 'settings:11', '#settings setname enable/disable: عندما مكن، إذا تغير المستخدم اسم المجموعة، والبوت يعود إلى الاسم المحفوظ.')
	    set_text(LANG, 'settings:12', '#settings lockmember enable/disable: عندما مكن، فإن البوت يطرد جميع الناس أن يدخل إلى مجموعة.')
	    set_text(LANG, 'settings:13', '#settings floodtime <secs>: تعيين الوقت الذي لا يستخدم للتحقق الفلود.')
	    set_text(LANG, 'settings:14', '#settings maxflood <secs>: تعيين الحد الأقصى الرسائل في وقت الفلود اعتبار التكرار.')
	    set_text(LANG, 'settings:15', '#setname <group title>: والبوت تغيير عنوان المجموعة.')
	    set_text(LANG, 'settings:16', '#setphoto <then send photo>: والبوت تغيير صورة جماعية.')
	    set_text(LANG, 'settings:17', '#lang <language (en, es,ar...)>: فإنه يغير لغة بوت.')
	    set_text(LANG, 'settings:18', '#setlink <link>: يوفر رابط المجموعة.')
	    set_text(LANG, 'settings:19', '#link: للحصول على رابط للمجموعة.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: .اضهار لائحة  جميع الإضافات')
		set_text(LANG, 'plugins:2', '#plugins .<enable> / <disable> [plugins]: enable / disable الاضافات المحددة')
		set_text(LANG, 'plugins:3', '#plugins .<enable> / <disable> [plugins] الدردشة: enable / disable hghqhthj hglp]]m، فقط في مجموعة الحالي /السوبر كروب')
		set_text(LANG, 'plugins:4', '#plugins reload: .اعادة تحميل جميع الإضافات')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: .اظهار نسخة البوت')

		-- rules.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: .اضهار قوانين القناة')

		if matches[1] == 'install' then
			return 'ℹ️ .تم تركيب اللغة العربية بنجاح على بوت'
		elseif matches[1] == 'update' then
			return 'ℹ️ .تم تحديث اللغة العربية بنجاح على بوت'
		end
	else
		return ".🚫 هذا اوامر المساعده تتطلب المستخدم متميز (المطور)"
	end
end

return {
	patterns = {
		'#(install) (arabic_lang)$',
		'#(update) (arabic_lang)$'
	},
	run = run
}
