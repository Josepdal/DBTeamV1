--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--         Support: @Skneos & @Thef7HD          --
--                                              --
--------------------------------------------------

do

local function remove_message(extra, success, result)
    msg = backward_msg_format(result)
    print(2)
    delete_msg(msg.id, ok_cb, false)
end

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
                    send_msg('chat#id'..msg.to.id, lang_text(chat, 'user')..' @'..msg.from.username..' ('..msg.from.id..') '..lang_text(chat, 'isFlooding'), ok_cb, true)
                    chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
                elseif msg.to.type == 'channel' then
                    send_msg('channel#id'..msg.to.id, lang_text(chat, 'user')..' @'..msg.from.username..' ('..msg.from.id..') '..lang_text(chat, 'isFlooding'), ok_cb, true)
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
            mp4 = msg.media.caption or 'audio'
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
                gifytpe = string.find(mp4, 'gif.mp4') or 'audio'
                if gifytpe == 'audio' then
                    hash = 'audio:'..msg.to.id
                    if redis:get(hash) then
                        delete_msg(msg.id, ok_cb, false)
                    end
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
    if not is_sudo(msg) then
        return
    end
    if matches[1] == 'settings' then
        if matches[2] ~= nil then
            --if is_sudo(msg) then
                if matches[2] == 'stickers' then
                    if matches[3] == 'enable' then
                        hash = 'stickers:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noStickersT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noStickersL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'stickers:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'stickersT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'stickersL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'gifs' then
                    if matches[3] == 'enable' then
                        hash = 'gifs:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'gifsT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'gifsL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'gifs:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noGifsT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noGifsL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'photos' then
                    if matches[3] == 'enable' then
                        hash = 'photo:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'photosT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'photosL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'photo:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noPhotosT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noPhotosL'), ok_cb, false)
                        end
                    end
                    return
                 elseif matches[2] == 'arabic' then
                    if matches[3] == 'enable' then
                        hash = 'arabic:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'arabicT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'arabicL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'arabic:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noArabicT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noArabicL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'audios' then
                    if matches[3] == 'enable' then
                        hash = 'audio:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'audiosT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'audiosL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'audio:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noAudiosT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noAudiosL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'kickme' then
                    if matches[3] == 'enable' then
                        hash = 'kickme:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'kickmeT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'kickmeL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'kickme:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noKickmeT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noKickmeL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'flood' then
                    if matches[3] == 'enable' then
                        hash = 'flood:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'floodT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'floodL'), ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        hash = 'flood:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noFloodT'), ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noFloodL'), ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'floodtime' then
                    if not matches[3] then
                    else
                        hash = 'flood:time:'..msg.to.id
                        redis:set(hash, matches[3])
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'floodTime')..matches[3], ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'floodTime')..matches[3], ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'maxflood' then
                    if not matches[3] then
                    else
                        hash = 'flood:max:'..msg.to.id
                        redis:set(hash, matches[3])
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'floodMax')..matches[3], ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'floodMax')..matches[3], ok_cb, false)
                        end
                    end
                    return
                elseif matches[2] == 'setname' then
                    if matches[3] == 'enable' then
                        local hash = 'name:enabled:'..msg.to.id
                        redis:set(hash, true)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Now you can rename the chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Now you can rename the channel', ok_cb, false)
                        end
                    elseif matches[3] == 'disable' then
                        local hash = 'name:enabled:'..msg.to.id
                        redis:del(hash)
                        if msg.to.type == 'chat' then
                            send_msg('chat#id'..msg.to.id, 'Now you can\'t rename the chat', ok_cb, false)
                        elseif msg.to.type == 'channel' then
                            send_msg('channel#id'..msg.to.id, 'Now you can\'t rename the channel', ok_cb, false)
                        end
                    end
                end
            --end
        else
            if msg.to.type == 'chat' then
                text = '⚙ '..lang_text(msg.to.id, 'gSettings')..':\n'
            elseif msg.to.type == 'channel' then
                text = '⚙ '..lang_text(msg.to.id, 'sSettings')..':\n'
            end

            local allowed = lang_text(msg.to.id, 'allowed')
            local noAllowed = lang_text(msg.to.id, 'noAllowed')

            --Enable/disable Stickers
            local hash = 'stickers:'..msg.to.id
            if redis:get(hash) then
                sStickers = noAllowed
                sStickersD = '🔹'
            else
                sStickers = allowed
                sStickersD = '🔸'
            end
            text = text..sStickersD..' '..lang_text(msg.to.id, 'stickers')..': '..sStickers..'\n'

            --Enable/disable Links
            local hash = 'antilink:'..msg.to.id
            if redis:get(hash) then
                sLink = noAllowed
                sLinkD = '🔹'
            else
                sLink = allowed
                sLinkD = '🔸'
            end
            text = text..sLinkD..' '..lang_text(msg.to.id, 'links')..': '..sLink..'\n'

            --Enable/disable arabic messages
            local hash = 'antiarabe:'..msg.to.id
            if redis:get(hash) then
                sArabe = allowed
                sArabeD = '🔸'              
            else
                sArabe = noAllowed
                sArabeD = '🔹'
            end
            text = text..sArabeD..' '..lang_text(msg.to.id, 'arabic')..': '..sArabe..'\n'

            --Enable/disable bots
            local hash = 'antibot:'..msg.to.id
            if redis:get(hash) then
                sBots = allowed
                sBotsD = '🔸'
            else
                sBots = noAllowed
                sBotsD = '🔹'
            end
            text = text..sBotsD..' '..lang_text(msg.to.id, 'bots')..': '..sBots..'\n'
            
            --Enable/disable gifs
            local hash = 'gifs:'..msg.to.id
            if redis:get(hash) then
                sGif = noAllowed
                sGifD = '🔹'
            else
                sGif = allowed
                sGifD = '🔸'
            end
            text = text..sGifD..' '..lang_text(msg.to.id, 'gifs')..': '..sGif..'\n'
            
            --Enable/disable send photos
            local hash = 'photo:'..msg.to.id
            if redis:get(hash) then
                sPhoto = allowed
                sPhotoD = '🔸'
            else
                sPhoto = noAllowed
                sPhotoD = '🔹'
            end
            text = text..sPhotoD..' '..lang_text(msg.to.id, 'photos')..': '..sPhoto..'\n'

            --Enable/disable send audios
            local hash = 'audio:'..msg.to.id
            if redis:get(hash) then
                sAudio = noAllowed
                sAudioD = '🔹'
            else
                sAudio = allowed
                sAudioD = '🔸'
            end
            text = text..sAudioD..' '..lang_text(msg.to.id, 'audios')..': '..sAudio..'\n'

            --Enable/disable autokick
            local hash = 'kickme:'..msg.to.id
            if redis:get(hash) then
                sKickme = allowed
                sKickmeD = '🔸'
            else
                sKickme = noAllowed
                sKickmeD = '🔹'
            end
            text = text..sKickmeD..' '..lang_text(msg.to.id, 'kickme')..': '..sKickme..'\n'

            --Enable/disable autokick
            local hash = 'spam:'..msg.to.id
            if redis:get(hash) then
                sSpam = noAllowed
                sSpamD = '🔹'
            else
                sSpam = allowed
                sSpamD = '🔸'
            end
            text = text..sSpamD..' '..lang_text(msg.to.id, 'spam')..': '..sSpam..'\n'

            --Enable/disable changing group name
            local hash = 'name:enabled:'..msg.to.id
            if redis:get(hash) then
                sName = allowed
                sNameD = '🔸'
            else
                sName = noAllowed
                sNameD = '🔹'
            end
            text = text..sNameD..' '..lang_text(msg.to.id, 'gName')..': '..sName..'\n'

            --Enable/disable Flood
            local hash = 'anti-flood:'..msg.to.id
            if redis:get(hash) then
                sFlood = allowed
                sFloodD = '🔸'
            else
                sFlood = noAllowed
                sFloodD = '🔹'
            end
            text = text..sFloodD..' '..lang_text(msg.to.id, 'flood')..': '..sFlood..'\n'

            local hash = 'langset:'..msg.to.id
            if redis:get(hash) then
                sLang = redis:get(hash)
                sLangD = '🔸'
            else
                sLang = lang_text(msg.to.id, 'noSet')
                sLangD = '🔹'
            end
            text = text..sLangD..' '..lang_text(msg.to.id, 'language')..': '..string.upper(sLang)..'\n'

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

            text = text..'🔺 '..lang_text(msg.to.id, 'mFlood')..': '..floodMax..'\n🔺 '..lang_text(msg.to.id, 'tFlood')..': '..floodTime..'\n'            
            
            --Send settings to group or supergroup
            if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, text, ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, text, ok_cb, false)
            end
        end
        return
    elseif matches[1] == 'rem' then
        if msg.reply_id then
            print(1)
            get_message(msg.reply_id, remove_message, false)
        end
        return
    elseif matches[1] == 'lang' then
        hash = 'langset:'..msg.to.id
        redis:set(hash, matches[2])
        return lang_text(msg.to.id, 'langUpdated')..matches[2]
    elseif matches[1] == 'setname' then
        local hash = 'name:enabled:'..msg.to.id
        if redis:get(hash) then
            if msg.to.type == 'chat' then
                rename_chat(msg.to.peer_id, matches[2], ok_cb, false)
            elseif msg.to.type == 'channel' then
                rename_channel(msg.to.peer_id, matches[2], ok_cb, false)
            end
        end
        return
    end
    local hash = 'arabic:'..msg.to.id
    if redis:get(hash) then
        delete_msg(msg.id, ok_cb, false)
        if msg.to.type == 'chat' then
            send_msg('chat#id'..msg.to.id, lang_text(msg.to.id, 'noArabicT'), ok_cb, true)
            chat_del_user('chat#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        elseif msg.to.type == 'channel' then
            send_msg('channel#id'..msg.to.id, lang_text(msg.to.id, 'noArabicL'), ok_cb, true)
            channel_kick_user('channel#id'..msg.to.id, 'user#id'..msg.from.id, ok_cb, true)
        end
    end
end

return {
    patterns = {
        '^#(settings)$',
        '^#(kickme)$',
        '^#(settings) (.*) (.*)$',
        '^#(rem)$',
        '^#(setname) (.*)$',
        '^#(lang) (.*)$',
        '([\216-\219][\128-\191])'
    },
    pre_process = pre_process,
    run = run
}
end