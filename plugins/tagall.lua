--by @xxdamage


local function tagall(cb_extra, success, result)
    local receiver = cb_extra.receiver
    local chat_id = "channel#id"..cb_extra.chat
    local text = ''
    for k,v in pairs(result) do
        if v.username then
			text = text..v.first_name.." [@"..v.username.."]\n"
			else
			--text = text..v.first_name.."\n"
		end
    end
	text = text.."\n‼️"..cb_extra.msg_text
	send_large_msg(receiver, text)
end
local function run(msg, matches)
local hash = 'tagall:'..msg.to.id
        if redis:get(hash) then
if permissions(msg.from.id, msg.to.id, "difusion") then
else
            return '🚫 '..lang_text(msg.to.id, 'require_mod')
        end
    local receiver = get_receiver(msg)
	if matches[1] then
		channel_get_users(receiver, tagall, {receiver = receiver,msg_text = matches[1], chat=msg.to.id})
	end
	return
end
end


return {
  description = "Menciona a todos con un mensaje.",
  usage = {
    "#tagall [msg]."
  },
  patterns = {
    "^[#/]tagall +(.+)$"
  },
  run = run
}
