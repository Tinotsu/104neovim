vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    "stylua.toml",
    ".stylua.toml",
    "selene.toml",
    "selene.yml",
    ".git",
  },
})

vim.lsp.enable("lua_ls")

vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "setup.py",
    "setup.cfg",
    "requirements.txt",
    "Pipfile",
    ".git",
  },
})

vim.lsp.enable("pyright")

vim.lsp.config("gopls", {
    cmd = { "gopls" },        -- path to gopls
    filetypes = { "go", "gomod" },
    root_markers = { "go.mod", ".git" },
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                nilness = true,
            },
            staticcheck = true,
        },
    },
})

vim.lsp.enable("gopls")
