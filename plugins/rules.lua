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
first_mod=true

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

local function init_def_rules(id)
  local rules=" ℹ️ Rules:\n"
              .." 1⃣ No Flood.\n"
              .." 2⃣ No Spam.\n"
              .." 3⃣ Try to stay on topic.\n"
              .." 4⃣ Forbidden any racist, sexual, homophobic or gore content.\n"
              .." ➡️ Repeated failure to comply with these rules will cause ban."
              
  local hash="channel:id"..id.."rules"
  redis:set(hash,rules)
  first_mod=false
end

local function ret_rules_channel(msg)
  local id=msg.to.id
  local hash="channel:id"..msg.to.id.."rules"
  local rules=redis:get(hash)
  if (not rules) and first_mod then
    init_def_rules(id)
  elseif not rules then
    return "there are no rules here. Anarchy in the USA!"
  end
  return rules
end


local function run(msg, matches)
  
    if matches[1]=="rules" then
      return ret_rules_channel(msg)
    end
    
    if permissions(msg.from.id, msg.to.id, "rules") then
      if matches[1]=="setrules" then
        return set_rules_channel(msg,matches[2])
      elseif matches[1]=="remrules" then
        return del_rules_channel(msg)
      else return "nope"
      end
    end
    
    return "sry, you failed lmao"
end

return {
  patterns = {
    "^#(rules)$",
    "^#(setrules) (.+)$",
    "^#(remrules)$"
  }, 
  run = run 
}
