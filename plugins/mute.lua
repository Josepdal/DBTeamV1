do
  
function words_list(chat_id, hash)
  local list = redis:smembers(hash)
  local text = "Muted users:\n\n"
  for k,v in pairs(list) do
    text = text..k.." - "..v.." \n"
  end
  if text:match("Muted users:\n\n$") then
    return 'Empty blacklist'
  else
   return text
  end
end

local function pre_process(msg)
  local channel = 'channel#id'..msg.to.id
  local user = 'user#id'..msg.from.id
  local hash = 'muted :'..msg.to.id
  local list = redis:smembers(hash)
  for k,v in pairs(list) do
    if tonumber(msg.from.id) == tonumber(v) then
      print('User silenced', msg.from.id)
      --send_large_msg(channel, 'Message from '..msg.from.id..' deleted')
      delete_msg(msg.id, ok_cb, false)
    end
  end
  return msg
end

local function reply_action(extra, success, result)
  local hash = extra.hash
  if extra.action == 'mute' then
    redis:sadd(hash, result.from.peer_id)
    return send_large_msg('channel#id'..result.to.peer_id, '🚫Usuario '..result.from.first_name:gsub("_", " ")..' silenciado')
  else
    redis:srem(hash, result.from.peer_id)
    return send_large_msg('channel#id'..result.to.peer_id, '✅El usuario '..result.from.first_name:gsub("_", " ")..' ya puede hablar')
  end
end

local function channelUserIDs(extra, success, result)
  local receiver = extra.receiver
  local member = extra.member
  local chat_id = extra.chat_id
  local hash = extra.hash
  for k,user in ipairs(result) do
		vusername = user.username
		print(vusername)
		if vusername == member then
			member_id = user.peer_id
			print(member_id)
			if member_id == our_id then return false end
			--if member_id==sender then
				--return send_large_msg(receiver, "You can't mute yourself")
			--end
			if extra.action == 'mute' then
			  redis:sadd(hash, member_id)
			  return send_large_msg(receiver, '🚫Usuario @'..vusername..' silenciado')
			else
			  redis:srem(hash, member_id)
			  return send_large_msg(receiver, '✅El usuario @'..vusername..' ya puede hablar')
			end
		end
	end
end

local function run(msg, matches)
  local chat_id = msg.to.id
  local hash = 'muted :'..chat_id
  if matches[1] == 'mute' and matches[2] then
    if string.match(matches[2], '^%d+$') then
      redis:sadd(hash, matches[2])
      return '🚫El usuario '..matches[2]..' ha sido silenciado'
    else
      local member = string.gsub(matches[2], '@', '')
      local chan = ("%s#id%s"):format(msg.to.type, msg.to.id)
      local receiver = 'channel#id'..msg.to.id
      channel_get_users(chan, channelUserIDs, {receiver=receiver, member=member, chat_id=chat_id, hash=hash, action='mute'})
    end
  end
  if matches[1] == 'mute' and not matches[2] and msg.reply_id then
      print('reply_id: '..msg.reply_id)
	    get_message(msg.reply_id, reply_action, {hash=hash, action='mute'})
	end
  if matches[1] == 'unmute' and matches[2] then
    if string.match(matches[2], '^%d+$') then
      redis:srem(hash, matches[2])
      return '✅El usuario '..matches[2]..' ya puede hablar'
    else
      local member = string.gsub(matches[2], '@', '')
      local chan = ("%s#id%s"):format(msg.to.type, msg.to.id)
      local receiver = 'channel#id'..msg.to.id
      channel_get_users(chan, channelUserIDs, {receiver=receiver, member=member, chat_id=chat_id, hash=hash, action='unmute'})
    end
  end
  if matches[1] == 'unmute' and not matches[2] and msg.reply_id then
      print('reply_id: '..msg.reply_id)
	    get_message(msg.reply_id, reply_action, {hash=hash, action='unmute'})
	end
  if matches[1]:lower() == 'muted' then
    return words_list(chat_id, hash)
  end
  if matches[1]:lower() == 'clear muted' then
    redis:del(hash)
    return '✅Lista de silenciados borrada✅'
  end
end

return {
  patterns = {
    "[!/](mute)$",
    "[!/](mute) (.*)$",
    "[!/](unmute)$",
    "[!/](unmute) (.*)$",
    "[!/](muted)$",
    "[!/](clear muted)$",
    },
  run = run,
  pre_process = pre_process
}
end
