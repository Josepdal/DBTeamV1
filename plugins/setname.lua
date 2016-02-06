--By @MaSkAoS & @Josepdal
do

local function run(msg, matches)
	if is_sudo(msg) then
		local hash = 'name:enabled:'..msg.to.id
		if matches[2] == 'enable' then
			redis:set(hash, true)
			if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, 'Now you can rename the chat', ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, 'Now you can rename the channel', ok_cb, false)
            end
		elseif matches[2] == 'disable' then
			redis:del(hash)
			if msg.to.type == 'chat' then
                send_msg('chat#id'..msg.to.id, 'Now you can\'t rename the chat', ok_cb, false)
            elseif msg.to.type == 'channel' then
                send_msg('channel#id'..msg.to.id, 'Now you can\'t rename the channel', ok_cb, false)
            end
		else
			if redis:get(hash) then
			    if msg.to.type == 'chat' then
			    	rename_chat(msg.to.peer_id, matches[2], ok_cb, false)
			    elseif msg.to.type == 'channel' then
			    	rename_channel(msg.to.peer_id, matches[2], ok_cb, false)
			    end
			end
		end
	end

end

return {
patterns = {
'^!(setname) (.*)$'
},
run = run
}

end