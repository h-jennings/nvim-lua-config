local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		diagnostics = "nvim_lsp",
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
	},
})

local incline_status_ok, incline = pcall(require, "incline")
if not incline_status_ok then
	return
end

-- Inclince setup (provides a small floating window of a buffers filename )

incline.setup()
