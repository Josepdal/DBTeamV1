--by @xxdamage

function chat_new_user(msg)
   local name = msg.action.user.first_name:gsub('_', ' ')
   if msg.action.user.username then
      name = name..' AKA @'..msg.action.user.username
   end
   local chat = msg.to.print_name:gsub('_', ' ')
   local receiver = get_receiver(msg)
   local message = redis:get('welcome:'..msg.to.id)
   if not message then
      return 'Hello '..name..', and welcome to '..chat..'!'
   end
   send_msg(receiver, message, ok_cb, false)
end

local function wlc_enabled(msg)
   local var = true
   local hash = 'wlcstatus:'..msg.to.id
   local cstatus = redis:get(hash)
   if cstatus == 'off' then
      var = false
   end
   
   return var
end

local function bye_enabled(msg)
   local var = true
   local hash = 'byestatus:'..msg.to.id
   local cstatus = redis:get(hash)
   if cstatus == 'off' then
      var = false
   end
   
   return var
end

local function run(msg, matches)
local hash = 'welcome:'..msg.to.id
        if redis:get(hash) then
	local receiver = get_receiver(msg)
	--if not msg.service then
		--return "Are you trying to troll me?"
	--end
	if matches[1] == "chat_add_user" then
	   if not wlc_enabled(msg) then
	      return
   end
		return chat_new_user(msg)
	elseif matches[1] == "chat_add_user_link" then
	   if not wlc_enabled(msg) then
	      return
	   end
		local name = msg.from.first_name:gsub('_', ' ')
		local chat = msg.to.print_name:gsub('_', ' ')
		local message
		if msg.from.username then
			name = name..' AKA @'..msg.from.username
		end
		message = redis:get('welcome:'..msg.to.id)
		if not message then
         return 'Hello '..name..', and welcome to '..chat..'!'
      end
		send_msg(receiver, message, ok_cb, false)
	elseif matches[1] == "chat_del_user" then
	   if not bye_enabled(msg) then
	      return
	   end
		local name = msg.action.user.first_name:gsub('_', ' ')
		if msg.action.user.username then
			name = name..' AKA @'..msg.action.user.username
		end
		local message = redis:get('bye:'..msg.to.id)
		if not message then
         return 'Bye bye '..name..'!'
      end
		send_msg(receiver, message, ok_cb, false)
   elseif matches[1] == 'setwelcome' then
		if not permissions(msg.from.id, msg.to.id, "welcome") then
			return 'ЁЯЪля╕П┬л '..lang_text(msg.to.id, 'require_mod')
		end
      print(msg.to.id)
      local hash = 'welcome:'..msg.to.id
      redis:set(hash, matches[2])
      return 'New welcome is:\n\n'..matches[2]
   elseif matches[1] == 'getwelcome' then
      print(msg.to.id)
      local hash = 'welcome:'..msg.to.id
      local wel = redis:get(hash)
      if not wel then
         return 'No welcome setted'
      end
      return wel
   elseif matches[1] == 'setbye' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return ' 🚫'..lang_text(msg.to.id, 'require_mod')
		end
      print(msg.to.id)
      local hash = 'bye:'..msg.to.id
      redis:set(hash, matches[2])
      return 'New welcome is:\n\n'..matches[2]
   elseif matches[1] == 'getbye' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return ' 🚫'..lang_text(msg.to.id, 'require_mod')
		end
      print(msg.to.id)
      local hash = 'bye:'..msg.to.id
      local wel = redis:get(hash)
      if not wel then
         return 'No bye setted'
      end
      return wel
   elseif matches[1] == 'welcome on' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return ' 🚫'..lang_text(msg.to.id, 'require_mod')
		end
      local hash = 'wlcstatus:'..msg.to.id
      redis:set(hash, 'on')
      return 'Welcome: on'
   elseif matches[1] == 'welcome off' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return '🚫 '..lang_text(msg.to.id, 'require_mod')
		end
      local hash = 'wlcstatus:'..msg.to.id
      redis:set(hash, 'off')
      return 'Welcome: off'
   elseif matches[1] == 'bye on' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return ' 🚫'..lang_text(msg.to.id, 'require_mod')
		end
      local hash = 'byestatus:'..msg.to.id
      redis:set(hash, 'on')
      return 'Welcome: on'
   elseif matches[1] == 'bye off' then
   if not permissions(msg.from.id, msg.to.id, "welcome") then
			return ' 🚫'..lang_text(msg.to.id, 'require_mod')
		end
      local hash = 'byestatus:'..msg.to.id
      redis:set(hash, 'off')
      return 'Bye: off'
   end
end
end


return {
   description = "Service plugin that sends a custom message when an user enters a chat.",
   usage = "",
   patterns = {
      "^!!tgservice (chat_add_user)$",
	   "^!!tgservice (chat_del_user)$",
      "^!!tgservice (chat_add_user_link)$",
      "^#(setwelcome) (.*)",
      "^#(getwelcome)",
      "^#(setbye) (.*)",
      "^#(getbye)",
      "^#(welcome on)",
      "^#(welcome off)",
      "^#(bye on)",
      "^#(bye off)"
   },
   run = run
}
