set nocompatible
syntax on
filetype plugin indent on
set ignorecase
set number

"navigate in panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


call plug#begin('~/.local/share/nvim/plugged')

""" indent line
Plug 'Yggdroot/indentLine'

""" Yaml
Plug 'stephpy/vim-yaml'


""" Multi cursor
Plug 'terryma/vim-multiple-cursors'

""" SURROUND
Plug 'tpope/vim-surround'

""" Lusty explorer
" Plug 'vim-scripts/LustyExplorer'

Plug 'wincent/command-t'

""" SUPERTAB
Plug 'ervandew/supertab'

""" COLORIZER - color the color code (ex #fe3213) 
Plug 'lilydjwg/colorizer'

""" FZF search in file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

""" LIGHTLINE status line very light
Plug 'itchyny/lightline.vim'

"""NERDTREE
Plug 'scrooloose/nerdtree'
" nerdtree git
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

""" vim fugitive
Plug 'tpope/vim-fugitive'

""" TCOMMENT
Plug 'tomtom/tcomment_vim'

""" ALE checking syntax and semantics
Plug 'w0rp/ale'

""" VIM GUTTER git diff in vim
Plug 'airblade/vim-gitgutter'

""" SYNTASTIC
Plug 'vim-syntastic/syntastic'

""" TERRAFORM
Plug 'hashivim/vim-terraform'
""" Plug 'b4b4r07/vim-hcl'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'jvirtanen/vim-hcl'

""" Packer
Plug 'hashivim/vim-packer'

""" NEOMAKE
Plug 'neomake/neomake'

""" DEOPLET
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"""TAGBAR
Plug 'majutsushi/tagbar'

"""SALT
Plug 'saltstack/salt-vim'

"""JINJA
Plug 'lepture/vim-jinja'

""" trailing whithspaces
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)Remove Info(Preview) window
set completeopt-=preview

" (Optional)Hide Info(Preview) window after completions
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

""" TERRAFORM 
let g:terraform_align=1
" (Optional) Enable terraform plan to be include in filter
let g:syntastic_terraform_tffilter_plan = 1

" (Optional) Default: 0, enable(1)/disable(0) plugin's keymapping
let g:terraform_completion_keys = 1

" (Optional) Default: 1, enable(1)/disable(0) terraform module registry completion
let g:terraform_registry_module_completion = 0
let g:terraform_fmt_on_save=1

"Deopplet conf
let g:deoplete#omni_patterns = {}
let g:deoplete#omni_patterns.terraform = '[^ *\t"{=$]\w*'
let g:deoplete#enable_at_startup = 1
call deoplete#initialize()

:let mapleader = ","

nmap <silent> <Leader>f <Plug>(CommandT)
nmap <silent> <Leader>b <Plug>(CommandTBuffer)
nmap <silent> <Leader>j <Plug>(CommandTJump)
nmap <silent> <Leader>t <Plug>(CommandTFlush)

" minimum line under cursor
set scrolloff=10

""" spaces antab higkighting
set list
"""set listchars=tab:▸·,trail:X,spaces:V
set listchars=tab:»·,extends:›,precedes:‹,nbsp:·,trail:·
highlight WhiteSpaceBol ctermbg=blue
highlight WhiteSpaceMol ctermbg=white
"""match WhiteSpaceMol / /
"""match WhiteSpaceBol /^ \+/
"""
"""let g:indentLine_setColors = 0
