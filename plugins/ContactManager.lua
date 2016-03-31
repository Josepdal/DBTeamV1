local function get_contact_list_callback (cb_extra, success, result)
  local text = " "
  for k,v in pairs(result) do
    if v.print_name and v.id and v.phone then
      text = text..string.gsub(v.print_name ,  "_" , " ").." ["..v.id.."] = "..v.phone.."\n"
    end
  end
  local file = io.open("contactlist.txt", "w")
  file:write(text)
  file:flush()
  file:close()
  send_document("user#id"..cb_extra.target,"contactlist.txt", ok_cb, false)--.txt format
  local file = io.open("contactlist.json", "w")
  file:write(json:encode_pretty(result))
  file:flush()
  file:close()
  send_document("user#id"..cb_extra.target,"contactlist.json", ok_cb, false)--json format
end

local function get_dialog_list_callback(cb_extra, success, result)
  local text = ""
  for k,v in pairsByKeys(result) do
    if v.peer then
      if v.peer.type == "chat" then
        text = text.."group{"..v.peer.title.."}["..v.peer.id.."]("..v.peer.members_num..")"
      else
        if v.peer.print_name and v.peer.id then
          text = text.."user{"..v.peer.print_name.."}["..v.peer.id.."]"
        end
        if v.peer.username then
          text = text.."("..v.peer.username..")"
        end
        if v.peer.phone then
          text = text.."'"..v.peer.phone.."'"
        end
      end
    end
    if v.message then
      text = text..'\nlast msg >\nmsg id = '..v.message.id
      if v.message.text then
        text = text .. "\n text = "..v.message.text
      end
      if v.message.action then
        text = text.."\n"..serpent.block(v.message.action, {comment=false})
      end
      if v.message.from then
        if v.message.from.print_name then
          text = text.."\n From > \n"..string.gsub(v.message.from.print_name, "_"," ").."["..v.message.from.id.."]"
        end
        if v.message.from.username then
          text = text.."( "..v.message.from.username.." )"
        end
        if v.message.from.phone then
          text = text.."' "..v.message.from.phone.." '"
        end
      end
    end
    text = text.."\n\n"
  end
  local file = io.open("dialoglist.txt", "w")
  file:write(text)
  file:flush()
  file:close()
  send_document("user#id"..cb_extra.target,"dialoglist.txt", ok_cb, false)--.txt format
  local file = io.open("dialoglist.json", "w")
  file:write(json:encode_pretty(result))
  file:flush()
  file:close()
  send_document("user#id"..cb_extra.target,"dialoglist.json", ok_cb, false)--json format
end

-- Returns the key (index) in the config.enabled_plugins table
local function plugin_enabled( name )
  for k,v in pairs(_config.enabled_plugins) do
    if name == v then
      return k
    end
  end
  -- If not found
  return false
end

-- Returns true if file exists in plugins folder
local function plugin_exists( name )
  for k,v in pairs(plugins_names()) do
    if name..'.lua' == v then
      return true
    end
  end
  return false
end

local function reload_plugins( )
	plugins = {}
  return load_plugins()
end

local function run(msg, matches)
if matches[1] == "savecontact" and is_admin(msg) then
    phone = matches[2]
    first_name = matches[3]
    last_name = matches[4]
    add_contact(phone, first_name, last_name, ok_cb, false)
   return "User With Phone +"..matches[2].." has been added"
end

if matches[1] == "remcontact" and is_admin(msg) then
    del_contact("user#id"..matches[2], ok_cb, false)
    return "User #"..matches[2].." has been removed"
end

if matches[1] == "contactlist" and is_admin(msg) then
 get_contact_list(get_contact_list_callback, {target = msg.from.id})
      return "Contact List Sended To Your Private"
end

if matches[1] == "dialoglist" and is_admin(msg) then
    get_dialog_list(get_dialog_list_callback, {target = msg.from.id})
      return "Dialog List Sended To Your Private"
      end

if matches[1] == "reload" and matches[2] == "all" and is_admin(msg) then
receiver = get_receiver(msg)
		reload_plugins(true)
		post_msg(receiver, "#Bot Reloaded!\n#All Plugins Reloaded\n#All Changes Succesfully Installed!", ok_cb, false)
		return "#Bot Reloaded!\n#All Plugins Reloaded\n#All Changes Succesfully Installed!"
end
end

return {
    patterns = {
        "^[#!/](savecontact) (.*) (.*) (.*)$",
        "^[#!/](remcontact) (%d+)$",
        "^[#!/](contactlist)$",
        "^[#!/](dialoglist)$",
        "^[#!/](reload) (all)$",
    },
    run = run, 
}
