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

-- Returns true if is not empty
local function has_usage_data(dict)
  if (dict.usage == nil or dict.usage == '') then
    return false
  end
  return true
end

-- Get commands for that plugin
local function plugin_help(name)
  local plugin = plugins[name]
  if not plugin then return nil end

  local text = ""
  if (type(plugin.usage) == "table") then
    for ku,usage in pairs(plugin.usage) do
      text = text..usage..'\n'
    end
    text = text..'\n'
  elseif has_usage_data(plugin) then -- Is not empty
    text = text..plugin.usage..'\n\n'
  end
  return text
end

-- !help all command
local function help_all()
  local ret = ""
  for name in pairs(plugins) do
    ret = ret .. plugin_help(name) .. '======================\n'
  end
  return ret
end

local function run(msg, matches)
  if permissions(msg.from.id, msg.to.id, "commands") then
    if matches[1] == "#commands" then
      return help_all()
    else 
      local text = '© Commands for '..matches[1]..':\n'
      local text = text..plugin_help(matches[1])
      if not text then
        text = telegram_help()
      end
      return text
    end
  end
end

return {
  patterns = {
    "^#commands$",
    "^#commands (.+)"
  }, 
  run = run 
}

end