local M = {};

M.setup = function()
  -- MiniComment
  require('mini.comment').setup({
    hooks = {
      pre = function()
        require('ts_context_commentstring.internal').update_commentstring()
      end,
    },
  })
  
  -- Starter
  local starter = require('mini.starter')
  
  starter.setup({
    content_hooks = {
      starter.gen_hook.adding_bullet(),
      starter.gen_hook.aligning('center', 'center'),
    },
  })

  -- Pairs
  require('mini.pairs').setup({})
end

return M
