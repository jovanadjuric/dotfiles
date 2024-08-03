require("full-border"):setup()


-- https://yazi-rs.github.io/docs/tips#symlink-in-status
function Status:name()
	local h = cx.active.current.hovered
	if not h then
		return ui.Span("")
	end

 	local linked = ""
 	if h.link_to ~= nil then
 		linked = " -> " .. tostring(h.link_to)
 	end
 	return ui.Span(" " .. h.name .. linked)
end

