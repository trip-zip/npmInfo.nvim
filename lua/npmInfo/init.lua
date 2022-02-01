local function npmInfo()
	local word = vim.fn.expand("<cword>")
	local cmdString = "npm info " .. word .. " --json"
	vim.cmd("vsplit | terminal")
	local command = ':call chansend(b:terminal_job_id, "' .. cmdString .. ' \\n")'
	vim.cmd(command)
end

return {
	npmInfo = npmInfo,
}
