do
function user99(msg, matches)
       if not is_momod(msg) then
        return "only for admin"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "send💡\n !newlink\n 🔹to get a new link🔌🌝 "
       end
         local text = "⚙link of group:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "look at Your vip to get link 🖐🏼🌚"
end
return {
  patterns = {
    "^[/#!]([Vv]iplink)$"
  },
  run = user99
}
end