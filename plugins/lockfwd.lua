do
local function pre_process(msg)
    --Checking mute
    local hash = 'mate:'..msg.to.id
    if redis:get(hash) and msg.fwd_from and not is_sudo(msg) and not is_owner(msg) and not is_momod(msg) and not is_admin1(msg)  then
            delete_msg(msg.id, ok_cb, true)
            return "done"
        end
        return msg
    end
local function user99(msg, matches)
    chat_id =  msg.to.id
    
    if is_momod(msg) and matches[1] == 'lock' then
                    local hash = 'mate:'..msg.to.id
                    redis:set(hash, true)
                    return "The fwd was locked"
        elseif is_momod(msg) and matches[1] == 'unlock' then
                    local hash = 'mate:'..msg.to.id
                    redis:del(hash)
                    return "The fwd was unlocked"
        
    end
end    
return {
    patterns = {
        '^[/!#](lock) fwd$',
        '^[/!#](unlock) fwd$',
    },
    run = user99,
    pre_process = pre_process
}
end