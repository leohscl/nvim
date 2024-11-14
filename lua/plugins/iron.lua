return  {
  "Vigemus/iron.nvim",
  config = function ()
    local iron = require("iron.core")
    iron.setup {
      config = {
        -- Whether a repl should be discarded or not
        scratch_repl = true,
        -- Your repl definitions come here
        repl_definition = {
          sh = {
            -- Can be a table or a function that
            -- returns a table (see below)
            command = {"zsh"}
          },
          python = {
            command = { "python3" },  -- or { "ipython", "--no-autoindent" }
            format = require("iron.fts.common").bracketed_paste_python
          }
        },
        -- How the repl window will be displayed
        -- See below for more information
        repl_open_cmd = require('iron.view').right(70),
      },
      keymaps = {
        visual_send = "gz",
      },
      highlight = {
        italic = true
      },
      ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
    }
    vim.keymap.set('n', '<leader>rr', '<cmd>IronRepl<cr>')
    vim.keymap.set('n', '<C-l>', '<C-w>w<cr>')
    vim.keymap.set('n', '<C-h>', '<C-w>w<cr>')
  end
}
