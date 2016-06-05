local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'The msgs is deleted !!"', ok_cb, false)
  else
    send_msg(extra.chatid, 'The msgs is deleted !!', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'dele' and is_sudo(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 1000000 or tonumber(matches[2]) < 1 then
        return "only from num 1 to 1000000 !!"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "for sudo only"
    end
  else
    return 
  end
end

return {
    patterns = {
        '^[!/#](dele) (%d*)$'
    },
    run = run
}