local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- lsp config
    use 'neovim/nvim-lspconfig'
    -- autocompletion
    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'
    -- treesitter syntax coloring
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    --theme
    use 'folke/tokyonight.nvim'
    -- status line enhancement
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require'lualine'.setup()
        end
    }
    -- netrw enhancement
    use 'tpope/vim-vinegar'
    -- simplified commenting
    use 'tpope/vim-commentary'
    -- simplified sorrounding
    use 'tpope/vim-surround'
    -- Formater
use "mhartington/formatter.nvim"
    -- qf enhancement
    use {
        'ten3roberts/qf.nvim',
        config = function()
            require'qf'.setup{}
        end
    }
end)
