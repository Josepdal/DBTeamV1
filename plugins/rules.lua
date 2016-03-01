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
--			Created by @Josepdal & @A7F			--
--												--
--------------------------------------------------
first_mod=true

<<<<<<< HEAD
local function set_rules_channel(msg, text)
  	local rules = text
  	local hash = 'channel:id:'..msg.to.id..':rules'
  	redis:set(hash, rules)
end

local function del_rules_channel(chat_id)
  	local hash = 'channel:id:'..chat_id..':rules'
  	redis:del(hash)
end

local function init_def_rules(chat_id)
  	local rules = 'ℹ️ Rules:\n'
              ..'1⃣ No Flood.\n'
              ..'2⃣ No Spam.\n'
              ..'3⃣ Try to stay on topic.\n'
              ..'4⃣ Forbidden any racist, sexual, homophobic or gore content.\n'
              ..'➡️ Repeated failure to comply with these rules will cause ban.'
              
  	local hash='channel:id:'..chat_id..':rules'
  	redis:set(hash, rules)
end

local function ret_rules_channel(msg)
  	local chat_id = msg.to.id
  	local hash = 'channel:id:'..msg.to.id..':rules'
  	if redis:get(hash) then
  		return redis:get(hash)
  	else
  		init_def_rules(chat_id)
  		return redis:get(hash)
  	end
=======
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
>>>>>>> origin/master
end


local function run(msg, matches)
  
<<<<<<< HEAD
    if matches[1] == 'rules' then
      	return ret_rules_channel(msg)
    elseif matches[1] == 'setrules' then
    	if permissions(msg.from.id, msg.to.id, 'rules') then
    		set_rules_channel(msg, matches[2])
    		return 'ℹ️ '..lang_text(msg.to.id, 'setRules')
    	end
    elseif matches[1] == 'remrules' then
    	if permissions(msg.from.id, msg.to.id, 'rules') then
    		del_rules_channel(msg.to.id)
    		return 'ℹ️ '..lang_text(msg.to.id, 'remRules')
    	end
    end
    
=======
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
>>>>>>> origin/master
end

return {
  patterns = {
<<<<<<< HEAD
    '^#(rules)$',
    '^#(setrules) (.+)$',
    '^#(remrules)$'
  }, 
  run = run 
}
=======
    "^#(rules)$",
    "^#(setrules) (.+)$",
    "^#(remrules)$"
  }, 
  run = run 
}
>>>>>>> origin/master
