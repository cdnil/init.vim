" => plugin List

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ap/vim-css-color'
Plug 'idanarye/vim-merginal' "Fugitive extension to manage and merge Git branches
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim' "Distraction-free writing
Plug 'junegunn/gv.vim' " a git commit browser
Plug 'justinmk/vim-sneak' " motion
Plug 'leafgarland/typescript-vim' " Typescript syntax files
Plug 'mileszs/ack.vim'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'do': 'yarn --frozen-lockfile'}
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn' }
Plug 'scrooloose/nerdtree'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file explorer
Plug 'Shougo/denite.nvim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive' " an awesome Git wrapper
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()

" => Plugin Trash

" Plug 'neoclide/denite-extra'
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'majutsushi/tagbar'
" Plug 'Shougo/neomru.vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'mattn/emmet-vim'
" Plug 'carlitux/deoplete-ternjs', { 'do': 'yarn global add tern' }
" Plug 'ternjs/tern_for_vim', { 'do': 'yarn install', 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Quramy/tsuquyomi' " typescript plugin
" Plug 'easymotion/vim-easymotion'
" Plug 'bling/vim-bufferline'
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'Valloric/YouCompleteMe'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets' " default snippets
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'scrooloose/nerdcommenter'
" Plug 'vim-syntastic/syntastic' "Syntax checking hacks for vim
" Plug 'othree/yajs.vim' "Yet Another JavaScript Syntax for Vim
" Plug 'sbdchd/neoformat'
" Plug 'posva/vim-vue'
" Plug 'jparise/vim-graphql'
" Plug 'trevordmiller/nova-vim'
" Plug 'godlygeek/tabular' " text filtering and alignment
" Plug 'hotoo/pangu.vim' "中文排版自动规范化
" Plug 'reedes/vim-lexical' " Build on Vim’s spell/thes/dict completion
" Plug 'flazz/vim-colorschemes'
" Plug 'felixhummel/setcolors.vim'

" => plugin Config

" ---> Denite

call denite#custom#var('file/rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

" call denite#custom#alias('source', 'file/rec/git', 'file/rec')
" call denite#custom#var('file/rec/git', 'command',
"       \ ['git', 'ls-files', '-co', '--exclude-standard'])
" nnoremap <silent> <C-p> :<C-u>Denite
"       \ `finddir('.git', ';') != '' ? 'file/rec/git' : 'file/rec'`<CR>

" ---> coc.nvim

let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-css',
\ 'coc-html',
\ 'coc-yaml',
\ 'coc-python',
\ 'coc-emmet',
\ 'coc-snippets',
\ ]

" ---> fzf

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
" let g:fzf_layout = { 'window': 'enew' } " `window` neovim only

nnoremap <silent><C-p> :FZF<cr>

" ---> pangu

"autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" ---> ultisnips

" let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/UltiSnips']

" ---> ale

" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_keep_list_window_open = 0


function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE'k
    \   all_non_errorsk
    \   all_errors
    \)
endfunction

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" ---> deoplete

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1

" ---> ctrlp.vim

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_show_hidden = 1
"change working path === pwd
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.cache$\|\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$\|\.vscode$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.DS_Store$' }


" ---> NERDTree

let NERDTreeShowHidden=1
nnoremap <silent><leader>ee :NERDTreeToggle<cr>
" reveal current buffer in NERDTree
nnoremap <silent><leader>er :NERDTreeFind<cr>


" ---> lightline

let g:lightline = { 'colorscheme': 'onehalfdark' }

let g:lightline.component = {
    \ 'totalLine': "%{line('$')}",
    \ }


" let g:lightline.subseparator = { 'left': '▪︎', 'right': '|' }
let g:lightline.subseparator = { 'left': '‣', 'right': '|' }


let g:lightline.component_function = {
    \ 'gitbranch': 'fugitive#head',
    \ 'workingDirectory': 'WorkingDirectory',
    \ }

let g:lightline.active = {
    \ 'left': [ [ 'mode' ],
    \           [ 'gitbranch', 'workingDirectory' ],
    \           [ 'filename', 'readonly', 'modified' ] ],
    \ 'right': [ [ 'totalLine' ],
    \            [ 'lineinfo' ],
    \            [ 'filetype' ] ] }


let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ],
    \           [ 'readonly', 'modified' ] ],
    \ 'right': [ [ 'totalLine' ],
    \            [ 'lineinfo' ],
    \            [ 'filetype' ] ] }

let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ ] }

function! WorkingDirectory()
 return strpart(getcwd(), strridx(getcwd(), '/') + 1)
endfunction


" ---> emmet

let g:user_emmet_leader_key='<c-,>'
" let g:user_emmet_mode='i'
" inoremap jm <C-y>,
" only enable normal mode functions

" ---> prettier

let g:prettier#config#parser = 'babel'

let g:sneak#label = 1

" ---> gitgutter

autocmd BufEnter * GitGutterAll
nnoremap <leader>hj :GitGutterNextHunk<cr>
nnoremap <leader>hk :GitGutterPrevHunk<cr>

