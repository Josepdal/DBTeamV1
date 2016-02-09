--By @MaSkAoS & @Josepdal

do

local function pre_process(msg)
    local hash = 'flood:max:'..msg.to.id
    if not redis:get(hash) then
        floodMax = 5
    else
        floodMax = tonumber(redis:get(hash))
    end

    local hash = 'flood:time:'..msg.to.id
    if not redis:get(hash) then
        floodTime = 3
    else
        floodTime = tonumber(redis:get(hash))
    end

    --Checking flood
    local hash = 'flood:'..msg.to.id
    if redis:get(hash) then
        print('anti-flood enabled')
        -- Check flood
        if msg.from.type == 'user' then
            -- Increase the number of messages from the user on the chat
            local hash = 'flood:'..msg.from.id..':'..msg.to.id..':msg-num'
            local msgs = tonumber(redis:get(hash) or 0)
            if msgs > floodMax then
                local receiver = get_receiver(msg)
                local user = msg.from.id
                local chat = msg.to.id
                local channel = msg.to.id
                local bhash = 'banned:'..msg.to.id..':'..msg.from.id
                redis:set(bhash, true)
                if msg.to.type == 'chat' then
                    send_msg('chat#id'..msg.to.id, 'User @'..msg.from.username..' ('..msg.from.id..') is flooding.', ok_cb, true)
                    chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
                elseif msg.to.type == 'channel' then
                    send_msg('channel#id'..msg.to.id, 'User @'..msg.from.username..' ('..msg.from.id..') is flooding.', ok_cb, true)
                    channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
                end
            end
            redis:setex(hash, floodTime, msgs+1)
        end
    end

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
    if matches[1] == 'settings' then
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
                            send_msg('channel#id'..msg.to.id, 'Gifs are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'gifs:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Gifs are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Gifs are not allowed in this channel', ok_cb, false)
                        end
                    end
                elseif matches[2] == 'photos' then
                    if matches[3] == 'enable' then
                        hash = 'photo:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Photos are now allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Photos are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'photo:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Photos are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Photos are not allowed in this channel', ok_cb, false)
                        end
                    end
                 elseif matches[2] == 'arabic' then
                    if matches[3] == 'enable' then
                        hash = 'arabic:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Arabic are now allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Arabic are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'arabic:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Arabic are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Arabic are not allowed in this channel', ok_cb, false)
                        end
                    end
                elseif matches[2] == 'kickme' then
                    if matches[3] == 'enable' then
                        hash = 'kickme:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Autokick are now allowed in this channel', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Autokick are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'kickme:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Autokick are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Autokick are not allowed in this channel', ok_cb, false)
                        end
                    end
                elseif matches[2] == 'mute' then
                    if matches[3] == 'enable' then
                        hash = 'mute:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Muteare now allowed in this channel', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Mute are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'mute:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Mute are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Mute are not allowed in this channel', ok_cb, false)
                        end
                    end
                elseif matches[2] == 'flood' then
                    if matches[3] == 'enable' then
                        hash = 'flood:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Flood are now allowed in this channel', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Flood are now allowed in this channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'flood:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Flood are not allowed in this chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Flood are not allowed in this channel', ok_cb, false)
                        end
                    end
                elseif matches[2] == 'floodtime' then
                    if not matches[3] then
                    else
                        hash = 'flood:time:'..msg.to.id
                        redis:set(hash, matches[3])
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Flood time check has been set to '..matches[3], ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Flood time check has been set to '..matches[3], ok_cb, false)
                        end
                    end
                elseif matches[2] == 'maxflood' then
                    if not matches[3] then
                    else
                        hash = 'flood:max:'..msg.to.id
                        redis:set(hash, matches[3])
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Max flood messages have been set to '..matches[3], ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Max flood messages have been set to '..matches[3], ok_cb, false)
                        end
                    end
                end
            --end
        else
            if msg.to.type == 'chat' then
                text = '⚙ Group settings:\n'
            elseif msg.to.type == 'channel' then
                text = '⚙ Super Group Settings:\n'
            end

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

            --Enable/disable Links
            local hash = 'antilink:'..msg.to.id
            if redis:get(hash) then
                sLink = 'not allowed'
                sLinkD = '🔹'
            else
                sLink = 'allowed'
                sLinkD = '🔸'
            end
            text = text..sLinkD..' Links: '..sLink..'\n'

            --Enable/disable arabic messages
            local hash = 'antiarabe:'..msg.to.id
            if redis:get(hash) then
                sArabe = 'allowed'
                sArabeD = '🔸'              
            else
                sArabe = 'not allowed'
                sArabeD = '🔹'
            end
            text = text..sArabeD..' Arabic: '..sArabe..'\n'

            --Enable/disable bots
            local hash = 'antibot:'..msg.to.id
            if redis:get(hash) then
                sBots = 'allowed'
                sBotsD = '🔸'
            else
                sBots = 'not allowed'
                sBotsD = '🔹'
            end
            text = text..sBotsD..' Bots: '..sBots..'\n'
            
            --Enable/disable gifs
            local hash = 'gifs:'..msg.to.id
            if redis:get(hash) then
                sGif = 'allowed'
                sGifD = '🔸'
            else
                sGif = 'not allowed'
                sGifD = '🔹'
            end
            text = text..sGifD..' Gifs: '..sGif..'\n'
            
            --Enable/disable send photos
            local hash = 'photo:'..msg.to.id
            if redis:get(hash) then
                sPhoto = 'allowed'
                sPhotoD = '🔸'
            else
                sPhoto = 'not allowed'
                sPhotoD = '🔹'
            end
            text = text..sPhotoD..' Photos: '..sPhoto..'\n'

            --Enable/disable autokick
            local hash = 'kickme:'..msg.to.id
            if redis:get(hash) then
                sKickme = 'allowed'
                sKickmeD = '🔸'
            else
                sKickme = 'not allowed'
                sKickmeD = '🔹'
            end
            text = text..sKickmeD..' Kickme: '..sKickme..'\n'

            --Enable/disable autokick
            local hash = 'mute:'..msg.to.id
            if redis:get(hash) then
                sMute = 'allowed'
                sMuteD = '🔸'
            else
                sMute = 'not allowed'
                sMuteD = '🔹'
            end
            text = text..sMuteD..' Mute: '..sMute..'\n'

            --Enable/disable changing group name
            local hash = 'name:enabled:'..msg.to.id
            if redis:get(hash) then
                sName = 'allowed'
                sNameD = '🔸'
            else
                sName = 'not allowed'
                sNameD = '🔹'
            end
            text = text..sNameD..' Group Name: '..sName..'\n'

            --Enable/disable Flood
            local hash = 'anti-flood:'..msg.to.id
            if redis:get(hash) then
                sFlood = 'allowed'
                sFloodD = '🔸'
            else
                sFlood = 'not allowed'
                sFloodD = '🔹'
            end
            text = text..sFloodD..' Flood: '..sFlood..'\n'

            local hash = 'flood:max:'..msg.to.id
            if not redis:get(hash) then
                floodMax = 5
            else
                floodMax = redis:get(hash)
            end

            local hash = 'flood:time:'..msg.to.id
            if not redis:get(hash) then
                floodTime = 3
            else
                floodTime = redis:get(hash)
            end

            text = text..'🔺 Flood max: '..floodMax..'\n🔺 Flood time: '..floodTime..'\n'            
            
            --Send settings to group or supergroup
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, text, ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, text, ok_cb, false)
            end
        end 
        local hash = 'arabic:'..msg.to.id
        if redis:get(hash) then
            delete_msg(msg.id, ok_cb, false)
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, 'Arabic is not allowed in this chat', ok_cb, true)
                chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, 'Arabic is not allowed in this channel', ok_cb, true)
                channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
            end
        end
    elseif matches[1] == 'kickme' then
        local hash = 'kickme:'..msg.to.id
        if redis:get(hash) then
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, '@'..msg.from.username..' ('..msg.from.id..') bye.', ok_cb, true)
                chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, '@'..msg.from.username..' ('..msg.from.id..') bye.', ok_cb, true)
                channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
            end
        end  
    end
end

return {
    patterns = {
        '^#(settings)$',
        '^#(kickme)$',
        '^#(settings) (.*) (.*)$',
        "([\216-\219][\128-\191])"
    },
    pre_process = pre_process,
    run = run
    }
end
