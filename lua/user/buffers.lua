local incline_status_ok, incline = pcall(require, "incline")
if not incline_status_ok then
	return
end

-- Inclince setup (provides a small floating window of a buffers filename )

incline.setup()
