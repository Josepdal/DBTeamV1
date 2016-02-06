--By @MaSkAoS

do

local function a(extra, success, result)
  print('ban')
  vardump(extra)
  vardump(result)
    local msg = result
     vardump(msg)
    local chat = msg.to.id
    local user = msg.from.id
    print(1)
    vardump(msg.to.id)
    vardump(chat)
    channel_kick_user('channel#id'..chat, 'user#id'..user, ok_cb, true)
    send_msg('channel#id'..chat, 'El usuario '..user..' ha sido expulsado del grupo', ok_cb,  true)
end
--By @MaSkAoS & @Josepdal

local function action_by_reply(extra, success, result)
  print(2)
  print('info')
  vardump(extra)
  vardump(result)
  local user_info = {}
  local uhash = 'user:'..result.from.id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..result.from.id..':'..result.to.id
  user_info.msgs = tonumber(redis:get(um_hash) or 0)
  user_info.name = {'first_name', 'print_name', 'username'}
  if result.from.username then
    user_name = '@'..result.from.username
  else
    user_name = ''
  end
  local msg = result
  local user_id = msg.from.id
  local chat_id = msg.to.id
  local user = 'user#id'..msg.from.id
  local chat = 'chat#id'..msg.to.id
  result = backward_msg_format(result)
  local text = '1-Full name : '..(result.from.first_name or '')..' '..(result.from.last_name or '')..'\n'
             ..'2-First name : '..(result.from.first_name or '')..'\n'
             ..'3-Last name : '..(result.from.last_name or '')..'\n'
             ..'4-Username : '..user_name..'\n'
             ..'5-ID : '..result.from.id..'\n'
  send_large_msg(extra.receiver, text)
end

local function run(msg)
   if msg.text == '!info' and msg.reply_id and is_sudo(msg) then
     get_message(msg.reply_id, action_by_reply, {receiver=get_receiver(msg)})
   end
end

return {
    patterns = {
      '^!info$'
    },
  run = run
}
end
