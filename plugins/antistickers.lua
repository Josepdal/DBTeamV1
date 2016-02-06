--By @MaSkAoS & @Josepdal

do

local function pre_process(msg)
    if not msg.media then
        webp = 'nothing'
    else
        webp = msg.media.caption
    end
    if webp == 'sticker.webp' then
        hash = 'stickers:'..msg.to.id
        if redis:get(hash) then
            delete_msg(msg.id, ok_cb, false)
        end
    end
  return msg
end

local function run(msg, matches)
    if is_sudo(msg) then
        if matches[2] == 'enable' then
            hash = 'stickers:'..msg.to.id
            redis:del(hash)
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, 'Los stickers estan permitidos .', ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, 'Los stickers estan permitidos .', ok_cb, false)
            end
        elseif matches[2] == 'disable' then
            hash = 'stickers:'..msg.to.id
            redis:set(hash, true)
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, 'Los stickers han sido prohibidos .', ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, 'Los stickers han sido prohibidos .', ok_cb, false)
            end
        end
    end
end

return {
patterns = {
'^!(stickers) (.+)$'
},
pre_process = pre_process,
run = run
}
end
