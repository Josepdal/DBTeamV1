local function run(msg, matches)
    return LANG
end

return {
    description = "Know your id or the id of a chat members.",
    usage = {
    },
    patterns = {
        "^!(test)$"
    },
    run = run
}