
Plug 'mhinz/vim-startify'
let g:startify_files_number=20
" ------------------------------------------------------------------------------------------
Plug 'ryanoasis/vim-devicons'
Plug 'mbbill/fencview' "自动编码插件

Plug 'raimondi/delimitmate' " auto quotes,parenthesis,brackets
Plug 'wesq3/vim-windowswap' "swap windows without change layout <leader>ww
Plug 'tpope/vim-repeat' " Make sure you use single quotes
" ------------------------------------------------------------------------------------------
" 使用 easymotion跳转替换sneak
Plug 'easymotion/vim-easymotion'
let g:EasyMotion_smartcase = 1
" map f <Plug>(easymotion-bd-f)
" map s <Plug>(easymotion-bd-f2)
map f <Plug>(easymotion-bd-f2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
" enable paste during search
" EMCommandLineNoreMap \"\+gP <C-r>+ <CR>
augroup easymotion-keymap | au!
   au VimEnter * EMCommandLineNoreMap \"\+gP <C-r>+ <CR>
augroup END

" ------------------------------------------------------------------------------------------
" Plug 'justinmk/vim-sneak'
" let g:sneak#label = 1
" "change to multiline model
" map f <Plug>Sneak_f
" map F <Plug>Sneak_F

" map t <Plug>Sneak_t
" map T <Plug>Sneak_T


Plug 'elzr/vim-json' " json highlighter
" 不要隐藏json 引号
let g:vim_json_syntax_conceal = 0

"automactive switch input method
Plug 'rlue/vim-barbaric'
Plug 'myshov/xkbswitch-macosx'
" The input method for Normal mode (as defined by `xkbswitch -g` or `ibus engine`)
let g:barbaric_default = 0
" The scope where alternate input methods persist (buffer, window, tab, global)
let g:barbaric_scope = 'buffer'
" Forget alternate input method after n seconds in Normal mode (disabled by default)
" Useful if you only need IM persistence for short bursts of active work.
let g:barbaric_timeout = -1

" ctrl+d/u ctrl+f/b move smooth
" Plug 'yuttie/comfortable-motion.vim'
" let g:comfortable_motion_scroll_down_key = "j"
" let g:comfortable_motion_scroll_up_key = "k"
" try another motion plugins: vim-smoothie
Plug 'psliwka/vim-smoothie'

" " 保存vim退出时的保存session tab
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'
" let g:session_autosave = 'yes'
" let g:session_autoload = 'yes'
" " Disable all session locking - I know what I'm doing :-).
" let g:session_lock_enabled = 0

" Plug 'thaerkh/vim-workspace'
" let g:workspace_autosave_always = 1
"
"by default gitcommit,gitrebase,nerdtree are ignored, if uncomment this line, nerdtree will rise error
" let g:workspace_autosave_ignore += ['NERD*']
"
" let g:workspace_persist_undo_history = 1
" let g:workspace_undodir='.undodir'
" after this setting , need to ToggleWorkspace at first empty file"

" if has("gui_macvim")
"     let g:workspace_session_directory = $HOME . '/.vim/workspace/'
" endif
" if has("gui_win32")
"     let g:workspace_session_directory = $HOME . '\.vim\workspace\'
" endif

" let g:workspace_session_name = 'Session.vim'
"<leader>s新建session
" nnoremap <leader>s :ToggleWorkspace<CR>
"
" textobj 操作
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'
" Multiple Plug commands can be written in a single line using | separators
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" change surroundings，  cs   ds
Plug 'tpope/vim-surround'

" install nerd font in terminal,
Plug 'ryanoasis/vim-devicons'

Plug 'airblade/vim-rooter'
let g:rooter_change_directory_for_non_project_files = 'current'
let g:rooter_patterns = ['Rakefile','.git', '.git/','.root','.root/','.project/','.svn/']
let g:rooter_use_lcd = 1
let g:rooter_silent_chdir = 1

" :Bdelete  close the file and key the window open,so it used to keep vim layout doesn't change
" Plug 'moll/vim-bbye'
" ------------------------------------------------------------------------------------------
Plug 'ap/vim-css-color'
