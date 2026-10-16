local map = vim.keymap.set
-- Копировать выделенный текст в системный буфер (Ctrl-c)
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })

-- Вставить из системного буфера (Ctrl-v)
map("n", "<C-v>", '"+p', { desc = "Paste from system clipboard" })
map("i", "<C-v>", "<C-r>+", { desc = "Paste from system clipboard" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Переключение между файлами
map("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

-- Перейти к файлу по номеру
map("n", "<A-1>", ":BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" })
map("n", "<A-2>", ":BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" })
-- и так далее до 9
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
