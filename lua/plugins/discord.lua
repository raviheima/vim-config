return {
  {
    'vyfor/cord.nvim',
    build = ':Cord update',
    opts = {
      text = {
        workspace = "Avoid spaghetti code.",
        editing = function(opts)
          return string.format('Editing %s:[%d/%d]', opts.filename, opts.cursor_line, vim.api.nvim_buf_line_count(0))
        end,
        viewing = function(opts)
          return string.format('Viewing %s:[%d/%d]', opts.filename, opts.cursor_line, vim.api.nvim_buf_line_count(0))
        end,
      },
    },
  },
}
