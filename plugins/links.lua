local function send_report(msg)
    local text = '👤 '..lang_text(msg.to.id, 'reportUser')..': '..msg.from.username..' ('..msg.from.id..')\n‼ '..lang_text(msg.to.id, 'reportReason')..': Link\n💬 '..lang_text(msg.to.id, 'reportGroup')..': "'..msg.to.title..'" ('..msg.to.id..')\n✉ '..lang_text(msg.to.id, 'reportMessage')..': '..msg.text
    for v,user in pairs(_config.sudo_users) do
        send_msg('user#id'..user, text, ok_cb, true)
    end
end

local function remove_message(msg)
    local chat = 'chat#id'..msg.to.id
    local channel = 'channel#id'..msg.to.id
    local user = msg.from.id
    if msg.to.type == 'chat' then
        chat_del_user(chat, 'user#id'..user, ok_cb, true)
    elseif msg.to.type == 'channel' then
        channel_remove_message(channel, 'user#id'..user, ok_cb, true)
    end
end

local function run(msg, matches)
    if not permissions(msg.from.id, msg.to.id, "settings") then
        local hash = 'links:'..msg.to.id
        if redis:get(hash) then
            send_report(msg)
            delete_msg(msg.id, ok_cb, false)
        end
    end
end

return {
patterns = {
    -- Agrega mas links si es necesario
    "[Hh][Tt][Tt][Pp][Ss]://",
    "[Hh][Tt][Tt][Pp]://",
    "[Ww][Ww][Ww].",
    ".[Cc][Oo][Mm]"
}, run = run}
