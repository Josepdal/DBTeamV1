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

local function unmute_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash = 'muted:'..chat..':'..user
    redis:del(hash)
    if msg.to.type == 'chat' then
        send_msg('chat#id'..chat, 'User '..user..' unmuted', ok_cb,  true)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..chat, 'User '..user..' unmuted', ok_cb,  true)
    end
end

local function mute_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash = 'muted:'..chat..':'..user
    redis:set(hash, true)
    if msg.to.type == 'chat' then
        send_msg('chat#id'..chat, 'User '..user..' muted', ok_cb,  true)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..chat, 'User '..user..' muted', ok_cb,  true)
    end
end

local function mute_by_username(cb_extra, success, result)
    chat_type = cb_extra.chat_type
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    user_username = result.username
    local hash =  'muted:'..chat_id..':'..user_id
    redis:set(hash, true)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') muted', ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') muted', ok_cb, false)
    end
end

local function unmute_by_username(cb_extra, success, result)
    chat_type = cb_extra.chat_type
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    user_username = result.username
    local hash =  'muted:'..chat_id..':'..user_id
    redis:del(hash)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') unmuted', ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') unmuted', ok_cb, false)
    end
end

local function kick_user(user_id, chat_id)
    local chat = 'chat#id'..chat_id
    local user = 'user#id'..user_id
    local channel = 'channel#id'..chat_id
    if user_id == tostring(our_id) then
        send_msg(chat, "I won't kick myself!", ok_cb,  true)
    else
        chat_del_user(chat, user, ok_cb, true)
        channel_kick_user(channel, user, ok_cb, true)
    end
end

local function ban_user(user_id, chat_id)
    local chat = 'chat#id'..chat_id
    if user_id == tostring(our_id) then
        send_msg(chat, "I won't kick myself!", ok_cb,  true)
    else
        -- Save to redis
        local hash =  'banned:'..chat_id..':'..user_id
        redis:set(hash, true)
    end
end

local function unban_user(user_id, chat_id)
    local hash =  'banned:'..chat_id..':'..user_id
    redis:del(hash)
end

local function is_banned(user_id, chat_id)
    local hash =  'banned:'..chat_id..':'..user_id
    local banned = redis:get(hash)
    return banned or false
end

local function chat_kick(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local chat_type = msg.to.type
    if chat_type == 'chat' then
        chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('chat#id'..chat, 'User '..user..' kicked out', ok_cb,  true)
    elseif chat_type == 'channel' then
        channel_kick_user('channel#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('channel#id'..chat, 'User '..user..' kicked out', ok_cb,  true)
    end
end

local function chat_ban(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash =  'banned:'..chat..':'..user
    redis:set(hash, true)
    chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
    send_msg('chat#id'..chat, 'User '..user..' banned', ok_cb,  true)
end

local function gban_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash = 'gban:'..user
    redis:set(hash, true)
    if msg.to.type == 'chat' then
        chat_del_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('chat#id'..chat, 'User '..user..' globally banned', ok_cb,  true)
    elseif msg.to.type == 'channel' then
        channel_kick_user('channel#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('channel#id'..chat, 'User '..user..' globally banned', ok_cb,  true)
    end
end

local function ungban_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    local hash = 'gban:'..user
    redis:del(hash)
    if msg.to.type == 'chat' then
        chat_add_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('chat#id'..chat, 'User '..user..' globally unbanned', ok_cb,  true)
    elseif msg.to.type == 'channel' then
        channel_invite_user('channel#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('channel#id'..chat, 'User '..user..' globally unbanned', ok_cb,  true)
    end
end

local function add_by_reply(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    if msg.to.type == 'chat' then
        chat_add_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('chat#id'..chat, 'User '..user..' added to chat', ok_cb,  true)
    elseif msg.to.type == 'channel' then
        channel_invite_user('channel#id'..chat, 'user#id'..user, ok_cb, false)
        send_msg('channel#id'..chat, 'User '..user..' added to channel', ok_cb,  true)
    end
end

local function channel_ban(extra, success, result)
    local msg = result
    msg = backward_msg_format(msg)
    local chat = msg.to.id
    local user = msg.from.id
    channel_kick_user('channel#id'..chat, 'user#id'..user, ok_cb, true)
    send_msg('channel#id'..chat, 'User '..user..' banned', ok_cb,  true)
    ban_user(user, chat)
end

local function chat_unban(extra, success, result)
    result = backward_msg_format(result)
    local msg = result
    local chat = msg.to.id
    local user = msg.from.id
    unban_user(user, chat)
    chat_add_user('chat#id'..chat, 'user#id'..user, ok_cb, false)
    send_msg(chat, 'User '..user..' unbanned', ok_cb,  true)
end

local function channel_unban(extra, success, result)
    local msg = result
    msg = backward_msg_format(msg)
    local chat = msg.to.id
    local user = msg.from.id
    unban_user(user, chat)
    channel_invite_user('channel#id'..chat, 'user#id'..user, ok_cb, true)
    send_msg('channel#id'..chat, 'User '..user..' unbanned', ok_cb,  true)
    
end

local function ban_by_username(cb_extra, success, result)
    chat_type = cb_extra.chat_type
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    user_username = result.username
    local hash =  'banned:'..chat_id..':'..user_id
    redis:set(hash, true)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') banned', ok_cb, false)
        chat_del_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') banned', ok_cb, false)
        channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    end
    ban_user(user_id, chat_id)
end

local function kick_by_username(cb_extra, success, result)
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    chat_type = cb_extra.chat_type
    user_username = result.username
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') kicked out', ok_cb, false)
        chat_del_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') kicked out', ok_cb, false)
        channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    end
end

local function gban_by_username(cb_extra, success, result)
    local chat_id = cb_extra.chat_id
    local user_id = result.peer_id
    local user_username = result.username
    local chat_type = cb_extra.chat_type
    local hash =  'gban:'..user_id
    redis:set(hash, true)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') globally banned', ok_cb, false)
        chat_del_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') globally banned', ok_cb, false)
        channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    end
