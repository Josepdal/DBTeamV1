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
--      Plugin: @jorgemar45 & @M4STER_ANGEL     --
--                                              --
--------------------------------------------------

--[[
TO USE THIS PLUGIN
You must install some dependences. Execute this commands in terminal:

cd DBTeam
./.luarocks/bin/luarocks install lunitx
./.luarocks/bin/luarocks install set
./.luarocks/bin/luarocks install htmlparser

After that, the plugin must work
]]

do

  -- Base search URL
  local BASE_URL = 'http://pleer.com/mobile/search?q='

  -- Base download URL
  local BASE_DL_URL = 'http://pleer.com/mobile/files_mobile/'

  local htmlparser = require 'htmlparser'

  -- Provide download link
  local function getDownloadLink(id)
    return BASE_DL_URL .. id .. '.mp3'
  end

  local function getLyrics(q)
    local b, c = http.request(BASE_URL .. URL.escape(q))
    if c ~= 200 then
     return "❗ There is an error. Try again later"
    end

    local root = htmlparser.parse(b)
    local tracks = root('.track')
    local output = ''

    -- If no tracks found
    if #tracks < 1 then
        return '❌ I didn't found that song:('
    end

    for i, track in pairs(tracks) do

        -- Track id
        local trackId = track.id

	-- Remove that starting 't' in the id of element
        trackId = trackId:sub(2)

        -- Parse track
        track = track:getcontent()
        track = htmlparser.parse(track)

        -- Track artist
        local artist = track:select('.artist')[1]
        artist = unescape_html(artist:getcontent())

        -- Track title 
        local title = track:select('.title')[1]
        title = unescape_html(title:getcontent())

        -- Track time
        local time = track:select('.time')[1]
        time = time:getcontent()
        time = time:sub(-5)

        -- Track specs
        local specs = track:select('.specs')[1]
        specs = specs:getcontent()
        specs = specs:split(',')
	-- Size
        local size = specs[1]:trim()
	-- Bitrate
        local bitrate = specs[2]:trim()

	-- Generate an awesome, well formated output
        output = output .. i .. '. ' .. artist .. ' - ' .. title .. '\n'
        .. '🕚 ' .. time .. ' | ' .. ' 🎧 ' .. bitrate .. ' | ' .. ' 📎  ' .. size .. '\n'
        .. '💾 : ' .. getDownloadLink(trackId) .. '\n\n'
    end

    return output
  end

  local function run(msg, matches)
    return getLyrics(matches[1])
  end

  return {
    patterns = {
        '^[!/#]music (.*)$'
    },
    run = run
}

end
