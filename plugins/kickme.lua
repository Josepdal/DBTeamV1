local function kick_user(msg)
    local chat = 'chat#id'..msg.to.id
    local channel = 'channel#id'..msg.to.id
    local user = msg.from.id
    send_msg('channel#id'..msg.to.id, ' @'..msg.from.username..'  ( Id:  '..msg.from.id..' ) Vuelve pronto .', ok_cb, true)
    if msg.to.type == 'chat' then
        chat_del_user(chat, 'user#id'..user, ok_cb, true)
    elseif msg.to.type == 'channel' then
        channel_kick_user(channel, 'user#id'..user, ok_cb, true)
    end
end

local function run(msg)
    kick_user(msg)
    delete_msg(msg.id, ok_cb, false)
    --send_report(msg)
end

return {patterns = {
    -- You can add much as patterns you want to stop all spam traffic
    '!kickme'
}, run = run}
