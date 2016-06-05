do
function user99(msg, matches)
local reply_id = msg['id']
if is_sudo(msg) then
    reply_msg(get_receiver(msg), "./files/me/sudo.webp", ok_cb, false)
      local info = 'انت مطور'
 reply_msg(reply_id, info, ok_cb, false)
elseif is_admin1(msg) then
    reply_msg(get_receiver(msg), "./files/me/admin.webp", ok_cb, false)
    local info = 'انت مساعد مطور'
 reply_msg(reply_id, info, ok_cb, false)
elseif is_owner(msg) then
    reply_msg(get_receiver(msg), "./files/me/leader.webp", ok_cb, false)
    local info = 'انت مشرف'
 reply_msg(reply_id, info, ok_cb, false)
elseif is_momod(msg) then
    reply_msg(get_receiver(msg), "./files/me/moderator.webp", ok_cb, false)
    local info = 'انت ادمن'
 reply_msg(reply_id, info, ok_cb, false)
 else
    reply_msg(get_receiver(msg), "./files/me/member.webp", ok_cb, false)
      local info = 'انت عضو'
      reply_msg(reply_id, info, ok_cb, false)
 end
end
return {
    patterns ={
        
    "^([mM][Ee])$"
},
run = user99
}
end

