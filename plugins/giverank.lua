--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--         Support: @Skneos & @Thef7HD          --
--                                              --
--------------------------------------------------

local function index_function(user_id)
  for k,v in pairs(_config.admin_users) do
    if user_id == v[1] then
    	print(k)
      return k
    end
  end
  -- If not found
  return false
end

local function admin_by_username(cb_extra, success, result)
    local chat_type = cb_extra.chat_type
    local chat_id = cb_extra.chat_id
    local user_id = result.peer_id
    local user_name = result.username
    if is_admin(user_id) then
    	if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, 'This user is already admin', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, 'This user is already admin', ok_cb, false)
	    end
	else
	    table.insert(_config.admin_users, {tonumber(user_id), user_name})
		print(user_id..' added to _config table')
		save_config()
	    if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, '🆕 New admin @'..user_name..' ('..user_id..')', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, '🆕 New admin @'..user_name..' ('..user_id..')', ok_cb, false)
	    end
	end
end

local function admin_by_username(cb_extra, success, result)
    local chat_type = cb_extra.chat_type
    local chat_id = cb_extra.chat_id
    local user_id = result.peer_id
    local user_name = result.username
    local hash = 'mod:'..chat_id..':'..user_id
    if redis:get(hash) then
    	if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, 'This user is already admin', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, 'This user is already admin', ok_cb, false)
	    end
	else
	    redis:set(hash, true)
	    if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, '🆕 New mod @'..user_name..' ('..user_id..')', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, '🆕 New mod @'..user_name..' ('..user_id..')', ok_cb, false)
	    end
	end
end

local function guest_by_username(cb_extra, success, result)
    local chat_type = cb_extra.chat_type
    local chat_id = cb_extra.chat_id
    local user_id = result.peer_id
    local user_name = result.username
	local nameid = index_function(user_id)
	if is_admin(user_id) then
		table.remove(_config.admin_users, nameid)
		print(user_id..' added to _config table')
		save_config()
	end
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, '@'..user_name..' ('..user_id..') is now an user', ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, '@'..user_name..' ('..user_id..') is now an user', ok_cb, false)
    end
end

local function set_admin(cb_extra, success, result)
	local chat_id = cb_extra.chat_id
    local user_id = cb_extra.user_id
    local user_name = result.username
    local chat_type = cb_extra.chat_type
	if is_admin(tonumber(user_id)) then
    	if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, 'This user is already admin', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, 'This user is already admin', ok_cb, false)
	    end
	else
    	table.insert(_config.admin_users, {tonumber(user_id), user_name})
		print(user_id..' added to _config table')
		save_config()
	    if cb_extra.chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, '🆕 New admin @'..user_name..' ('..user_id..')', ok_cb, false)
	    elseif cb_extra.chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, '🆕 New admin @'..user_name..' ('..user_id..')', ok_cb, false)
	    end
	end
end

local function set_mod(cb_extra, success, result)
	local chat_id = cb_extra.chat_id
    local user_id = cb_extra.user_id
    local user_name = result.username
    local chat_type = cb_extra.chat_type
    local hash = 'mod:'..chat_id..':'..user_id
	if redis:get(hash) then
    	if chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, 'This user is already mod in this chat', ok_cb, false)
	    elseif chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, 'This user is already mod in this chat', ok_cb, false)
	    end
	else
    	redis:set(hash, true)
	    if cb_extra.chat_type == 'chat' then
	        send_msg('chat#id'..chat_id, '🆕 New mod @'..user_name..' ('..user_id..')', ok_cb, false)
	    elseif cb_extra.chat_type == 'channel' then
	        send_msg('channel#id'..chat_id, '🆕 New mod @'..user_name..' ('..user_id..')', ok_cb, false)
	    end
	end
end

local function set_guest(cb_extra, success, result)
	local chat_id = cb_extra.chat_id
    local user_id = cb_extra.user_id
    local user_name = result.username
    local chat_type = cb_extra.chat_type
    local nameid = index_function(tonumber(user_id))
    local hash = 'mod:'..chat_id..':'..user_id
    if redis:get(hash) then
    	redis:del(hash)
    end
    if is_admin(user_id) then
		table.remove(_config.admin_users, nameid)
		print(user_id..' added to _config table')
		save_config()
	end
    if cb_extra.chat_type == 'chat' then
        send_msg('chat#id'..chat_id, '@'..user_name..' ('..user_id..') is now an user', ok_cb, false)
    elseif cb_extra.chat_type == 'channel' then
        send_msg('channel#id'..chat_id, '@'..user_name..' ('..user_id..') is now an user', ok_cb, false)
    end
end

