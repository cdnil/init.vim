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
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify' " The fancy start screen for Vim
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'neoclide/coc.nvim', {'do': 'yarn --frozen-lockfile'}
Plug 'neoclide/denite-extra'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn' }
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file explorer
Plug 'Shougo/denite.nvim'
Plug 'sonph/onehalf', { 'rtp': 'vim/' }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive' " an awesome Git wrapper
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'

call plug#end()

" => Plugin Trash

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
" Plug 'scrooloose/nerdtree'
" Plug 'trevordmiller/nova-vim'
" Plug 'godlygeek/tabular' " text filtering and alignment
" Plug 'hotoo/pangu.vim' "中文排版自动规范化
" Plug 'reedes/vim-lexical' " Build on Vim’s spell/thes/dict completion
" Plug 'flazz/vim-colorschemes'
" Plug 'felixhummel/setcolors.vim'

" => plugin Config

" -> startify

let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

" -> coc.nvim

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

" -> fzf

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'window': 'enew' } " `window` neovim only

" hide statusline
"
" autocmd! FileType fzf
" autocmd  FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" -> pangu

"autocmd BufWritePre *.markdown,*.md,*.text,*.txt,*.wiki,*.cnx call PanGuSpacing()

" -> ultisnips

" let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/UltiSnips']

" -> ale

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
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file

" -> deoplete

let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1

" -> ctrlp.vim

let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_show_hidden = 1
"change working path === pwd
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.cache$\|\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$\|\.vscode$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.DS_Store$' }


" -> NERDTree

let NERDTreeShowHidden=1
nnoremap <silent><leader>1 :NERDTreeToggle<cr>
nnoremap <leader>nr :NERDTreeFind<cr>

" -> lightline

let g:lightline = {
      \ 'colorscheme': 'onehalfdark',
      \ 'active': {
      \   'left':  [ ['mode'],
      \              [ 'workingDirectory', 'gitbranch' ],
      \              [ 'readonly', 'filename', 'modified'],
      \              [ 'percent' ],
      \              [ 'filetype' ] ],
      \ },
      \ 'component': {
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'workingDirectory': 'WorkingDirectory',
      \ },
\ }


function! WorkingDirectory()
 return strpart(getcwd(), strridx(getcwd(), '/') + 1)
endfunction

" -> emmet

let g:user_emmet_leader_key='<c-,>'
" let g:user_emmet_mode='i'
" inoremap jm <C-y>,
" only enable normal mode functions

" -> prettier

let g:prettier#config#parser = 'babel'

let g:sneak#label = 1

" -> gitgutter

autocmd BufEnter * GitGutterAll

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
hi cursorline guibg=#3c434f

colorscheme onehalfdark
set signcolumn=yes

hi Visual guibg=#407E61

set splitright
set splitbelow

" vertical split bar style
hi VertSplit guibg=bg

set fillchars=vert:\│

set expandtab

" insert 2 spaces for a tab
set tabstop=2

set softtabstop=2

set shiftwidth=2

set ignorecase

" => Mappings

" map leader to space
let mapleader=" "

xnoremap <  <gv
xnoremap >  >gv

nnoremap <leader>z :Goyo<cr>

" edit vimrc file
nnoremap <leader>ev :vs $MYVIMRC<cr>

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

nnoremap <C-p> :<C-u>FZF<CR>

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
nnoremap <leader>g :silent set <SID>operatorfunc=GrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

function! s:GrepOperator(type)
  let saved_unnamed_register = @@

  if a:type ==# 'v'
    normal! `<v`>y
  elseif a:type ==# 'char'
    normal! `[y`]
  else
    return
  endif

  silent execute "grep! -R " . shellescape(@@) . " ."
  copen

  " restore unnamed register
  let @@ = saved_unnamed_register

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

" => Abbreviations

" => folding

autocmd BufRead init.vim set foldmethod=expr
autocmd BufRead init.vim set foldexpr=FoldLevel(v:lnum)

function! FoldLevel(lnum)
  let curLine = getline(a:lnum)
  let nextLine = getline(a:lnum + 1)

  if curLine =~? '\v^"\s*\=\>'
    return 1
  endif

  if curLine =~? '\v^"\s*\-\>'
    return 2
  endif

  " empty line
  if curLine =~? '\v^\s*$'
    if nextLine =~? '\v^"\s\=\>'
      return 0
    endif
    if nextLine =~? '\v^"\s\-\>'
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
