call plug#begin('~/.vim/plugged')

" finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" editing
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'hotoo/pangu.vim' "中文排版自动规范化
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn' }
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'godlygeek/tabular' " aligning text
Plug 'tpope/vim-speeddating'

" ui
Plug 'terryma/vim-multiple-cursors'
Plug 'chrisbra/Colorizer' " color hex codes and names
Plug 'cocopon/inspecthi.vim' " inspecting highlighting link structure
Plug 'itchyny/lightline.vim' " config for statusline and tabline
Plug 'junegunn/goyo.vim' " Distraction-free writing

" app
Plug 'itchyny/calendar.vim'

Plug 'tkhren/vim-fake' " fake text generator

" git
Plug 'tpope/vim-fugitive' " an awesome Git wrapper
Plug 'airblade/vim-gitgutter' " git sign column
Plug 'junegunn/gv.vim' " a git commit browser
Plug 'rhysd/git-messenger.vim' " reveal the commit messages under the cursor

Plug 'metakirby5/codi.vim' " The interactive scratchpad for hackers.
Plug 'thinca/vim-quickrun'

" js & ts
" Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
" Plug 'HerringtonDarkholme/yats.vim' " typescript syntax
Plug 'jparise/vim-graphql'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'eliba2/vim-node-inspect'

Plug 'tweekmonster/helpful.vim' " show vim version numbers in docs
Plug 'dhruvasagar/vim-table-mode'

Plug 'vimwiki/vimwiki'

Plug 'inkarkat/vim-SyntaxRange'
Plug 'chrisbra/NrrwRgn'

Plug 'puremourning/vimspector'
Plug 'lyokha/vim-xkbswitch'

Plug 'rhysd/vim-grammarous'
Plug 'jaxbot/github-issues.vim'
Plug 'tpope/vim-eunuch' "Helpers for UNIX commands

call plug#end()

" Plug 'vim-scripts/utl.vim'
" Plug 'jceb/vim-orgmode'
" Plug 'Shougo/neosnippet.vim'
" Plug 'qpkorr/vim-renamer'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'Shougo/neomru.vim'
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'neoclide/denite-git'
" Plug 'lambdalisue/gina.vim' " git operator
" Plug 'Shougo/deol.nvim' " shell interface
" Plug 'rlue/vim-barbaric'
" Plug 'mattn/calendar-vim'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-notes'
" Plug 'vim-pandoc/vim-pandoc' " pandoc flavor markdown integration
" Plug 'vim-pandoc/vim-pandoc-syntax' " pandoc flavor markdown syntax
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
" Plug 'dense-analysis/ale'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'
" Plug 'neovim/nvim-lsp'
" Plug 'rizzatti/dash.vim'
" Plug 'neoclide/jsonc.vim'
" Plug 'moll/vim-node'
" Plug 'othree/es.next.syntax.vim'
" Plug 'neoclide/vim-jsx-improve'
" Plug 'othree/yajs.vim' " syntax,
" Plug 'lervag/wiki.vim'
" Plug 'dhruvasagar/vim-dotoo'
" Plug 'lervag/wiki-ft.vim'
" Plug 'fcpg/vim-waikiki'
" Plug 'plasticboy/vim-markdown'
" Plug 'AndrewRadev/splitjoin.vim' " multiline <-> single-line
" Plug 'Quramy/tsuquyomi' " typescript plugin
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/neomru.vim'
" Plug 'SirVer/ultisnips'
" Plug 'Valloric/YouCompleteMe'
" Plug 'amadeus/vim-convert-color-to'
" Plug 'ap/vim-buftabline'
" Plug 'ap/vim-css-color'
" Plug 'bling/vim-bufferline'
" Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'easymotion/vim-easymotion'
" Plug 'felixhummel/setcolors.vim'
" Plug 'flazz/vim-colorschemes'
" Plug 'henrik/vim-indexed-search'
" Plug 'honza/vim-snippets' " default snippets
" Plug 'idanarye/vim-merginal', { 'branch': 'master' } "Fugitive extension to manage and merge Git branches
" Plug 'idanarye/vim-vebugger'
" Plug 'itchyny/dictionary.vim' " not compatible with neovim
" Plug 'jelera/vim-javascript-syntax'
" Plug 'jparise/vim-graphql'
" Plug 'junegunn/vim-slash' " 1) auto clear search highlight; 2) improved star-search
" Plug 'justinmk/vim-dirvish'
" Plug 'justinmk/vim-sneak' " motion
" Plug 'machakann/vim-highlightedyank'
" Plug 'majutsushi/tagbar'
" Plug 'masukomi/vim-markdown-folding'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'mileszs/ack.vim'
" Plug 'morhetz/gruvbox'
" Plug 'neoclide/coc-smartf', {'do': 'yarn'}
" Plug 'neoclide/denite-extra'
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/yajs.vim' "Yet Another JavaScript Syntax for Vim
" Plug 'pbogut/fzf-mru.vim'
" Plug 'posva/vim-vue'
" Plug 'reedes/vim-lexical' " Build on Vim’s spell/thes/dict completion
" Plug 'romainl/vim-qf'
" Plug 'sbdchd/neoformat'
" Plug 'scrooloose/nerdcommenter'
" Plug 'scrooloose/nerdtree'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'ternjs/tern_for_vim', { 'do': 'yarn install', 'for': ['javascript', 'javascript.jsx'] }
" Plug 'tommcdo/vim-lion' " A simple alignment operator for Vim text editor
" Plug 'tpope/vim-dadbod'
" Plug 'tpope/vim-obsession' " continuously updated session files
" Plug 'tpope/vim-vinegar' " Combine with netrw to create a delicious salad dressing
" Plug 'trevordmiller/nova-vim'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-syntastic/syntastic' "Syntax checking hacks for vim
" Plug 'w0rp/ale'
" Plug 'wincent/command-t'
" Plug 'wincent/ferret' " Enhanced multi-file search for Vim
" Plug 'yianwillis/vimcdoc' " chinese help
" Plug 'prabirshrestha/quickpick.vim'
" Plug 'prabirshrestha/quickpick-npm.vim'
" Plug 'mxw/vim-jsx' " deprecated
