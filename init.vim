" => plugin List

call plug#begin('~/.vim/plugged')

" general
Plug 'rbgrouleff/bclose.vim' "<leader>bd close buffer without closing the window

" finder
Plug 'Shougo/denite.nvim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'pbogut/fzf-mru.vim'

" ui
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim' "Distraction-free writing
Plug 'nathanaelkane/vim-indent-guides'


" git
Plug 'airblade/vim-gitgutter'
Plug 'idanarye/vim-merginal' "Fugitive extension to manage and merge Git branches
Plug 'tpope/vim-rhubarb' " GitHub extension for fugitive.vim
Plug 'tpope/vim-fugitive' " an awesome Git wrapper
Plug 'junegunn/gv.vim' " a git commit browser

" editing
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'AndrewRadev/splitjoin.vim' " multiline <-> single-line
Plug 'junegunn/vim-slash' " 1) auto clear search highlight; 2) improved star-search
Plug 'machakann/vim-highlightedyank'

" lang
Plug 'prettier/vim-prettier', { 'do': 'yarn' }
Plug 'neoclide/coc.nvim', {'do': 'yarn --frozen-lockfile'}
Plug 'mattn/emmet-vim', { 'for': ['javascript.jsx', 'html', 'css'] }
Plug 'godlygeek/tabular' " text filtering and alignment

" frontend 
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ap/vim-css-color'
Plug 'moll/vim-node'
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim' " typescript syntax

Plug 'idanarye/vim-vebugger'

" color schemes

" others
Plug 'vimwiki/vimwiki'
Plug 'itchyny/calendar.vim'
Plug 'joshdick/onedark.vim'

call plug#end()

" => Plugin Trash

" Plug 'morhetz/gruvbox'
" Plug 'yianwillis/vimcdoc' " chinese help
" Plug 'pangloss/vim-javascript'
" Plug 'jelera/vim-javascript-syntax'
" Plug 'tommcdo/vim-lion' " A simple alignment operator for Vim text editor
" Plug 'itchyny/dictionary.vim' " not compatible with neovim
" Plug 'mileszs/ack.vim'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'romainl/vim-qf'
" Plug 'leafgarland/typescript-vim'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" Plug 'neoclide/vim-jsx-improve'
" Plug 'tpope/vim-vinegar' " Combine with netrw to create a delicious salad dressing
" Plug 'tpope/vim-dadbod'
" Plug 'wincent/ferret' " Enhanced multi-file search for Vim 
" Plug 'wincent/command-t'
" Plug 'tpope/vim-obsession' " continuously updated session files
" Plug 'henrik/vim-indexed-search'
" Plug 'ap/vim-buftabline'
" Plug 'justinmk/vim-sneak' " motion
" Plug 'w0rp/ale'
" Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' } " file explorer
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'neoclide/denite-extra'
" Plug 'mhinz/vim-startify' " The fancy start screen for Vim
" Plug 'majutsushi/tagbar'
" Plug 'Shougo/neomru.vim'
" Plug 'sonph/onehalf', { 'rtp': 'vim/' }
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
" Plug 'scrooloose/nerdcommenter'
" Plug 'vim-syntastic/syntastic' "Syntax checking hacks for vim
" Plug 'othree/yajs.vim' "Yet Another JavaScript Syntax for Vim
" Plug 'sbdchd/neoformat'
" Plug 'posva/vim-vue'
" Plug 'jparise/vim-graphql'
" Plug 'trevordmiller/nova-vim'
" Plug 'hotoo/pangu.vim' "中文排版自动规范化
" Plug 'reedes/vim-lexical' " Build on Vim’s spell/thes/dict completion
" Plug 'flazz/vim-colorschemes'
" Plug 'felixhummel/setcolors.vim'

" => options

let mapleader=" "

packadd cfilter

