local horizontal_term = nil
local vertical_term = nil
local float_term = nil

set_key(
	"n",
	"<A-h>",
	":lua if not horizontal_term then horizontal_term = require('toggleterm.terminal').Terminal:new({ direction = 'horizontal', size = 10 }) end horizontal_term:toggle()<CR>",
	ns
)
set_key(
	"n",
	"<A-v>",
	":lua if not vertical_term then vertical_term = require('toggleterm.terminal').Terminal:new({ direction = 'vertical', size = 40 }) end vertical_term:toggle()<CR>",
	ns
)
set_key(
	"n",
	"<A-i>",
	":lua if not float_term then float_term = require('toggleterm.terminal').Terminal:new({ direction = 'float' }) end float_term:toggle()<CR>",
	ns
)
