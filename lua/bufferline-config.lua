local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

require('bufferline').setup {
	options = {
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = true
			}
		},
		show_buffer_icons = true, -- disable filetype icons for buffers
		show_close_icon = true,
		sort_by = 'insert_at_end',
	}
}
