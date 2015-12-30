set cursorline                  "Get a cursor line"
set relativenumber
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
" ============== Disable Arrow keys =================

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" ================ Toggle Paste ====================
nnoremap ,p :set paste! nopaste?<CR>

" ================ Map WQ and W, Q  ====================
:command WQ wq
:command Wq wq
:command W w
:command Q q
" ================ Toggle Paste ====================
nnoremap ,n :set number! nonumber?<CR>

"===================================================
"Copy filename and Path via VIM
"===================================================
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
nnoremap ,sp :echo expand("%:p")<CR>

"Ruvy indentation
"====================
au FileType ruby set softtabstop=2 tabstop=2 shiftwidth=2
