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
  return [[
ℹ️ Rules:
1⃣ No Flood.
2⃣ No Spam.
3⃣ Try to stay on topic.
4⃣ Forbidden any racist, sexual, homophobic or gore content.
➡️ Repeated failure to comply with these rules will cause ban.]]
end

return {
  patterns = {
    "^#rules$"
  }, 
  run = run 
}

end
