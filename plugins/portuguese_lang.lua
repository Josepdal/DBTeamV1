--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--     Support: @iicc1, @serx666 & @Skneos      --
--                                              --
--   Translated by: @TiagoDanin & @Wesley_Henr   --
--                                              --
--------------------------------------------------

local LANG = 'pt'

local function run(msg, matches)
	if permissions(msg.from.id, msg.to.id, "lang_install") then

		-------------------------
		-- Translation version --
		-------------------------
		set_text(LANG, 'version', '0.1')
		set_text(LANG, 'versionExtended', 'Tradução versão 0.1')

		-------------
		-- Plugins --
		-------------

		-- global plugins --
		set_text(LANG, 'require_sudo', 'Este plugin requer privilégios sudo.')
		set_text(LANG, 'require_admin', 'Este plugin requer privilégios admin ou superior')
		set_text(LANG, 'require_mod', 'Este plugin requer privilégios mod ou superior')

		-- Spam.lua --
		set_text(LANG, 'reportUser', 'USUÁRIO')
		set_text(LANG, 'reportReason', 'Razão do reporte')
		set_text(LANG, 'reportGroup', 'Grupo')
		set_text(LANG, 'reportMessage', 'Mensagem')

		set_text(LANG, 'allowedSpamT', 'Spam é permitido neste grupo')
		set_text(LANG, 'allowedSpamL', 'Spam é permitido neste supergrupo')
		set_text(LANG, 'notAllowedSpamT', 'Não é permitido spam neste grupo')
		set_text(LANG, 'notAllowedSpamL', 'Não é permitido spam neste supergrupo')

		-- bot.lua --
		set_text(LANG, 'botOn', 'Estou de volta. Aqui vamos nós')
		set_text(LANG, 'botOff', 'Nada para fazer aqui')

		-- settings.lua --
		set_text(LANG, 'user', 'O usuário')
		set_text(LANG, 'isFlooding', 'está floodando.')

		set_text(LANG, 'stickersT', 'Stickers são permitidos neste grupo.')
		set_text(LANG, 'stickersL', 'Stickers são permitidos neste supergrupo.')
		set_text(LANG, 'noStickersT', 'Stickers não são permitidos neste grupo.')
		set_text(LANG, 'noStickersL', 'Stickers não são permitidos neste supergrupo.')

		set_text(LANG, 'gifsT', 'Gifs são permitidos neste grupo.')
		set_text(LANG, 'gifsL', 'Gifs são permitidos neste supergrupo.')
		set_text(LANG, 'noGifsT', 'Gifs não são permitidos neste grupo.')
		set_text(LANG, 'noGifsL', 'Gifs não são permitidos neste supergrupo.')

		set_text(LANG, 'photosT', 'Fotos são permitidas neste grupo.')
		set_text(LANG, 'photosL', 'Fotos são permitidas neste supergrupo.')
		set_text(LANG, 'noPhotosT', 'Fotos não são permitidas neste grupo.')
		set_text(LANG, 'noPhotosL', 'Fotos não são permitidas neste supergrupo.')

		set_text(LANG, 'arabicT', 'Caracteres especiais árabes são permitidos neste grupo.')
		set_text(LANG, 'arabicL', 'Caracteres especiais árabes são permitidos neste supergrupo.')
		set_text(LANG, 'noArabicT', 'Caracteres especiais árabes não são permitidos neste grupo.')
		set_text(LANG, 'noArabicL', 'Caracteres especiais árabes não são permitidos neste supergrupo.')

		set_text(LANG, 'audiosT', 'Áudios são permitidos neste grupo.')
		set_text(LANG, 'audiosL', 'Áudios são permitidos neste supergrupo.')
		set_text(LANG, 'noAudiosT', 'Áudios não são permitidos neste grupo.')
		set_text(LANG, 'noAudiosL', 'Áudios não são permitidos neste supergrupo.')

		set_text(LANG, 'kickmeT', 'Autokick permitido neste grupo.')
		set_text(LANG, 'kickmeL', 'Autokick permitido neste supergrupo.')
		set_text(LANG, 'noKickmeT', 'Autokick não é permitido neste grupo.')
		set_text(LANG, 'noKickmeL', 'Autokick não é permitido neste supergrupo.')

		set_text(LANG, 'floodT', 'Flood permitido neste grupo.')
		set_text(LANG, 'floodL', 'Flood permitido neste supergrupo.')
		set_text(LANG, 'noFloodT', 'Não é permitido flood neste grupo.')
		set_text(LANG, 'noFloodL', 'Não é permitido flood neste supergrupo.')

		set_text(LANG, 'floodTime', 'Tempo máximo de flood estabelecido para ')
		set_text(LANG, 'floodMax', 'Número máximo de mensagens flood estabelecido para ')

		set_text(LANG, 'gSettings', 'Configurações do grupo')
		set_text(LANG, 'sSettings', 'Configurações do supergrupo')

		set_text(LANG, 'allowed', 'permitido')
		set_text(LANG, 'noAllowed', 'não permitido')
		set_text(LANG, 'noSet', 'não estabelecido')

		set_text(LANG, 'stickers', 'Stickers')
		set_text(LANG, 'links', 'Links')
		set_text(LANG, 'arabic', 'Árabe')
		set_text(LANG, 'bots', 'Bots')
		set_text(LANG, 'gifs', 'Gifs')
		set_text(LANG, 'photos', 'Fotos')
		set_text(LANG, 'audios', 'Áudios')
		set_text(LANG, 'kickme', 'Autokick')
		set_text(LANG, 'spam', 'Spam')
		set_text(LANG, 'gName', 'Nome do grupo')
		set_text(LANG, 'flood', 'Flood')
		set_text(LANG, 'language', 'Idioma')
		set_text(LANG, 'mFlood', 'Limite de flood')
		set_text(LANG, 'tFlood', 'Tempo de flood')
		set_text(LANG, 'setphoto', 'Definir foto')

		set_text(LANG, 'photoSaved', 'Foto salva!')
		set_text(LANG, 'photoFailed', 'Erro, tente novamente!')
		set_text(LANG, 'setPhotoAborted', 'Parando processo de definir a foto...')
		set_text(LANG, 'sendPhoto', 'Por favor, envie uma foto')

		set_text(LANG, 'linkSaved', 'Novo Link salvo')
		set_text(LANG, 'groupLink', 'Link do grupo')
		set_text(LANG, 'sGroupLink', 'Link do supergrupo')
		set_text(LANG, 'noLinkSet', 'Não há nenhum link estabelecido. Por favor crie um novo com #setlink [Link].')

		set_text(LANG, 'chatRename', 'Agora você pode renomear o grupo.')
		set_text(LANG, 'channelRename', 'Agora você pode renomear o supergrupo.')
		set_text(LANG, 'notChatRename', 'Agora você não pode renomear o grupo.')
		set_text(LANG, 'notChannelRename', 'Agora você não pode renomear o supergrupo.')

		set_text(LANG, 'lockMembersT', 'O Número de membros do grupo foi bloqueado.')
		set_text(LANG, 'lockMembersL', 'O Número de membros do supergrupo foi bloqueado.')

		set_text(LANG, 'notLockMembersT', 'Número de membros do grupo foi desbloqueado.')
		set_text(LANG, 'notLockMembersL', 'Número de membros do supergrupo foi desbloqueado.')

		set_text(LANG, 'langUpdated', 'Seu idioma foi atualizado para: ')

		-- export_gban.lua --
		set_text(LANG, 'accountsGban', 'contas globalmente banidas.')

		-- giverank.lua --
	    set_text(LANG, 'alreadyAdmin', 'Este usuário é um admin.')
		set_text(LANG, 'alreadyMod', 'Este usuário é um mod.')

		set_text(LANG, 'newAdmin', 'Novo admin')
		set_text(LANG, 'newMod', 'Novo mod')
		set_text(LANG, 'nowUser', 'agora é um usuário.')

		set_text(LANG, 'modList', 'Lista de Mods')
		set_text(LANG, 'adminList', 'Lista de Admins')
		set_text(LANG, 'modEmpty', 'A lista mods está vazia neste grupo.')
		set_text(LANG, 'adminEmpty', 'A lista de admins está vazia.')

		-- id.lua --
		set_text(LANG, 'user', 'Usuário')
		set_text(LANG, 'supergroupName', 'Nome do SuperGrupo')
		set_text(LANG, 'chatName', 'Nome do Grupo')
		set_text(LANG, 'supergroup', 'SuperGrupo')
		set_text(LANG, 'chat', 'Chat')

		-- moderation.lua --
		set_text(LANG, 'userUnmuted:1', 'Usuário')
		set_text(LANG, 'userUnmuted:2', 'desmudo.')

		set_text(LANG, 'userMuted:1', 'Usuário')
		set_text(LANG, 'userMuted:2', 'mudo.')

		set_text(LANG, 'kickUser:1', 'Usuário')
		set_text(LANG, 'kickUser:2', 'expulso.')

		set_text(LANG, 'banUser:1', 'Usuário')
		set_text(LANG, 'banUser:2', 'banido.')

		set_text(LANG, 'unbanUser:1', 'Usuário')
		set_text(LANG, 'unbanUser:2', 'desbanido.')

		set_text(LANG, 'gbanUser:1', 'Usuário')
		set_text(LANG, 'gbanUser:2', 'globalmente banido.')

		set_text(LANG, 'ungbanUser:1', 'Usuário')
		set_text(LANG, 'ungbanUser:2', 'desbanido globalmente.')

		set_text(LANG, 'addUser:1', 'Usuário')
		set_text(LANG, 'addUser:2', 'adicionado ao grupo.')
		set_text(LANG, 'addUser:3', 'adicionado ao supergrupo.')

		set_text(LANG, 'kickmeBye', 'tchau.')

		-- plugins.lua --
		set_text(LANG, 'plugins', 'Plugins')
		set_text(LANG, 'installedPlugins', 'plugins instalados.')
		set_text(LANG, 'pEnabled', 'ativados.')
		set_text(LANG, 'pDisabled', 'desativados.')

		set_text(LANG, 'isEnabled:1', 'Plugin')
		set_text(LANG, 'isEnabled:2', 'está ativado.')

		set_text(LANG, 'notExist:1', 'Plugin')
		set_text(LANG, 'notExist:2', 'não existe.')

		set_text(LANG, 'notEnabled:1', 'Plugin')
		set_text(LANG, 'notEnabled:2', 'não ativado.')

		set_text(LANG, 'pNotExists', 'Não existe esse plugin.')

		set_text(LANG, 'pDisChat:1', 'Plugin')
		set_text(LANG, 'pDisChat:2', 'desativado neste grupo.')

		set_text(LANG, 'anyDisPlugin', 'Não há plugins desativados.')
		set_text(LANG, 'anyDisPluginChat', 'Não há plugins desativado neste grupo.')
		set_text(LANG, 'notDisabled', 'Este plugin não está desativado')

		set_text(LANG, 'enabledAgain:1', 'Plugin')
		set_text(LANG, 'enabledAgain:2', 'está ativado denovo')

		-- commands.lua --
		set_text(LANG, 'commandsT', 'Comandos')
		set_text(LANG, 'errorNoPlug', 'Este plugin não existe ou não está em uso.')

		-- rules.lua --
		set_text(LANG, 'setRules', 'Chat rules have been updated.')
		set_text(LANG, 'remRules', 'Chat rules have been removed.')

    	------------
		-- Usages --
		------------

		-- bot.lua --
		set_text(LANG, 'bot:0', 2)
		set_text(LANG, 'bot:1', '#bot on: ativa o bot no grupo atual.')
		set_text(LANG, 'bot:2', '#bot off: desativa o bot no grupo atual.')

		-- commands.lua --
		set_text(LANG, 'commands:0', 2)
		set_text(LANG, 'commands:1', '#commands: Mostrar todos os comandos de cada plugin.')
		set_text(LANG, 'commands:2', '#commands [plugin]: Comandos para este plugin.')

		-- export_gban.lua --
		set_text(LANG, 'export_gban:0', 2)
		set_text(LANG, 'export_gban:1', '#gbans installer: Retorna um arquivo instalador lua para compartilhar gbans e adicionar outro bot com um único comando.')
		set_text(LANG, 'export_gban:2', '#gbans list: Retorna uma lista de arquivos gbans.')

		-- gban_installer.lua --
		set_text(LANG, 'gban_installer:0', 1)
		set_text(LANG, 'gban_installer:1', '#install gbans: acrescenta uma lista de gbans em seu redis de banco de dados.')

		-- giverank.lua --
		set_text(LANG, 'giverank:0', 9)
		set_text(LANG, 'giverank:1', '#rank admin (reply): adicionar admin respondendo.')
		set_text(LANG, 'giverank:2', '#rank admin <user_id>/<user_name>: adicionar admin pelo ID/Nome de Usuário.')
		set_text(LANG, 'giverank:3', '#rank mod (reply): adicionar mod respondendo.')
		set_text(LANG, 'giverank:4', '#rank mod <user_id>/<user_name>: adicionar mod pelo ID/Nome de Usuário.')
		set_text(LANG, 'giverank:5', '#rank guest (reply): remover mod/admin respondendo.')
		set_text(LANG, 'giverank:6', '#rank guest <user_id>/<user_name>: remover mod/admin pelo ID/Nome de Usuário.')
		set_text(LANG, 'giverank:7', '#admins: lista de todos os admins.')
		set_text(LANG, 'giverank:8', '#mods: lista de todos os mods.')
		set_text(LANG, 'giverank:9', '#members: lista de todos os membros do grupo.')

		-- id.lua --
		set_text(LANG, 'id:0', 6)
		set_text(LANG, 'id:1', '#id: retorna o seu ID e do grupo se você estiver em algum.')
		set_text(LANG, 'id:2', '#ids chat: retorna com as IDs dos membros atuais do grupo.')
		set_text(LANG, 'id:3', '#ids channel: retorna com as IDs dos membros atuais do supergrupo.')
		set_text(LANG, 'id:4', '#id <user_name>: Retornar o ID membro do nome de usuário do bate-papo atual.')
		set_text(LANG, 'id:5', '#whois <user_id>/<user_name>: Retorna o nome de usuário.')
		set_text(LANG, 'id:6', '#whois (reply): Retorna o ID do usuário.')

		-- moderation.lua --
		set_text(LANG, 'moderation:0', 18)
		set_text(LANG, 'moderation:1', '#add: respondendo a uma mensagem, adicionar esse usuário ao grupo ou supergrupo atual.')
		set_text(LANG, 'moderation:2', '#add <id>/<username>: adiciona  um usuário, por ID/, ao grupo atual ou supergrupo.')
		set_text(LANG, 'moderation:3', '#kick: respondendo a uma mensagem, removerá o usuário do grupo atual ou supergrupo.')
		set_text(LANG, 'moderation:4', '#kick <id>/<username>: remove o usuário, por sua ID/, do grupo ou supergrupo atual.')
		set_text(LANG, 'moderation:5', '#kickme: autosair.')
		set_text(LANG, 'moderation:6', '#ban: respondendo a uma mensagem, removerá e banir o usuário do grupo ou supergrupo atual.')
		set_text(LANG, 'moderation:7', '#ban <id>/<username>: remove o usuário, por seu ID/, e impede que ele volte a entrar no grupo ou supergrupo.')
		set_text(LANG, 'moderation:8', '#unban: respondendo a uma mensagem, desbane o usuário do grupo ou supergrupo.')
		set_text(LANG, 'moderation:9', '#unban <id>/<username>: desbane o usuário por sua ID/ do grupo ou supergrupo.')
		set_text(LANG, 'moderation:10', '#gban: respondendo a uma mensagem, o usuário será banido de todos os grupos e supergrupos.')
		set_text(LANG, 'moderation:11', '#gban <id>/<username>: remove e bane o usuário, por sua ID/, de todos os grupos ou supergrupos e impede que ele volte a entrar em todos os grupos ou supergrupos.')
		set_text(LANG, 'moderation:12', '#ungban: respondendo a um mensagem, desbane o usuário de todos os grupos ou supergrupos.')
		set_text(LANG, 'moderation:13', '#ungban <id>/<username>: desbane o usuário, por sua ID/, de todos os grupos ou supergrupos.')
		set_text(LANG, 'moderation:14', '#mute: respondendo a uma mensagem, silencia o usuário eliminando suas mensagens do supergrupo atual.')
		set_text(LANG, 'moderation:15', '#mute <id>/<username>: silencia o usuário, por sua ID/, eliminando sua mensagens no supergrupo atual.')
		set_text(LANG, 'moderation:16', '#unmute: respondendo a uma mensagem, retira o silencio do  usuário.')
		set_text(LANG, 'moderation:17', '#unmute <id>/<username>: remove o silênciodo do usuário por sua ID/ do supergrupo atual.')
		set_text(LANG, 'moderation:18', '#rem: respondendo a uma mensagem, essa mensagem será apagada.')

		-- settings.lua --
		set_text(LANG, 'settings:0', 19)
	  	set_text(LANG, 'settings:1', '#settings stickers enable/disable: Você pode enviar stickers quando ativo.')
	  	set_text(LANG, 'settings:2', '#settings links enable/disable: poderá mandar links quando estiver ativo.')
	  	set_text(LANG, 'settings:3', '#settings arabic enable/disable: poderá falar em árabe/persa quando estiver ativo.')
	  	set_text(LANG, 'settings:4', '#settings bots enable/disable: poderá adicionar bots ao grupo quando estiver ativo.')
	  	set_text(LANG, 'settings:5', '#settings gifs enable/disable: poderá mandar gifs quando estiver ativo.')
	  	set_text(LANG, 'settings:6', '#settings photos enable/disable: poderá mandar fotos quando estiver ativo.')
	  	set_text(LANG, 'settings:7', '#settings audios enable/disable: poderá mandar audios quando estiver ativo.')
	  	set_text(LANG, 'settings:8', '#settings kickme enable/disable: os usuários poderão autosair quando estiver ativo.')
	  	set_text(LANG, 'settings:9', '#settings spam enable/disable: poderá mandar spam quando estiver ativo.')
	  	set_text(LANG, 'settings:10', '#settings setphoto enable/disable: Se um usuário alterar a foto do grupo, o botão irá mudar a imagem salva quando ativo.')
	  	set_text(LANG, 'settings:11', '#settings setname enable/disable: se um usuário muda o nome do grupo, o bot irá mudar o nome salvo quando ativo.')
	  	set_text(LANG, 'settings:12', '#settings lockmember enable/disable: o bot irá expulsar todas as pessoas entre o grupo quando ativo.')
	  	set_text(LANG, 'settings:13', '#settings floodtime <secs>: Ele define o tempo de medição de flood.')
	  	set_text(LANG, 'settings:14', '#settings maxflood <secs>: define a mensagem máximo em um tempo de floodtempo devem ser considerados flood.')
	  	set_text(LANG, 'settings:15', '#setname <título del grupo>: o bot renomeia o nome do grupo.')
	  	set_text(LANG, 'settings:16', '#setphoto <después envía la foto>: o bot muda a foto do grupo.')
	  	set_text(LANG, 'settings:17', '#lang <language (en, es...)>: altera o idioma do bot.')
	  	set_text(LANG, 'settings:18', '#setlink <link>: gera link do grupo.')
	  	set_text(LANG, 'settings:19', '#link: mostra link do grupo.')

		-- plugins.lua --
		set_text(LANG, 'plugins:0', 4)
		set_text(LANG, 'plugins:1', '#plugins: mostra uma lista de todos os plugins.')
		set_text(LANG, 'plugins:2', '#plugins <enable>/<disable> [plugin]: ativa/desativa o plugin especificado.')
		set_text(LANG, 'plugins:3', '#plugins <enable>/<disable> [plugin] chat: ativa/desativa o plugin especificado, apenas no actual grupo/supergrupo.')
		set_text(LANG, 'plugins:4', '#plugins reload: recarega todos os plugins.')

		-- version.lua --
		set_text(LANG, 'version:0', 1)
		set_text(LANG, 'version:1', '#version: mostra a versão do bot.')

		-- version.lua --
		set_text(LANG, 'rules:0', 1)
		set_text(LANG, 'rules:1', '#rules: mostra as regras do grupo.')

		if matches[1] == 'install' then
			return 'ℹ️ O idioma português foi instalado no seu banco de dados.'
		elseif matches[1] == 'update' then
			return 'ℹ️ O idioma português foi atualizado no seu banco de dados.'
		end
	else
		return "🚫 Este plugin requer permissões de sudo."
	end
end

return {
	patterns = {
		'#(install) (portuguese_lang)$',
		'#(update) (portuguese_lang)$'
	},
	run = run,
}
