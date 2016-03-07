do
local function get_variables_hash(msg)
  if msg.to.type == 'channel' then
    return 'channel:'..msg.to.id..':variables'
  end
end 

local function get_all_variables_hash(msg)
local hash = ""
local text = {}
local list = ""
  	if msg.to.type == 'channel' then
    	hash = 'channel:'..msg.to.id..':variables'
  	end
	text = redis:hgetall(hash)
  	for k,v in pairs(text) do
  		list = list..""..k.." >> "..v.."\n\n"
  	end
  	return list
end 

local function get_value(msg, var_name)
  local hash = get_variables_hash(msg)
  if hash then
    local value = redis:hget(hash, var_name)
    if not value then
      return
    else
	  send_msg('channel#id'..msg.to.id,value,ok_cb,false)
      return            
    end
  end
end

local function clear_value(msg, name)
  if (not name) then
    return "not this use!"
  end
  local hash = get_variables_hash(msg)
  local text = {}
  text = redis:hgetall(hash)
  for k,v in pairs(text) do
  	if k == name then
  		redis:hdel(hash,name)
		send_msg('channel#id'..msg.to.id,"deleted :D",ok_cb,false)
  		return 
  	end
  end
  send_msg('channel#id'..msg.to.id,'nothing to delete here',ok_cb,false)
  return 
end

local function save_value(msg, name, value)
  if (not name or not value) then
    return "not this use!"
  end
  
  local hash = nil
  
  if msg.to.type == 'channel' then
    hash = 'channel:'..msg.to.id..':variables'
  end
  if msg.to.type == 'user' then
    hash = 'user:'..msg.from.id..':variables'
  end
  
  if hash then
    redis:hset(hash, name, value)
	  send_msg('channel#id'..msg.to.id,"Saved: "..name,ok_cb,false)
    return 
  end
end

local function run(msg, matches)
  
  if matches[1]:lower() == 'save' and permissions(msg.from.id, msg.to.id, "save") then
    matches[1]=matches[2]
    matches[2]=matches[3]
    local name = string.sub(matches[1], 1, 50)
    local value = string.sub(matches[2], 1, 1000)
    local text = save_value(msg, name, value)
    return text
  elseif matches[1]:lower() == 'cancel' and permissions(msg.from.id, msg.to.id, "cancel") then
    local text = clear_value(msg,matches[2])
    return text
  end
  
  if matches[1]:lower() == 'list saved' then
  	return get_all_variables_hash(msg)
  end
  
  if matches[1] then
    return get_value(msg, matches[1])
  else
    return
  end
  
end

return {
  patterns = {
   "^#([Ss]ave) ([^%s]+) (.+)$",
   "^#([Cc]ancel) (.+)$",
   "^#([Ll]ist saved)",
   "^(.+)" 
  }, 
  run = run 
}
end