-- プラグインインストール(lazy.vim使用)

return {
  { -- カラースキーム
    'dracula/vim',
    event = "VimEnter",   -- vimが開いた時にロード
    config = function()
      vim.cmd([[colorscheme dracula]])
    end
  },
  { -- ファイル検索:telescope
    'nvim-telescope/telescope.nvim',
    -- C-pで起動
    event = "VimEnter",
  },
  { -- telescopeの拡張
    'nvim-telescope/telescope-fzy-native.nvim',
    event = "VimEnter",
  },
  { -- telescopeの拡張
    'nvim-lua/plenary.nvim',
    event = "VimEnter",
  },
  { -- github_copilot
    'github/copilot.vim',
    event = "InsertEnter",  -- 入力が始まってからロード
    config = function()
    end
  },
  { -- 入力補完
    'hrsh7th/nvim-cmp',
    event = "InsertEnter",
  },
  { -- 起動画面カスタマイズ
    'goolord/alpha-nvim',
    event = "VimEnter",
  },
}

