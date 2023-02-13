function ParseModuleName(i_path)
	local result = i_path:gsub("%.\\","")
	result = result:gsub("\\",".")
	result = result:gsub("%.lua","")

	return result
end


return {
	ParseModuleName = ParseModuleName
}