-- Available to work with supergroups by @Josepdal to @TaliBOT

local NUM_MSG_MAX = 3 -- Max number of messages per TIME_CHECK seconds
local TIME_CHECK = 1

local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, function (data, success, result)
    if success ~= 1 then
      local text = 'I can\'t kick '..data.user..' but should be kicked'
      send_msg(data.chat, '', ok_cb, nil)
    end
  end, {chat=chat, user=user})
end

local function run (msg, matches)
    local chat = msg.to.id
    local hash = 'anti-flood:enabled:'..chat
    if matches[1] == 'enable' then
      redis:set(hash, true)
      return 'El Anti-flood ha sido activado en este super grupo'
    end
    if matches[1] == 'disable' then
      redis:del(hash)
      return 'El Anti-flood ha sido desactivado en este super grupo'
    end
end

local function pre_process (msg)
  -- Ignore service msg
  if msg.service then
    print('Service message')
    return msg
  end

  local hash_enable = 'anti-flood:enabled:'..msg.to.id
  local enabled = redis:get(hash_enable)

  if enabled then
    print('anti-flood enabled')
    -- Check flood
    if msg.from.type == 'user' then
      -- Increase the number of messages from the user on the chat
      local hash = 'anti-flood:'..msg.from.id..':'..msg.to.id..':msg-num'
      local msgs = tonumber(redis:get(hash) or 0)
      if msgs > NUM_MSG_MAX then
        local receiver = get_receiver(msg)
        local user = msg.from.id
        local text = 'El usuario '..user..' ha sido expulsado por flood.'
        local chat = msg.to.id
        local channel = msg.to.id
        send_msg(receiver, text, ok_cb, nil)
        local bhash = 'banned:'..msg.to.id..':'..msg.from.id
        redis:set(bhash, true)
        kick_user(user, chat)
        channel_kick_user(channel, user, ok_cb, true)
        msg = nil
      end
      redis:setex(hash, TIME_CHECK, msgs+1)
    end
  end
  return msg
end

return {
  description = 'Plugin para expulsar a los flooders de un grupo.',
  usage = {},
  patterns = {
    '^!antiflood (enable)$',
    '^!antiflood (disable)$'
  },
  run = run,
  privileged = true,
  pre_process = pre_process
}