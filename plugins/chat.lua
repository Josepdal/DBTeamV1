-- by Mustafa ip (@HackeD_o

local function index_function2(chat_id)
  for k,v in pairs(_chats.chats) do
    if chat_id == v[1] then
    	print(k)
      return k
      end
  end
  -- If not found
  return false
end
local function addchat(chat)
if not index_function2(chat.to.id) then
  table.insert(_chats.chats, {tonumber(chat.to.id), string.gsub(chat.to.title, '_', ' ')})
	print(chat.to.id..' added to _chats table')
	save_chats()
end
end
local function remchat(chat,msg)
local nameid = index_function2(chat.to.id)
if not nameid then
    
else
  table.remove(_chats.chats, nameid)
	save_chats()
end
end
local function remchatid(chat,msg)
local nameid = index_function2(tonumber(chat))
if not nameid then
    send_msg(msg.to.peer_id, '🚫️ '..lang_text(chat, 'nchatrems'), ok_cb, true)
else
  table.remove(_chats.chats, nameid)
	save_chats()
	 send_msg(msg.to.peer_id, 'ℹ️ '..lang_text(chat, 'chatrems'), ok_cb, true)
end
end
local function run(msg, matches)
local bot_id = 191104143 -- your bot id
local chat = msg.to.id
   -- like local bot_id = 1234567
    if matches[1] == 'addchat' and permissions(msg.from.id, msg.to.id, "addandrem") then
    if msg.to.type == 'chat' then
    if not index_function2(msg.to.id) then
    addchat(msg)
    send_msg('chat#id'..msg.to.id, 'ℹ️ '..lang_text(chat, 'gadding'), ok_cb, true)
         local hash = 'owner:'..chat
         if is_mod(chat, msg.from.id) then
   local mhash = 'mod:'..chat_id..':'..msg.from.id
    redis:del(mhash)
    end
	    redis:set(hash, tonumber(msg.from.id))
    else
    send_msg('chat#id'..msg.to.id, '🚫 '..lang_text(chat, 'ngadding'), ok_cb, true)
    end
    elseif msg.to.type == 'channel' then
    if not index_function2(msg.to.id) then
    addchat(msg)
    send_msg('channel#id'..msg.to.id, 'ℹ️ '..lang_text(chat, 'sadding'), ok_cb, true)
         local hash = 'owner:'..chat
         if is_mod(chat, msg.from.id) then
   local mhash = 'mod:'..chat_id..':'..msg.from.id
    redis:del(mhash)
    end
	    redis:set(hash, tonumber(msg.from.id))
    else
    send_msg('channel#id'..msg.to.id, '🚫 '..lang_text(chat, 'nsadding'), ok_cb, true)
    end
    end
else if matches[1] == 'remchat' and permissions(msg.from.id, msg.to.id, "addandrem") then
    if not matches[2] then
    if msg.to.type == 'chat' then
    send_msg('chat#id'..msg.to.id, '🚫 '..lang_text(chat, 'chatrem'), ok_cb, true)
    chat_del_user('chat#id'..msg.to.id, 'user#id'..bot_id, ok_cb, false)
  elseif msg.to.type == 'channel' then
    send_msg('channel#id'..msg.to.id, '🚫 '..lang_text(chat, 'chatrem'), ok_cb, true)
    leave_channel('channel#id'..msg.to.id, ok_cb, false)
    end
    remchat(msg)
else
    send_msg('chat#id'..matches[2], '🚫 '..lang_text(chat, 'chatrem'), ok_cb, true)
    chat_del_user('chat#id'..matches[2], 'user#id'..bot_id, ok_cb, false)
    send_msg('channel#id'..matches[2], '🚫 '..lang_text(chat, 'chatrem'), ok_cb, true)
    leave_channel('channel#id'..matches[2], ok_cb, false)
    remchatid(matches[2],msg)
    end
    elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(bot_id) then
    remchat(msg)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) then
    if not permissions(msg.from.id, msg.to.id, "addandrem") then
        if msg.to.type == 'chat' then
        send_msg('chat#id'..msg.to.id, '🚫 '..lang_text(chat, 'gnadding'), ok_cb, true)
        chat_del_user('chat#id'..msg.to.id, 'user#id'..bot_id, ok_cb, false)
      elseif msg.to.type == 'channel' then
        send_msg('channel#id'..msg.to.id, '🚫 '..lang_text(chat, 'gnadding'), ok_cb, true)
        leave_channel('channel#id'..msg.to.id, ok_cb, false)
      end
  else
   if msg.to.type == 'chat' then
    send_msg('chat#id'..msg.to.id, 'ℹ️ '..lang_text(chat, 'gadding'), ok_cb, true)
         local hash = 'owner:'..chat
         if is_mod(chat, msg.from.id) then
   local mhash = 'mod:'..chat_id..':'..msg.from.id
    redis:del(mhash)
    end
	    redis:set(hash, tonumber(msg.from.id))
    elseif msg.to.type == 'channel' then
    send_msg('channel#id'..msg.to.id, 'ℹ️ '..lang_text(chat, 'sadding'), ok_cb, true)
             local hash = 'owner:'..chat
         if is_mod(chat, msg.from.id) then
   local mhash = 'mod:'..chat_id..':'..msg.from.id
    redis:del(mhash)
    end
	    redis:set(hash, tonumber(msg.from.id))
  end
      addchat(msg)
    end
    end
end
end
return {
  patterns = {
    "^[#!/](remchat)$",
    "^[#!/](remchat) (%d*)$",
    "^[#!/](addchat)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
