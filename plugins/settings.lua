--By @MaSkAoS & @Josepdal

do

local function pre_process(msg)
    --Checking stickers
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
    if not msg.media then
        mp4 = 'nothing'
    else
        if msg.media.type == 'document' then
            mp4 = msg.media.caption
        end
    end
    --Checking GIFs and MP4 files
    if mp4 == 'giphy.mp4' then
        hash = 'gifs:'..msg.to.id
        if redis:get(hash) then
            delete_msg(msg.id, ok_cb, false)
        end
    else
        if not msg.media then
        else
            if msg.media.type == 'document' then
                gifytpe = string.find(mp4, 'gif.mp4')
                if not gifytpe then
                else
                    hash = 'gifs:'..msg.to.id
                    if redis:get(hash) then
                        delete_msg(msg.id, ok_cb, false)
                    end
                end
            end
        end
    end
    --Checking photos
    if not msg.media then
    else
        if msg.media.type == 'photo' then
            hash = 'photo:'..msg.to.id
            if redis:get(hash) then
                delete_msg(msg.id, ok_cb, false)
            end
        end
    end
  return msg
end

local function run(msg, matches)
    if matches[2] ~= nil then
        --if is_sudo(msg) then
            if matches[2] == 'stickers' then
                if matches[3] == 'enable' then
                    hash = 'stickers:'..msg.to.id
                    redis:del(hash)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Stickers are not allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Stickers are not allowed in this channel', ok_cb, false)
                    end
                elseif matches[3] == 'disable' then
                    hash = 'stickers:'..msg.to.id
                    redis:set(hash, true)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Stickers are now allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Stickers are not allowed in this channel', ok_cb, false)
                    end
                end
            elseif matches[2] == 'gifs' then
                if matches[3] == 'enable' then
                    hash = 'gifs:'..msg.to.id
                    redis:del(hash)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Gifs are now allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Gifs are now allowed in this chat', ok_cb, false)
                    end
                elseif matches[3] == 'disable' then
                    hash = 'gifs:'..msg.to.id
                    redis:set(hash, true)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Gifs are not allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Gifs are not allowed in this chat', ok_cb, false)
                    end
                end
            elseif matches[2] == 'photos' then
                if matches[3] == 'enable' then
                    hash = 'photo:'..msg.to.id
                    redis:del(hash)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Photos are now allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Photos are now allowed in this chat', ok_cb, false)
                    end
                elseif matches[3] == 'disable' then
                    hash = 'photo:'..msg.to.id
                    redis:set(hash, true)
                    if msg.to.type == 'chat' then
                        send_msg('chat#id'..msg.to.id, 'Photos are not allowed in this chat', ok_cb, false)
                    elseif msg.to.type == 'channel' then
                        send_msg('channel#id'..msg.to.id, 'Photos are not allowed in this chat', ok_cb, false)
                    end
                end
            end
        --end
    else
        text = '⚙ Group settings:\n'

        --Enable/disable Stickers
        local hash = 'stickers:'..msg.to.id
        if redis:get(hash) then
            sStickers = 'not allowed'
            sStickersD = '🔹'
        else
            sStickers = 'allowed'
            sStickersD = '🔸'
        end
        text = text..sStickersD..' Stickers: '..sStickers..'\n'

        --Enable/disable Flood
        local hash = 'anti-flood:enabled:'..msg.to.id
        if redis:get(hash) then
            sFlood = 'allowed'
            sFloodD = '🔸'
        else
            sFlood = 'not allowed'
            sFloodD = '🔹'
        end
        text = text..sFloodD..' Flood: '..sFlood..'\n'

        --Enable/disable Links
        local hash = 'antilink:enabled:'..msg.to.id
        if redis:get(hash) then
            sLink = 'allowed'
            sLinkD = '🔸'
        else
            sLink = 'not allowed'
            sLinkD = '🔹'
        end
        text = text..sLinkD..' Links: '..sLink..'\n'

        --Enable/disable arabic messages
        local hash = 'antiarabe:enabled:'..msg.to.id
        if redis:get(hash) then
            sArabe = 'allowed'
            sArabeD = '🔸'
        else
            sArabe = 'not allowed'
            sArabeD = '🔹'
        end
        text = text..sArabeD..' Arabic: '..sArabe..'\n'

        --Enable/disable bots
        local hash = 'antibot:enabled:'..msg.to.id
        if redis:get(hash) then
            sBots = 'allowed'
            sBotsD = '🔸'
        else
            sBots = 'not allowed'
            sBotsD = '🔹'
        end
        text = text..sBotsD..' Bots: '..sBots..'\n'
        
        --Enable/disable gifs
        local hash = 'gifs:enabled:'..msg.to.id
        if redis:get(hash) then
            sGif = 'allowed'
            sGifD = '🔸'
        else
            sGif = 'not allowed'
            sGifD = '🔹'
        end
        text = text..sGifD..' Gifs: '..sGif..'\n'
        
        --Enable/disable send photos
        local hash = 'photo:enabled:'..msg.to.id
        if redis:get(hash) then
            sPhoto = 'allowed'
            sPhotoD = '🔸'
        else
            sPhoto = 'not allowed'
            sPhotoD = '🔹'
        end
        text = text..sPhotoD..' Photos: '..sPhoto..'\n'

        --Enable/disable changing group name
        local hash = 'name:enabled:'..msg.to.id
        if redis:get(hash) then
            sName = 'allowed'
            sNameD = '🔸'
        else
            sName = 'not allowed'
            sNameD = '🔹'
        end
        text = text..sNameD..' Group Name: '..sName
        
        --Send settings to group or supergroup
        if msg.to.type == 'chat' then
            send_msg('chat#id'..msg.to.id, text, ok_cb, false)
        elseif msg.to.type == 'channel' then
            send_msg('channel#id'..msg.to.id, text, ok_cb, false)
        end
    end
end

return {
    patterns = {
        '^#(settings)$',
        '^#(settings) (.*) (.*)$'
    },
    pre_process = pre_process,
    run = run
    }
end