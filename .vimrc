" Note about color scheme:
"   A plugin is installed to browse color schemes.
"   Just type :COLOR to flip through the available color schemes
"   Change the colorscheme directive below to make that choice the global default
" See: www.vim.org/scripts/script.php?script_id=1488

" Sets the color scheme
colorscheme vibrantink
"colorscheme wood

" Sets <TAB> to behave like escape
" See: http://vim.wikia.com/wiki/Avoid_the_escape_key
nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <Leader><Tab> <Tab>

" Puts the current time in the paste buffer
" ':r !date' also works
:nnoremap <F5> "=strftime("%c")<CR>P
:inoremap <F5> <C-R>=strftime("%c")<CR>

" Adds custom C++ types for syntax highlighting
syn keyword cppType byte_t ubyte_t char8_t uchar8_t

