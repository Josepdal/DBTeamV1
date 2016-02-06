do

function run(msg, matches)
  return 'DBTeam Bot V1 Super Grupos\nAn advance Administration bot based on yagop/telegram-bot \n\nhttp://github.com/DBTeam-ES/DBTeam-Bot\n\nDevelopers :\n@MaSkAoS\n@Josepdal\n\nSupport :\n@skneos\n@Thef7HD' 
  --[[ Checkout http://github.com/Desarrollo-Bots-Telegram-ES/DBTeam-Bot
  --GNU GPL v2 license.]]
end

return {
  description = "Shows bot version", 
  usage = "!version: Shows bot version",
  patterns = {
    "^!version$"
  }, 
  run = run 
}

end
