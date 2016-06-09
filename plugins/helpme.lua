do
--local function help()
local function user99(msg,matches)
    if matches[1] == 'helpme' then
  local help_text_super = tostring(_config.help_text_super)
  return help_text_super
      end
      savelog(msg.to.id, name_log.." ["..msg.from.id.."] Used /help")
      return help()
    end
   
return {
    patterns = {
        '(helpme)$'
    },

  run = user99
}

end