" ---> goyo

let g:goyo_height = '100%'
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0
nnoremap <leader>z :Goyo<cr>

" => options

set noerrorbells
set novisualbell

" true color
set termguicolors

" hide -- [MODE] -- on the last line, using lightline.vim
set noshowmode

set nowrap

" for updating gutter
" https://github.com/airblade/vim-gitgutter#getting-started
set updatetime=100

" synchronize with system clipboard
set clipboard=unnamed

" show the line numbers
set number

set cursorline

colorscheme onehalfdark
set signcolumn=yes

hi Visual guibg=#407E61

set splitright
set splitbelow

" vertical split bar style
hi VertSplit guibg=bg

set fillchars=vert:\│
" hide tilde ~ char, endwith one whitespace
set fillchars=eob:\ 

set expandtab

" insert 2 spaces for a tab
set tabstop=2

set softtabstop=2

set shiftwidth=2

set ignorecase

let g:netrw_liststyle = 3
let g:netrw_banner = 0
" let g:netrw_browse_split = 2
" let g:netrw_winsize = 25

" => Mappings

" map leader to space
let mapleader=" "

nnoremap <leader>w :w<cr>

" edit vimrc file
nnoremap <leader>ev :e $MYVIMRC<cr>

" source vimrc file
nnoremap <leader>sv :so $MYVIMRC<cr>

" save
nnoremap <C-S> :w<cr>

nnoremap <leader>q :bd<cr>

" no highlight
nnoremap <silent><leader>nh :nohl<cr>

" inoremap jk <Esc>

nnoremap = <C-w>>
nnoremap - <C-w><

vnoremap // y/<C-r>"<cr>

autocmd BufNewFile,BufRead *.vue set filetype=html
autocmd BufNewFile,BufRead *.wxml set filetype=html
autocmd FocusGained * :checktime


"-------------------------------------------------------------------------------
" = Terminal
"-------------------------------------------------------------------------------

" open a new terminal window
nnoremap <leader>t :vsplit \| term<cr>

" exit terminal insert mode
tnoremap <Esc> <C-\><C-n>

"-------------------------------------------------------------------------------
" = Window Management
"-------------------------------------------------------------------------------

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tnoremap <C-h> <C-\><C-n><C-w>h
" tnoremap <C-j> <C-\><C-n><C-w>j
" tnoremap <C-k> <C-\><C-n><C-w>k
" tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

if has('nvim')
  tnoremap <M-h> <c-\><c-n><c-w>h
  tnoremap <M-j> <c-\><c-n><c-w>j 
  tnoremap <M-k> <c-\><c-n><c-w>k
  tnoremap <M-l> <c-\><c-n><c-w>l
endif


" http://learnvimscriptthehardway.stevelosh.com/chapters/33.html
" <leader>giw, etc.
nnoremap <silent><leader>g :<c-u>set operatorfunc=GrepOperator<cr>g@
vnoremap <silent><leader>g :<c-u>call GrepOperator(visualmode())<cr>

function! GrepOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    echo 'Searching ' . @@

    silent execute "Ag " . @@
endfunction

" http://learnvimscriptthehardway.stevelosh.com/chapters/38.html
nnoremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
        execute g:quickfix_return_to_window . "wincmd w"
    else
        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction

" => Autocmds

" augroup AutoSaveAndRestoreView
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent loadview
" augroup END<Paste>

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set wrap linebreak
autocmd BufRead,BufNewFile *.md call deoplete#disable()

" augroup lexical
"   autocmd!
"   autocmd FileType markdown,mkd call lexical#init()
"   autocmd FileType textile call lexical#init()
"   autocmd FileType text call lexical#init({ 'spell': 1 })
" augroup END

augroup ft_help
  autocmd!
  autocmd FileType help set number
augroup END

" => folding

autocmd BufRead *.vim set foldmethod=expr
autocmd BufRead *.vim set foldexpr=FoldLevel(v:lnum)

function! FoldLevel(lnum)
  let firstLine = getline(1)
  let curLine = getline(a:lnum)
  let nextLine = getline(a:lnum + 1)
  let expr1 = '\v^"\s*\=\>'
  let expr2 = '\v^"\s*\-\-\-\>'

  if firstLine !~? expr1
    return 0
  endif

  if curLine =~? expr1
    return 1
  endif

  if curLine =~? expr2
    return 2
  endif

  " empty line
  if curLine =~? '\v^\s*$'
    if nextLine =~? expr1
      return 0
    endif
    if nextLine =~? expr2
      return 1
    endif
  endif

  return '='
endfunction


" => Terminal

let $GIT_EDITOR = 'nvr -cc split --remote-wait'

augroup term_cmd
  autocmd!
  " for answering nvr remote
  autocmd FileType gitcommit set bufhidden=delete

  autocmd TermOpen * startinsert
  autocmd TermClose * bd!
augroup END

" => Abbreviations


" => Customize Commands

command! -nargs=1 Go silent execute '!open https://www.google.com/search\?q=\' . <q-args>
