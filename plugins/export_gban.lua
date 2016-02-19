local function run(msg, matches)
    if permissions(msg.from.id, msg.to.id, "export_gban") then
        if matches[1] == 'gbans' then
            local receiver = get_receiver(msg)
            if matches[2] == 'installer' then
                local text = 'local function run(msg)\n'
                local count = 0
                for v,user in pairs(_gbans.gbans_users) do
                    text = text..'gban_id('..user..')\n'
                    count = count + 1
                end

local text = text..[[
if permissions(msg.from.id, msg.to.id, "gban_installer") then
    if msg.to.type == 'chat' then
        send_msg('chat#id'..msg.to.id, ']]..count..[[ accounts globally banned', ok_cb, false)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..msg.to.id, ']]..count..[[ accounts globally banned', ok_cb, false)
    end
    end

    return {
        description = 'Add gbans into your bot. A gbanlist command.',
        usage = {},
        patterns = {
            "^#(install) (gbans)$"
        },
        run = run
    }
else
    return '🚫 '..lang_text(msg.to.id, 'require_sudo')
end]]

                local file = io.open("./plugins/gban_installer.lua", "w")
                file:write(text)
                file:close()

                send_document(receiver, './plugins/gban_installer.lua', ok_cb, false)
            elseif matches[2] == 'list' then
                send_document(receiver, './data/gbans.lua', ok_cb, false)
            end
        end
    else
        return '🚫 '..lang_text(msg.to.id, 'require_admin')
    end
end

return {
  description = 'Manage admin list',
  usage = {},
  patterns = {
    "^#(gbans) (.*)$"
  },
  run = run
}