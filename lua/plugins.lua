return {
  { -- colorscheme
    'dracula/vim',
    config = function()
      vim.cmd([[colorscheme dracula]])
    end
  },
  { -- fuzzy finder
    'ibhagwan/fzf-lua',
    config = function()
      requires =  {'kyazdani42/nvim-wab-devicons'}
    end
  },
  {
    'Shougo/defx.nvim',
    config = function()
    end
  },
  {
    'github/copilot.vim',
    config = function()
    end
  }
}
