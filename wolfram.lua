local popen = io.popen
local sub   = string.sub

local handle = popen("cd")
local output = handle:read("*l")
handle:close()

local function wolfram(wlstr)
	local handle = popen('math -noprompt -run "Print[ToString[InputForm['..wlstr..']]] Exit[]"', "r")
	local output = handle:read("*l")
	handle:close()
	return sub(output, 2, -2)
end

return wolfram