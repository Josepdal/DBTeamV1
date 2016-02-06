do


local replyId = get_message(replyId, chat_kick_ban, false)

local function chat_kick_ban(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    if extra.match == 'dep' then
        chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
    elseif extra.match == 'ban' then
        local hash =  'banned:'..chat..':'..user
        redis:set(hash, true)
        chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg(chat, 'El usuario '..user..' ha sido expulsado del grupo', ok_cb,  true)
    end
end

return {
  description = "Plugin to manage bans, kicks and white/black lists.",
  },
  patterns = {
    --"^[!/]([Bb]an) (.*)$",
    "^[!/]([Dd]ep)$",
   -- "^[!/]([Uu]nban) (.*)$",
    --"^[!/]([Uu]nbanall) (.*)$",
    --"^[!/]([Uu]nbanall)$",
    "^[!/]([Dd]ep) (.*)$",
    --"^[!/]([Kk]ickme)$",
   -- "^[!/]([Bb]an)$",
    --"^[!/]([Uu]nban)$",
  },
  run = run,
  pre_process = pre_process
}