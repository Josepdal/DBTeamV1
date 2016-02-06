
local function run(msg)
    local issudo = is_sudo(msg)
    if issudo == false then
        delete_msg(msg.id, ok_cb, false)
        send_msg('channel#id'..msg.to.id, ' @'..msg.from.username..' ('..msg.from.id..') No esta permitido enviar links.', ok_cb, true)
        if msg.to.type == 'chat' then
           -- chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        --elseif msg.to.type == 'channel' then
             --channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        end
    end    
end

return {patterns = {
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]",
    "[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Oo][Rr][Gg]",
    "[Aa][Dd][Ff].[Ll][Yy]"
    }, run = run}