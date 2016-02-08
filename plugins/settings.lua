--By @MaSkAoS & @Josepdal

do

local function run(msg)
    local hash = 'stickers:'..msg.to.id
    if redis:get(hash) then
        sStickers = 'Enabled'
        sStickersD = '🔸'
    else
        sStickers = 'Disabled'
        sStickersD = '🔹'
    end
    local hash = 'anti-flood:enabled:'..msg.to.id
    if redis:get(hash) then
        sFlood = 'Enabled'
        sFloodD = '🔸'
    else
        sFlood = 'Disabled'
        sFloodD = '🔹'
    end
    local hash = 'antilink:enabled:'..msg.to.id
    if redis:get(hash) then
        sLink = 'Enabled'
        sLinkD = '🔸'
    else
        sLink = 'Disabled'
        sLinkD = '🔹'
    end
    local hash = 'antiarabe:enabled:'..msg.to.id
    if redis:get(hash) then
        sArabe = 'Enabled'
        sArabeD = '🔸'
    else
        sArabe = 'Disabled'
        sArabeD = '🔹'
    end
    local hash = 'antibot:enabled:'..msg.to.id
    if redis:get(hash) then
        sBots = 'Enabled'
        sBotsD = '🔸'
    else
        sBots = 'Disabled'
        sBotsD = '🔹'
    end
    local hash = 'name:enabled:'..msg.to.id
    if redis:get(hash) then
        sName = 'Enabled'
        sNameD = '🔸'
    else
        sName = 'Disabled'
        sNameD = '🔹'
    end
    local hash = 'gifs:enabled:'..msg.to.id
    if redis:get(hash) then
        sGif = 'Enabled'
        sGifD = '🔸'
    else
        sGif = 'Disabled'
        sGifD = '🔹'
    end
    if msg.to.type == 'chat' then
        send_msg('chat#id'..msg.to.id, '⚙ Group settings:\n'..sStickersD..' Antistickers: '..sStickers..'\n'..sFloodD..' Anti-flood: '..sFlood..'\n'..sLinkD..' Antilink: '..sLink..'\n'..sArabeD..' Antiarabic: '..sArabe..'\n'..sBotsD..' AntiBots: '..sBots..'\n'..sNameD..' LockName: '..sName..'\n'..sGifD..' Antigifs: '..sGif, ok_cb, false)
    elseif msg.to.type == 'channel' then
        send_msg('channel#id'..msg.to.id, '⚙ Group settings:\n'..sStickersD..' Antistickers: '..sStickers..'\n'..sFloodD..' Anti-flood: '..sFlood..'\n'..sLinkD..' Antilink: '..sLink..'\n'..sArabeD..' Antiarabic: '..sArabe..'\n'..sBotsD..' AntiBots: '..sBots..'\n'..sNameD..' LockName: '..sName..'\n'..sGifD..' Antigifs: '..sGif, ok_cb, false)
    end
end

return {
patterns = {
'^#(settings)$'
},
run = run
}
end