set path+=**
set wildignore+=**/node_modules/** 
set shortmess+=I " hide intro message
set noerrorbells
set novisualbell
set termguicolors
set noshowmode
set nowrap
set linebreak
set updatetime=100
set clipboard=unnamed
set number
set cursorline
set signcolumn=yes
set fillchars=vert:\│,fold:-
set splitright
set splitbelow
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set ignorecase
set foldmethod=syntax "syntax highlighting items specify folds
set foldlevelstart=99 "start file with all folds opened
set autoread
set list " work great with onedark.vim for showing trail chars

hi ColorColumn guibg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" let javaScript_fold=1 "activate folding by JS syntax

" hi Visual guibg=#407E61
hi VertSplit guibg=bg

" => plugin Config

" ---> gruvbox

let g:gruvbox_contrast_dark = 'hard'
let g:vimwiki_use_calendar = 1


" ---> vimwiki

" let wiki_personal = {}
" let wiki_personal.path = '~/vimwiki/personal/'
" let wiki_personal.auto_tags = 1

" let wiki_fdd = {}
" let wiki_fdd.path = '~/vimwiki/fdd'
" let wiki_fdd.path_html = '~/vimwiki/fdd/html'

" let g:vimwiki_list = [wiki_personal, wiki_fdd]
" let g:vimwiki_folding = 'list'
" let g:vimwiki_user_htmls = '404.html,search.html'

" ---> netrw

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_altv = 1


" ---> highlightedyank

let g:highlightedyank_highlight_duration = 100


" ---> vim-qf

" let g:qf_mapping_ack_style = 1
" let g:qf_auto_open_quickfix = 0
" let g:qf_auto_open_loclist = 0

" ---> ack

" let g:ackprg = "ag --vimgrep"
" let g:ackhighlight = 1
" let g:ack_use_cword_for_empty_search = 0

" ---> vimcdoc

" reset helplang, yianwillis/vimcdoc set helplang=cn
autocmd! VimEnter * set helplang=en

" ---> Denite

" call denite#custom#alias('source', 'file/rec/git', 'file/rec')
" call denite#custom#var('file/rec/git', 'command',
"       \ ['git', 'ls-files', '-co', '--exclude-standard'])
" nnoremap <silent> <C-p> :<C-u>Denite
"       \ `finddir('.git', ';') != '' ? 'file/rec/git' : 'file/rec'`<CR>
call denite#custom#map(
      \ 'insert',
      \ '<C-n>',
      \ '<denite:move_to_next_line>',
      \ 'noremap'
      \)
call denite#custom#map(
      \ 'insert',
      \ '<C-p>',
      \ '<denite:move_to_previous_line>',
      \ 'noremap'
      \)

call denite#custom#var('file/rec', 'command',
      \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" " narrow by path in grep source
" call denite#custom#source('grep',
"       \ 'converters', ['converter/relative_word'])

" ---> coc.nvim
let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-json',
\ 'coc-css',
\ 'coc-html',
\ 'coc-yaml',
\ 'coc-python',
\ 'coc-snippets',
\ ]


" ---> fzf

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:toggle-all --layout=reverse --height=10% --no-bold --prompt="  "'
let g:fzf_nvim_statusline = 0
let g:fzf_statusline = 0
let g:fzf_layout = {'down': '20%'}

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
endfunction

let g:fzf_action = {
      \ 'ctrl-q': function('s:build_quickfix_list'),
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

" http://learnvimscriptthehardway.stevelosh.com/chapters/33.html
" <leader>giw, etc.
function! GrepOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    execute "Denite grep -input=" . @@
endfunction

" let g:fzf_colors = { 
"       \ 'fg':      ['fg', 'Directory'],
"       \ 'bg':      ['bg', 'Normal'],
"       \ 'hl':      ['fg', 'PreProc'],
"       \ 'hl+':     ['fg', 'PreProc'],
"       \ 'prompt':  ['fg', 'Directory'],
"       \}

      " \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      " \ 'bg+':     ['bg', 'Normal', 'CursorColumn'],
      " \ 'gutter':  ['bg', 'Normal'],
      " \ 'info':    ['fg', 'PreProc'],
      " \ 'border':  ['fg', 'Ignore'],
      " \ 'pointer': ['fg', 'Ignore'],
      " \ 'marker':  ['fg', 'Keyword'],
      " \ 'spinner': ['fg', 'Label'],
      " \ 'header':  ['fg', 'Comment'] }


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

" let g:deoplete#enable_at_startup = 1
" let g:deoplete#file#enable_buffer_path = 1

" ---> ctrlp.vim

let g:ctrlp_match_window = 'bottom,order:ttb,min:10,max:10,results:100'
let g:ctrlp_show_hidden = 1
"change working path === pwd
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.cache$\|\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$\|\.vscode$',
      \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$\|\.DS_Store$' }


" ---> NERDTree

let NERDTreeShowHidden=1

" ---> lightline

let g:lightline = { 'colorscheme': 'onedark' }

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

let g:user_emmet_leader_key='<c-e>'
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
let g:user_emmet_settings={
\  'javascript.jsx' : {
\    'extends': 'jsx',
\    'ignore_embeded_filetype': 1,
\    'attribute_name': {'class': 'className', 'for': 'htmlFor'},
\    'empty_element_suffix': ' />',
\  },
\}
autocmd FileType html,css,javascript.jsx EmmetInstall


" ---> prettier

" let g:prettier#config#parser = 'babel'
let g:prettier#config#single_quote = 'true' 
let g:prettier#config#trailing_comma = 'all'

let g:sneak#label = 1

" ---> gitgutter

" autocmd BufEnter * GitGutterAll

" ---> goyo

let g:goyo_height = '100%'
let g:goyo_linenr = 1

function! s:goyo_enter()
  " silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowcmd
  " set scrolloff=999
  silent !tmux set status off
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  " silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showcmd
  " set scrolloff=5
  
  " redraw fillchars=vert:\
  hi VertSplit guibg=bg
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()


" => Mappings

nnoremap : ;
nnoremap ; :

vnoremap : ;
vnoremap ; :

nnoremap <leader><Tab> :b#<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
nnoremap <leader>nn :nohl<cr>

nnoremap <silent><leader>f :Denite buffer file/rec<cr>
nnoremap <silent><leader>gg :Denite -no-empty grep<cr>

nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprevious<cr>
nnoremap <leader>nc :cnext<cr>
nnoremap <leader>pc :cprevious<cr>
nnoremap <leader>nl :lnext<cr>
nnoremap <leader>pl :lprevious<cr>
nnoremap <leader>nh :GitGutterNextHunk<cr>
nnoremap <leader>ph :GitGutterPrevHunk<cr>

nnoremap <silent><C-p> :FZF<cr>
nnoremap <silent><leader>m :FZFMru<cr>
nnoremap <silent><leader>bf :Buffer<cr>
nnoremap <silent><leader>g :<c-u>set operatorfunc=GrepOperator<cr>g@
vnoremap <silent><leader>g :<c-u>call GrepOperator(visualmode())<cr>

nnoremap <leader>ee :NERDTreeToggle<cr>
nnoremap <leader>er :NERDTreeFind<cr>

nmap <Leader>wp <Plug>VimwikiDiaryPrevDay
nmap <Leader>wn <Plug>VimwikiDiaryNextDay

nnoremap <leader>z :Goyo<cr>

" save buffer
noremap <C-S>    :w<CR>
vnoremap <C-S>   <C-C>:w<CR>
inoremap <C-S>   <C-C>:w<CR>

" search visual
vnoremap // y/<C-r>"<cr>

" terminal
tnoremap <Esc> <C-\><C-n>

" switch windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" search google
nnoremap <leader>s :<c-u>set operatorfunc=SearchOperator<cr>g@
vnoremap <leader>s :<c-u>call SearchOperator(visualmode())<cr>
function! SearchOperator(type)
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute '!open https://www.google.com/search\?q=\'. @@
endfunction


" => Autocmds

" augroup AutoSaveAndRestoreView
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent loadview
" augroup END<Paste>

autocmd BufWritePost,WinEnter * GitGutter

autocmd BufNewFile,BufRead *.vue set filetype=html
autocmd BufNewFile,BufRead *.wxml set filetype=html
autocmd FocusGained * :checktime

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set wrap linebreak
" autocmd BufRead,BufNewFile *.md call deoplete#disable()

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

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

" call NERDTreeAddMenuItem({ 
"   \'text': 'e(x)ecute',
"   \ 'shortcut': 'x',
"   \ 'callback': 'NERDTreeOpen' })

" function! NERDTreeOpen()
"   let node = g:NERDTreeFileNode.GetSelected()
"   let path = node.path.str()
"   let args = shellescape(path, 1) . " > /dev/null"
"   exe "silent !open " . args
" endfunction


" => ColorScheme

  augroup colorextend
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight("CursorLine", { "bg": { "gui": "#414A58" } })
  augroup END

colorscheme onedark