end

local function ungban_by_username(cb_extra, success, result)
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    user_username = result.username
    chat_type = cb_extra.chat_type
    local hash =  'gban:'..user_id
    redis:del(hash)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') globally unbanned', ok_cb, false)
        chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') globally unbanned', ok_cb, false)
        channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    end
end

local function unban_by_username(cb_extra, success, result)
    chat_type = cb_extra.chat_type
    chat_id = cb_extra.chat_id
    user_id = result.peer_id
    user_username = result.username
    local hash =  'banned:'..chat_id..':'..user_id
    redis:del(hash)
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') is unbanned', ok_cb, false)
        chat_add_user('chat#id'..chat_id, 'user#id'..user_id, callback, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') is unbanned', ok_cb, false)
        channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, callback, false)
    end
end

local function add_by_username(cb_extra, success, result)
    local chat_type = cb_extra.chat_type
    local chat_id = cb_extra.chat_id
    local user_id = result.peer_id
    local user_username = result.username
    if chat_type == 'chat' then
        send_msg('chat#id'..chat_id, 'User @'..user_username..' ('..user_id..') added to chat', ok_cb, false)
        chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    elseif chat_type == 'channel' then
        send_msg('channel#id'..chat_id, 'User @'..user_username..' ('..user_id..') added to channel', ok_cb, false)
        channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
    end
end

local function is_gbanned(user_id, chat_id)
    local hash =  'gban:'..user_id
    local banned = redis:get(hash)
    return banned or false
end

local function pre_process(msg)
    
    --Checking mute
    local hash = 'muted:'..msg.to.id..':'..msg.from.id
    if redis:get(hash) then
        if msg.to.type == 'chat' then
            delete_msg(msg.id, ok_cb, true)
        elseif msg.to.type == 'channel' then
            delete_msg(msg.id, ok_cb, true)
        end
    end

    -- SERVICE MESSAGE
    if msg.action and msg.action.type then
        local action = msg.action.type
        -- Check if banned user joins chat
        if action == 'chat_add_user' or action == 'chat_add_user_link' then
            local user_id
            if msg.action.link_issuer then
                user_id = msg.from.id
            else
                user_id = msg.action.user.id
            end
            print('Checking invited user '..user_id)
            local banned = is_banned(user_id, msg.to.id) or is_gbanned(user_id, msg.to.id)
            if banned then
                print('User is banned!')
                kick_user(user_id, msg.to.id)
            end
        end
        -- No further checks
        return msg
    end

    -- BANNED USER TALKING
    if msg.to.type == 'chat' or msg.to.type == 'channel' then
        local user_id = msg.from.id
        local chat_id = msg.to.id
        local banned = is_banned(user_id, chat_id) or is_gbanned(user_id, msg.to.id)
        if banned then
            print('Banned user talking!')
            ban_user(user_id, chat_id)
            kick_user(user_id, chat_id)
            msg.text = ''
        end
    end
    return msg
