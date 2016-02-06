do
local function is_user_whitelisted(id)
  local hash = 'whitelist:user#id'..id
  local white = redis:get(hash) or false
  return white
end

local function is_chat_whitelisted(id)
  local hash = 'whitelist:chat#id'..id
  local white = redis:get(hash) or false
  return white
end

local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  local channel = 'channel#id'..chat_id
  if user_id == tostring(our_id) then
    send_msg(chat, "I won't kick myself!", ok_cb,  true)
  else
    chat_del_user(chat, user, ok_cb, true)
  channel_kick_user(channel, user, ok_cb, true)
  end
end

local function ban_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  if user_id == tostring(our_id) then
    send_msg(chat, "I won't kick myself!", ok_cb,  true)
  else
    -- Save to redis
    local hash =  'banned:'..chat_id..':'..user_id
    redis:set(hash, true)
    -- Kick from chat
    kick_user(user_id, chat_id)
  end
end

local function is_banned(user_id, chat_id)
  local hash =  'banned:'..chat_id..':'..user_id
  local banned = redis:get(hash)
  return banned or false
end

local function chat_kick(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
    send_msg('chat#id'..chat, 'El usuario '..user..' ha sido expulsado .', ok_cb,  true)
end
local function chat_ban(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash =  'banned:'..chat..':'..user
    redis:set(hash, true)
    chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
    send_msg(chat, 'El usuario '..user..' ha sido expulsado .', ok_cb,  true)
end

local function channel_ban(extra, success, result)
  print('channel_ban')
  vardump(extra)
  vardump(result)
  print('end')
  local msg = result
  msg = backward_msg_format(msg)
    
     vardump(msg)
    local chat = msg.to.id
    local user = msg.from.id
    print(1)
    channel_kick_user('channel#id'..chat, 'user#id'..user, ok_cb, true)
    send_msg('channel#id'..chat, 'El usuario '..user..' ha sido expulsado .', ok_cb,  true)
end

local function pre_process(msg)

  -- SERVICE MESSAGE
  if msg.action and msg.action.type then
    local action = msg.action.type
    -- Check if banned user joins chat
    if action == 'chat_add_user' or action == 'chat_add_user_link' then
      local user_id
      if msg.action.link_issuer then
        user_id = msg.from.id
      else
        user_id = msg.action.user.id
      end
      print('Checking invited user '..user_id)
      local banned = is_banned(user_id, msg.to.id)
      if banned then
        print('User is banned!')
        kick_user(user_id, msg.to.id)
      end
    end
    -- No further checks
    return msg
  end

  -- BANNED USER TALKING
  if msg.to.type == 'chat' or msg.to.type == 'channel' then
    local user_id = msg.from.id
    local chat_id = msg.to.id
    local banned = is_banned(user_id, chat_id)
    if banned then
      print('Banned user talking!')
      ban_user(user_id, chat_id)
      msg.text = ''
    end
  end

  -- WHITELIST
  local hash = 'whitelist:enabled'
  local whitelist = redis:get(hash)
  local issudo = is_sudo(msg)

  -- Allow all sudo users even if whitelist is allowed
  if whitelist and not issudo then
    print('Whitelist enabled and not sudo')
    -- Check if user or chat is whitelisted
    local allowed = is_user_whitelisted(msg.from.id)

    if not allowed then
      print('User '..msg.from.id..' not whitelisted')
      if msg.to.type == 'chat' or msg.to.type == 'channel' then
        allowed = is_chat_whitelisted(msg.to.id)
        if not allowed then
          print ('Chat '..msg.to.id..' not whitelisted')
        else
          print ('Chat '..msg.to.id..' whitelisted :)')
        end
      end
    else
      print('User '..msg.from.id..' allowed :)')
    end

    if not allowed then
      msg.text = ''
    end

  else
    print('Whitelist not enabled or is sudo')
  end

  return msg
end

local function run(msg, matches)

  -- Silent ignore
  if not is_sudo(msg) then
    return nil
  end

    if matches[1] == 'ban' then
        local replyId = msg.reply_id
        local user_id = matches[3]
        local chat_id = msg.to.id
        print(get_receiver(msg))
        print(2)
        if msg.to.type == 'chat' or msg.to.type == 'channel' then
            if replyId then
              print(3)
                if msg.to.type == 'chat' then
                  get_message(replyId, chat_ban, false)
                elseif msg.to.type == 'channel' then
                  get_message(msg.reply_id, channel_ban, {receiver=get_receiver(msg)})
                end
            end
            if matches[2] == 'user' then
              ban_user(matches[3], msg.to.id)
              return 'El usuario '..user_id..' ha sido baneado.'
            end
            if matches[2] == 'delete' then
                local hash =  'banned:'..chat_id..':'..user_id
                redis:del(hash)
                if msg.to.type == 'chat' then
                    chat_add_user('chat#id'..chat_id, 'user#id'..user_id, callback, false)
                elseif msg.to.type == 'channel' then
                    channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, callback, false)
                end
                return 'El usuario '..user_id..' ha sido readmitido .'
            end
        end
    end
    if matches[1] == 'kick' then
        if msg.to.type == 'chat' then
            if msg.reply_id then
                get_message(msg.reply_id, chat_kick, false)
            end
            if matches[2] == 'user' then
              kick_user(matches[3], msg.to.id)
            end
        end
    end

  if matches[1] == 'whitelist' then
    if matches[2] == 'enable' then
      local hash = 'whitelist:enabled'
      redis:set(hash, true)
      return 'Enabled whitelist'
    end

    if matches[2] == 'disable' then
      local hash = 'whitelist:enabled'
      redis:del(hash)
      return 'Disabled whitelist'
    end

    if matches[2] == 'user' then
      local hash = 'whitelist:user#id'..matches[3]
      redis:set(hash, true)
      return 'User '..matches[3]..' whitelisted'
    end

    if matches[2] == 'chat' then
      if msg.to.type ~= 'chat' and msg.to.type ~= 'channel' then
        return 'This isn\'t a chat group'
      end
      local hash = 'whitelist:chat#id'..msg.to.id
      redis:set(hash, true)
      return 'Chat '..msg.to.id..' whitelisted'
    end

    if matches[2] == 'delete' and matches[3] == 'user' then
      local hash = 'whitelist:user#id'..matches[4]
      redis:del(hash)
      return 'User '..matches[4]..' removed from whitelist'
    end

    if matches[2] == 'delete' and matches[3] == 'chat' then
      if msg.to.type ~= 'chat' and msg.to.type ~= 'channel' then
        return 'This isn\'t a chat group'
      end
      local hash = 'whitelist:chat#id'..msg.to.id
      redis:del(hash)
      return 'Chat '..msg.to.id..' removed from whitelist'
    end

  end
end

return {
  description = "Plugin to manage bans, kicks and white/black lists.",
  usage = {
    "!whitelist <enable>/<disable>: Enable or disable whitelist mode",
    "!whitelist user <user_id>: Allow user to use the bot when whitelist mode is enabled",
    "!whitelist chat: Allow everybody on current chat to use the bot when whitelist mode is enabled",
    "!whitelist delete user <user_id>: Remove user from whitelist",
    "!whitelist delete chat: Remove chat from whitelist",
    "!ban user <user_id>: Kick user from chat and kicks it if joins chat again",
    "!ban delete <user_id>: Unban user",
    "!kick <user_id> Kick user from chat group"
  },
  patterns = {
    "^!(whitelist) (enable)$",
    "^!(whitelist) (disable)$",
    "^!(whitelist) (user) (%d+)$",
    "^!(whitelist) (chat)$",
    "^!(whitelist) (delete) (user) (%d+)$",
    "^!(whitelist) (delete) (chat)$",
    "^!(ban) (user) (%d+)$",
    "^!(ban) (delete) (%d+)$",
    "^!(kick) (%d+)$",
    "^!!tgservice (.+)$",
    "^!(ban)$",
    "^!(kick)$"
  },
  run = run,
  pre_process = pre_process
}
end