function run(msg, matches)
	if matches[1] == 'help' then
		return 'Yo trabajo con comandos con #, por ejemplo, #commands o #id'
    end
	if matches[1] == 'start' then
		return 'Yo trabajo con comandos con #, por ejemplo, #commands o #id'
	end
end

return {
  patterns = {
    "^/(start)$",
	  "^/(help)$"
  },
  run = run 
}
