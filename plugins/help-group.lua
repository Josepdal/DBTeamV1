do
--local function help()
local function user99(msg,matches)
    if matches[1] == 'help' then
  local help_text_realm = tostring(_config.help_text_realm)
  return help_text_realm
      end
      savelog(msg.to.id, name_log.." ["..msg.from.id.."] Used /help")
      return help()
    end
   
return {
    patterns = {
        '[#!/](help)'
        
    },

  run = user99
}

end
