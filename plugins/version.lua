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

function run(msg, matches)
  return 'DBTeam Bot V1 Supergroups\nAn advanced Administration bot based on yagop/telegram-bot \n\nhttp://github.com/Josepdal/DBTeam\n\nDevelopers :\n@MaSkAoS\n@Josepdal\n\nSupport :\n@skneos\n@iicc1\n@Serx666' 
  --[[ Checkout https://github.com/Josepdal/DBTeam
  --GNU GPL v2 license.]]
end

return {
  patterns = {
    "^#version$"
  }, 
  run = run 
}

end
