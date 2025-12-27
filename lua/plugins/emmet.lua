return {{
    "neovim/nvim-lspconfig",
    dependencies = {
        "mason-org/mason-lspconfig.nvim", -- ensure Mason-LSP bridge is loaded
    },
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.emmet_language_server.setup({
            filetypes = {
                "css",
                "eruby",
                "html",
                "javascript",
                "javascriptreact",
                "less",
                "sass",
                "scss",
                "pug",
                "typescriptreact",
            },
            init_options = {
                includeLanguages = {},
                excludeLanguages = {},
                extensionsPath = {},
                preferences = {},
                showAbbreviationSuggestions = true,
                showExpandedAbbreviation = "always",
                showSuggestionsAsSnippets = false,
                syntaxProfiles = {},
                variables = {},
            },
        })
    end,
}}

