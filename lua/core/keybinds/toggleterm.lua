set_key(
	"n",
	"<leader>th",
	":lua if not horizontal_term then horizontal_term = require('toggleterm.terminal').Terminal:new({ direction = 'horizontal', size = 10 }) end horizontal_term:toggle()<CR>",
	ns
)
set_key(
	"n",
	"<leader>tv",
	":lua if not vertical_term then vertical_term = require('toggleterm.terminal').Terminal:new({ direction = 'vertical', size = 40 }) end vertical_term:toggle()<CR>",
	ns
)
set_key(
	"n",
	"<leader>tf",
	":lua if not float_term then float_term = require('toggleterm.terminal').Terminal:new({ direction = 'float' }) end float_term:toggle()<CR>",
	ns
)
