local status_ok, saga = pcall(require, "lspsaga")
if not status_ok then
	return
end

saga.init_lsp_saga({
	finder_action_keys = {
		open = "<CR>",
	},
	code_action_lightbulb = {
		enable = false,
	},
})
