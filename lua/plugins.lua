vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
  		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v1.x',
		requires = {
			-- LSP Support
		    	{'neovim/nvim-lspconfig'},             -- Required
		    	{'williamboman/mason.nvim'},           -- Optional
		    	{'williamboman/mason-lspconfig.nvim'}, -- Optional

		    	-- Autocompletion
		    	{'hrsh7th/nvim-cmp'},         -- Required
		    	{'hrsh7th/cmp-nvim-lsp'},     -- Required
		    	{'hrsh7th/cmp-buffer'},       -- Optional
		    	{'hrsh7th/cmp-path'},         -- Optional
		    	{'saadparwaiz1/cmp_luasnip'}, -- Optional
		    	{'hrsh7th/cmp-nvim-lua'},     -- Optional

		    	-- Snippets
		    	{'L3MON4D3/LuaSnip'},             -- Required
		    	{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
	
	-- Fuzzy Finder
  	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  	requires = { {'nvim-lua/plenary.nvim'} }
  	}

	-- Problem List
	use('folke/trouble.nvim')

	
	-- Syntax Highlighting
	use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
	use('nvim-treesitter/playground')
	use('nvim-treesitter/nvim-treesitter-context')

	-- Undo Tree
	use('mbbill/undotree')

	-- Git
	use('tpope/vim-fugitive')

	-- Useless, Fun, etc
	use('eandrju/cellular-automaton.nvim')
	use('ThePrimeagen/vim-be-good')

	-- Toolbar
	use('vim-airline/vim-airline')
	use('vim-airline/vim-airline-themes')
	use('kyazdani42/nvim-web-devicons')

    -- Theme
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
end)
