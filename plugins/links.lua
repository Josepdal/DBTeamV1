local function kick_user(msg)
    local chat = 'chat#id'..msg.to.id
    local channel = 'channel#id'..msg.to.id
    local user = msg.from.id
    if msg.to.type == 'chat' then
        chat_del_user(chat, 'user#id'..user, ok_cb, true)
    elseif msg.to.type == 'channel' then
        channel_kick_user(channel, 'user#id'..user, ok_cb, true)
    end
end

local function run(msg, matches)
    if not permissions(msg.from.id, msg.to.id, "settings") then
        local hash = 'links:'..msg.to.id
        if redis:get(hash) then
            kick_user(msg)
            delete_msg(msg.id, ok_cb, false)
            send_report(msg)
        end
    end
end

return {
patterns = {
    -- Agrega mas links si es necesario
    "https://",
    "http://"
}, run = run}
