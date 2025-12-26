return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason. nvim",
      "williamboman/mason-lspconfig. nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      -- Mason installs language servers
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })

      -- Setup mason-lspconfig
      require("mason-lspconfig").setup({
        ensure_installed = { 
          "lua_ls",           -- Lua
          "ts_ls",            -- TypeScript/JavaScript/React
          "html",             -- HTML
          "cssls",            -- CSS
          "tailwindcss",      -- Tailwind CSS
          "emmet_ls",         -- Emmet
          "jsonls",           -- JSON
          "eslint",           -- ESLint
          "pyright",          -- Python
          "clangd",           -- C/C++
        },
        automatic_installation = true,
      })

      -- Get capabilities for autocompletion
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      -- Setup most servers with default config
      local servers = { "html", "cssls", "tailwindcss", "jsonls", "eslint" }
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({ capabilities = capabilities })
      end

      -- Python
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      -- C/C++
      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      -- TypeScript/JavaScript/React
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })

      -- Emmet (including React JSX)
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = { "html", "css", "scss", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      })

      -- Lua-specific (for Neovim config)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = { 
          Lua = { 
            diagnostics = { 
              globals = { "vim" } 
            } 
          } 
        },
      })

      -- Diagnostic signs (pretty icons in gutter)
      local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" ..  type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end

      -- Diagnostic config
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        update_in_insert = false,
        underline = true,
        severity_sort = true,
        float = {
          border = "rounded",
          source = "always",
        },
      })
    end,
  },
}
