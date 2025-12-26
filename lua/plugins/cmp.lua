return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      -- Completion sources
      "hrsh7th/cmp-buffer",       -- Buffer words
      "hrsh7th/cmp-path",         -- File paths
      "hrsh7th/cmp-cmdline",      -- Vim command line
      
      -- Snippet engine (we're using LuaSnip)
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      
      -- Pre-made snippets
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      
      -- Load snippets from friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Set up nvim-cmp
      cmp.setup({
        snippet = {
          -- REQUIRED - specify a snippet engine
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          -- Optional: bordered windows
          -- completion = cmp.config.window. bordered(),
          -- documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp. mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          
          -- Tab/Shift-Tab for navigation (bonus!)
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "luasnip" },  -- Snippets
          { name = "buffer" },   -- Words from current file
          { name = "path" },     -- File paths
        }),
      })

      -- Use buffer source for `/` and `?` (search)
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp. mapping.preset.cmdline(),
        sources = {
          { name = "buffer" }
        }
      })

      -- Use cmdline & path source for `:` (commands)
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset. cmdline(),
        sources = cmp.config.sources({
          { name = "path" }
        }, {
          { name = "cmdline" }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
      })
    end,
  },
}
