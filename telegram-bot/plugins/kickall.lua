local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, ok_cb, true)
  channel_kick_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, true)
  print(2)
  print('Mándame este número'..chat_id)
end

local function returnids(cb_extra, success, result)
   local receiver = cb_extra.receiver
   local chat_id = result.id
   local chatname = result.print_name
   local get_cmd = cb_extra.get_cmd
   if get_cmd == 'kickall' then
    for k,v in pairs(result.members) do
      --local data = load_data(_config.moderation.data)
      --[[if data[tostring(chat_id)] then
        if data[tostring(chat_id)]['moderators'][tostring(v.id)] then
          return nil
        end
      end]]
      if data['admins'] then
        if data['admins'][tostring(v.id)] then
          return nil
        end
      end
      if v.id ~= our_id then
        kick_user(v.id, chat_id)
      end
    end
   end
   print(3)
end

local function run(msg, matches)
   local receiver = get_receiver(msg)
   if not is_chat_msg(msg) then
     -- return 'This function only works on group'
   end
   print(1)
   if matches[1] == 'kickall' and matches[2] then
      if matches[2] ~= tostring(msg.to.id) then
        return 'Chat id missmatch'
      end
      local get_cmd = matches[1]
      local user_id = msg.to.id
      local text = 'Kicking all members of ' .. string.gsub(msg.to.print_name, '_', ' ') .. '...'
      send_large_msg(receiver, text)
      chat_info(receiver, returnids, {receiver=receiver, get_cmd=get_cmd})
   end
end

return {
   description = "Broadcast message to all group participant.",
   usage = {
      admin = {
        "!kickall <chat_id> : Kick all users from group",
        },
   },
   patterns = {
      "^!(kickall) (%d+)$",
   },
   run = run,
   moderated = true
}
