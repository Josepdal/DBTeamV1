--By @MaSkAoS & @Josepdal

do
local function pre_process(msg)

    return(msg)
end

local function run(msg)

end

return {
patterns = {
'^#(settings)$'
},
pre_process = pre_process,
run = run
}
end