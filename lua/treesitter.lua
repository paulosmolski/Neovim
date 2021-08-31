-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will nisable the whole extension
    -- disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Treesitter - textobjects
require'nvim-treesitter.configs'.setup {

  textobjects = {
    select = {
      enable = true,

      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,

      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@comment.outer",
        ["iC"] = "@class.inner",
        ["aC"] = "@class.outer",
        ["ip"] = "@parameter.inner",
        ["ap"] = "@parameter.outer",
        ["il"] = "@loop.inner",
        ["al"] = "@loop.outer",
        ["ii"] = "@conditional.inner",
        ["ai"] = "@conditional.outer",

        -- Or you can define your own textobjects like this
        ["iF"] = {
          python = "(function_definition) @function",
          cpp = "(function_definition) @function",
          c = "(function_definition) @function",
          java = "(method_declaration) @function",
        },
      },
    },
  },
    incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "g.",
      node_incremental = "g.",
      node_decremental = "g,",
    },
  },
    refactor = {
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "gr",
      },
    },
  },


}

