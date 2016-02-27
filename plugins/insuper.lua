do

local function returnids (extra, success, result)
  local receiver = extra.receiver
  local chatname = result.print_name
  local id = result.peer_id
    
  local text = ('ID for chat %s (%s):\n'):format(chatname, id)
  for k,user in ipairs(result.members) do
    local username = usernameinfo(user)
    local id = user.peer_id
    local userinfo = ("%s - %s\n"):format(username, id)
    text = text .. userinfo
  end
  return text
end

local function usernameinfo (user)
  if user.username then
    return '@'..user.username
  end
  if user.print_name then
    return user.print_name
  end
  local text = ''
  if user.first_name then
    text = user.last_name..' '
  end
  if user.lastname then
    text = text..user.last_name
  end
  return text
end

local function channelUserIDs (extra, success, result)
  local receiver = extra.receiver
  print('Result')
  vardump(result)
  
  local text = ''
  for k,user in ipairs(result) do
    local id = user.peer_id
    local username = usernameinfo (user)
    text = text..("%s - %s\n"):format(username, id)
  end
send_large_msg(receiver, "#LIST_OF_MOD :\n\n"..text)
end

local function parsed_url(link)
local parsed_link = URL.parse(link)
local parsed_path = URL.parse_path(parsed_link.path)
return parsed_path[2]
end


local function run(msg, matches)

if msg.to.type == 'chat' and matches[1] == 'tosuper' and permissions(msg.from.id, msg.to.id, "tosuper") then
chat_upgrade('chat#id'..msg.to.id, ok_cb, false)
return "Chat Upgraded Successful."
end

if matches[1] == 'setdes' and matches[2] and permissions(msg.from.id, msg.to.id, "mod_pro") then
if not is_momod(msg) then
return nil
end
local text = matches[2]
local chat = 'channel#id'..msg.to.id
if msg.to.type == 'channel' then
channel_set_about(chat, text, ok_cb, false)
return "Group Topic Has Been Changed."
end
end


if matches[1] == 'listmod' and permissions(msg.from.id, msg.to.id, "mod_pro") and msg.to.type == 'channel' then
   local receiver = get_receiver(msg)
   local chan = ("%s#id%s"):format(msg.to.type, msg.to.id)
   channel_get_admins(chan, channelUserIDs, {receiver=receiver})
end

if matches[1] == 'setabout' and matches[2] and msg.to.type == 'channel' and permissions(msg.from.id, msg.to.id, "mod_pro") then
    hash_data = matches[2]
    hash_add = "about_channel:"..msg.to.id
	redis:set(hash_add, hash_data)
	return "#ABOUT_TEXT is changed to :\n\n"..matches[2].."\n\nChannel ID : "..msg.to.id
end

if matches[1] == 'about' and msg.to.type == 'channel' then
    hash_add = "about_channel:"..msg.to.id
	about_text = redis:get(hash_add)
	return about_text
end
end


--end

return {
patterns = {
"^#(tosuper)$",
"^#(setdes) +(.+)$",
"^#(listmod)$",
"^#(setabout) +(.+)$",
"^#(about)$",
},
run = run
}

end