end

local function run(msg, matches)
    if not is_sudo(msg) then
        return nil
    end
    if matches[1] == 'ban' then
        local chat_id = msg.to.id
        local chat_type = msg.to.type
        -- Using pattern #ban
        if msg.reply_id then
            if msg.to.type == 'chat' then
                get_message(replyId, chat_ban, false)
            elseif msg.to.type == 'channel' then
                get_message(msg.reply_id, channel_ban, {receiver=get_receiver(msg)})
            end
        end
        -- Using pattern #ban user @username
        if not is_id(matches[2]) then
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, ban_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        -- Using pattern #ban id #id
        else
            user_id = matches[2]
            if chat_type == 'chat' then
                send_msg('chat#id'..chat_id, 'User '..user_id..' banned', ok_cb, false)
                chat_del_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            elseif chat_type == 'channel' then
                send_msg('channel#id'..chat_id, 'User '..user_id..' banned', ok_cb, false)
                channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            end
            ban_user(user_id, chat_id)
        end
    elseif matches[1] == 'unban' then
        local chat_id = msg.to.id
        local chat_type = msg.to.type
        if msg.reply_id then
            if msg.to.type == 'chat' then
                get_message(replyId, chat_unban, false)
            elseif msg.to.type == 'channel' then
                get_message(msg.reply_id, channel_unban, false)
            end
        end
        -- Using pattern #ban user @username
        if not is_id(matches[2]) then
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, unban_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        -- Using pattern #ban id #id
        else
            local hash =  'banned:'..chat_id..':'..matches[2]
            redis:del(hash)
            if msg.to.type == 'chat' then
                chat_add_user('chat#id'..chat_id, 'user#id'..matches[2], ok_cb, false)
            elseif msg.to.type == 'channel' then
                channel_invite_user('channel#id'..chat_id, 'user#id'..matches[2], ok_cb, false)
            end
            return 'User '..matches[2]..' is unbanned'
        end
    elseif matches[1] == 'kick' then
        local chat_id = msg.to.id
        local chat_type = msg.to.type
        -- Using pattern #kick
        if msg.reply_id then
            get_message(msg.reply_id, chat_kick, false)
        end
        if not is_id(matches[2]) then
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, kick_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        else
            local user_id = matches[2]
            if msg.to.type == 'chat' then
                send_msg('chat#id'..chat_id, 'User '..user_id..' kicked out', ok_cb, false)
                kick_user(matches[2], msg.to.id)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..chat_id, 'User '..user_id..' kicked out', ok_cb, false)
                kick_user(matches[2], msg.to.id)
            end
        end
    elseif matches[1] == 'gban' then
        chat_id = msg.to.id
        chat_type = msg.to.type
        if msg.reply_id then
            get_message(msg.reply_id, gban_by_reply, false)
        end
        if not is_id(matches[2]) then
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, gban_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        else
            local user_id = matches[2]
            local hash = 'gban:'..user_id
            redis:set(hash, true)
            if chat_type == 'chat' then
                send_msg('chat#id'..chat_id, 'User '..user_id..' globally banned', ok_cb, false)
                chat_del_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            elseif chat_type == 'channel' then
                send_msg('channel#id'..chat_id, 'User '..user_id..' globally banned', ok_cb, false)
                channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            end
        end
    elseif matches[1] == 'ungban' then
    	chat_id = msg.to.id
    	chat_type = msg.to.type
        if msg.reply_id then
            get_message(msg.reply_id, ungban_by_reply, false)
        end
        if not is_id(matches[2]) then
            local chat_type = msg.to.type
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, ungban_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        else
            local user_id = matches[2]
            local hash = 'gban:'..user_id
            redis:del(hash)
            if chat_type == 'chat' then
                send_msg('chat#id'..chat_id, 'User '..user_id..' globally unbanned', ok_cb, false)
                chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            elseif chat_type == 'channel' then
                send_msg('channel#id'..chat_id, 'User '..user_id..' globally unbanned', ok_cb, false)
                channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            end
        end   
    elseif matches[1] == 'add' then
        local chat_id = msg.to.id
        local chat_type = msg.to.type
        if msg.reply_id then
            get_message(msg.reply_id, add_by_reply, false)
        end
        if not is_id(matches[2]) then
            local member = string.gsub(matches[2], '@', '')
            resolve_username(member, add_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
        else
            local user_id = matches[2]
            if chat_type == 'chat' then
                send_msg('chat#id'..chat_id, 'User '..user_id..' added to chat', ok_cb, false)
                chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            elseif chat_type == 'channel' then
                send_msg('channel#id'..chat_id, 'User '..user_id..' added to channel', ok_cb, false)
                channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
            end
        end   
    elseif matches[1] == 'mute' then
        if msg.reply_id then
            get_message(msg.reply_id, mute_by_reply, false)
        end
        if matches[2] then
            if is_id(matches[2]) then
                local hash = 'muted:'..msg.to.id..':'..matches[2]
                redis:set(hash, true)
                if msg.to.type == 'chat' then
                    send_msg('chat#id'..msg.to.id, 'User '..matches[2]..' is muted', ok_cb, true)
                elseif msg.to.type == 'channel' then
                    send_msg('channel#id'..msg.to.id, 'User '..matches[2]..' is muted', ok_cb, true)
                end
            else
                local member = string.gsub(matches[2], '@', '')
                local chat_id = msg.to.id
                local chat_type = msg.to.type
                resolve_username(member, mute_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
            end
        end
    elseif matches[1] == 'unmute' then
        if msg.reply_id then
            get_message(msg.reply_id, unmute_by_reply, false)
        end
        if matches[2] then
            if is_id(matches[2]) then
                local hash = 'muted:'..msg.to.id..':'..matches[2]
                redis:del(hash)
                if msg.to.type == 'chat' then
                    send_msg('chat#id'..msg.to.id, 'User '..matches[2]..' is muted', ok_cb, true)
                elseif msg.to.type == 'channel' then
                    send_msg('channel#id'..msg.to.id, 'User '..matches[2]..' is muted', ok_cb, true)
                end
            else
                local member = string.gsub(matches[2], '@', '')
                local chat_id = msg.to.id
                local chat_type = msg.to.type
                resolve_username(member, unmute_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
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
    description = "Plugin to manage bans, kicks and global bans.",
    usage = {
        '#add: If type in old reply, you can add an old user that is out right now.',
        '#add id <user_id>: Add a user by id into chat/channel group.',
        '#add user <@username>: Add a user by username into chat/channel group.',
        '#kick: If type in reply, will kick user from chat/channel group.',
        '#kick id <user_id>: Kick user from chat/channel group',
        '#kick user <@username>: Kick user from chat/channel group.',
        '#ban: If type in reply, will ban user from chat/channel group.',
        '#ban id <user_id>: Kick user from chat and kick if user joins chat/channel again.',
        '#ban user <@username>: Kick user from chat and kick if user joins chat/channel again.',
        '#unban: If type in reply, will unban user from chat/channel group.',
        '#unban id <user_id>: Unban user.',
        '#unban user <@username>: Unban user.',
        '#gban: If type in reply, will ban user from all chats/channels groups.',
        '#gban id <user_id> : Kick user_id from all chats/channels and kick user if he joins again.',
        '#gban user <@username> : Kick username from all chats/channels and kick user if he joins again.',
        '#ungban: If type in reply, will unban user globally.',
        '#ungban id <user_id> : Unban user_id from all chats/channels.',
        '#ungban user <@username> : Unban username from all chats/channels.',
        '#mute: If type in reply, you can mute a user.',
        '#mute id <user_id>: Mute a <user_id> in this chat/channel group.',
        '#mute user <@username>: Mute a <@username> in this chat/channel group.',
        '#unmute: If type in reply, you can mute a user.',
        '#unmute id <user_id>: Unmute a <user_id> in this chat/channel group.',
        '#unmute user <@username>: Unmute a <@username> in this chat/channel group.'
    },
    patterns = {
        "^#(ban) (.*)$",
        "^#(ban)$",
        "^#(unban) (.*)$",
        "^#(unban)$",
        "^#(kick) (.*)$",
        "^#(kick)$",
        "^#(add) (.*)$",
        "^#(add)$",
        "^#(gban) (.*)$",
        "^#(gban)$",
        "^#(ungban) (.*)$",
        "^#(ungban)$",
        '^#(mute) (.*)$',
        '^#(mute)$',
        '^#(unmute) (.*)$',
        '^#(unmute)$',
        "^!!tgservice (.*)$"
    },
    run = run,
    pre_process = pre_process
}
end