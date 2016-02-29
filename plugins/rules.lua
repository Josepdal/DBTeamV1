--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @Josepdal & @MaSkAoS       --
--     Support: @Skneos,  @iicc1 & @serx666     --
--                                              --
--------------------------------------------------

do

local function set_rules_channel(msg,text)
  local rules = text
  local hash="channel:id"..msg.to.id.."rules"
  redis:set(hash,rules)
  return "ok! Rules are ready"
end

local function del_rules_channel(msg)
  local hash="channel:id"..msg.to.id.."rules"
  redis:del(hash)
  return "ok! Rules are gone"
end

local function ret_rules_channel(msg)
  local hash="channel:id"..msg.to.id.."rules"
  local rules=redis:get(hash)
  if not rules then
    return "there are no rules here. Anarchy in the USA!"
  end
  return rules
end

local function run(msg, matches)
    if matches[1]=="rules" then
      return ret_rules_channel(msg)
    end
    if matches[1]=="set" then
      return set_rules_channel(msg,matches[2])
    end
    if matches[1]=="del" then
      return del_rules_channel(msg)
    end
    return "sry, you failed lmao"
end

return {
  patterns = {
    "^#(rules)$",
    "^#rules (set) (.+)$",
    "^#rules (del)$"
  }, 
  run = run 
}

end