local function admin_by_reply(extra, success, result)
    local result = backward_msg_format(result)
    local msg = result
    local chat_id = msg.to.id
    local user_id = msg.from.id
    local chat_type = msg.to.type
    user_info('user#id'..user_id, set_admin, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
end

local function mod_by_reply(extra, success, result)
    local result = backward_msg_format(result)
    local msg = result
    local chat_id = msg.to.id
    local user_id = msg.from.id
    local chat_type = msg.to.type
    user_info('user#id'..user_id, set_mod, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
end

local function guest_by_reply(extra, success, result)
    local result = backward_msg_format(result)
    local msg = result
    local chat_id = msg.to.id
    local user_id = msg.from.id
    local chat_type = msg.to.type
    user_info('user#id'..user_id, set_guest, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
end

local function members_chat(cb_extra, success, result)
	local chat_id = cb_extra.chat_id
	local text = ""
	for k,v in pairs(result.members) do
		text = text..'@'..v.username..' '
	end
	return send_large_msg('chat#id'..chat_id, text, ok_cb, true)
end

local function members_channel(extra, success, result)
	local chat_id = extra.chat_id
	local text = ""
	for k,user in ipairs(result) do
		text = text..'@'..user.username..' '
	end
	return send_large_msg('channel#id'..chat_id, text, ok_cb, true)
end

local function mods_channel(extra, success, result)
	local chat_id = extra.chat_id
	local text = "🔆 Mods list:\n"
	local compare = text
	for k,user in ipairs(result) do
		hash = 'mod:'..chat_id..':'..user.peer_id
		if redis:get(hash) then
			text = text..'🔅 '..user.username..'\n'
		end
	end
	if text == compare then
		text = text..'🔅 Mod list is empty in this chat.'
	end
	return send_large_msg('channel#id'..chat_id, text, ok_cb, true)
end

local function run(msg, matches)
	if matches[1] == 'rank' then
		if matches[2] == 'list' then
			local var = 'No admins in this chat'
	  		for v,user in pairs(_config.admin_users) do
		    	var = user[1]..user[2]..var
	  		end
	  		return var
		end
	end
	if not is_sudo(msg) then
		return
	end
	if matches[1] == 'rank' then
		if matches[2] == 'admin' then
			if msg.reply_id then
				get_message(msg.reply_id, admin_by_reply, false)
			end
			if is_id(matches[3]) then
				chat_type = msg.to.type
				chat_id = msg.to.id
				user_id = matches[3]
				user_info('user#id'..user_id, set_admin, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
			else
				chat_type = msg.to.type
				chat_id = msg.to.id
				local member = string.gsub(matches[3], '@', '')
            	resolve_username(member, admin_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
			end
		end
		if matches[2] == 'mod' then
			if msg.reply_id then
				get_message(msg.reply_id, mod_by_reply, false)
			end
			if is_id(matches[3]) then
				chat_type = msg.to.type
				chat_id = msg.to.id
				user_id = matches[3]
				user_info('user#id'..user_id, set_mod, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
			else
				chat_type = msg.to.type
				chat_id = msg.to.id
				local member = string.gsub(matches[3], '@', '')
            	resolve_username(member, admin_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
			end
		end
		if matches[2] == 'guest' then
			if msg.reply_id then
				get_message(msg.reply_id, guest_by_reply, false)
			end
			if is_id(matches[3]) then
				chat_type = msg.to.type
				chat_id = msg.to.id
				user_id = matches[3]
				user_info('user#id'..user_id, set_guest, {chat_type=chat_type, chat_id=chat_id, user_id=user_id})
			else
				chat_type = msg.to.type
				chat_id = msg.to.id
				local member = string.gsub(matches[3], '@', '')
            	resolve_username(member, guest_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
			end
		end
	elseif matches[1] == 'admins' then
	  	-- Check users id in config
	  	local text = "🔆 Admins list:\n"
	  	for v,user in pairs(_config.admin_users) do
		    text = text..'🔅 '..user[2]..' ('..user[1]..')\n'
	  	end
	  	if not text then
	  		return "No admins"
	  	else
	  		return text
	  	end
	elseif matches[1] == 'members' then
		local chat_id = msg.to.id
	 	if msg.to.type == 'chat' then
	 		local receiver = 'chat#id'..msg.to.id
		    chat_info(receiver, members_chat, {chat_id=chat_id})
		else
			local chan = ("%s#id%s"):format(msg.to.type, msg.to.id)
		    channel_get_users(chan, members_channel, {chat_id=chat_id})
		end
	elseif matches[1] == 'mods' then
		local chat_id = msg.to.id
	 	if msg.to.type == 'chat' then
	 		local receiver = 'chat#id'..msg.to.id
		    chat_info(receiver, members_chat, {chat_id=chat_id})
		else
			local chan = ("%s#id%s"):format(msg.to.type, msg.to.id)
		    channel_get_users(chan, mods_channel, {chat_id=chat_id})
		end
	end
end



return {
  description = 'Manage admin list',
  usage = {
  	'#rank admin (reply): add admin by reply.',
  	'#rank admin id <user_id>: add admin by user ID.',
  	'#rank admin user <user_name> : add admin by username.',
  	'#rank guest (reply): remove admin by reply.',
  	'#rank guest id <user_id>: remove admin by user ID.',
  	'#rank guest user <user_name>: remove admin by username.',
  	'#admins : list of all admin members.'
  },
  patterns = {
  	"^#(rank) (.*) (.*)$",
  	"^#(rank) (.*)$",
  	"^#(admins)$",
  	"^#(mods)$",
  	"^#(members)$"
  },
  run = run
}