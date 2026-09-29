-- Adding "ö" as alias for [
vim.keymap.set({ "n", "x", "o" }, "ö", "[", {
	remap = true,
	desc = "Alias for [",
})

-- Adding "ä" as alias for ]
vim.keymap.set({ "n", "x", "o" }, "ä", "]", {
	remap = true,
	desc = "Alias for ]",
})

-- [ and ] aliases for German keyboard
vim.keymap.set({ "n", "x", "o" }, "ö", "[", {
	remap = true,
	desc = "Alias for [",
})

vim.keymap.set({ "n", "x", "o" }, "ä", "]", {
	remap = true,
	desc = "Alias for ]",
})

-- '[ and '] aliases
vim.keymap.set({ "n", "x", "o" }, "'ö", "'[", {
	remap = true,
	desc = "Jump to start of last changed/yanked text",
})

vim.keymap.set({ "n", "x", "o" }, "'ä", "']", {
	remap = true,
	desc = "Jump to end of last changed/yanked text",
})

-- `[ and `] aliases
vim.keymap.set({ "n", "x", "o" }, "`ö", "`[", {
	remap = true,
	desc = "Jump exactly to start of last changed/yanked text",
})

vim.keymap.set({ "n", "x", "o" }, "`ä", "`]", {
	remap = true,
	desc = "Jump exactly to end of last changed/yanked text",
})
