return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls", "ts_ls",
            "pyright", "ruff",
            "clangd",
            "rust_analyzer",
            "gopls",
            "jdtls",
            "texlab",
        },
        automatic_enable = true,
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
        {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
            opts = {
                ensure_installed = { "stylua", "clang-format", "prettier", "goimports" },
            },
        },
    },
}
