" Path of this file: ~/.vim/after/syntax/forth.vim
" ===== highlight directives preproc =========================================
syn match forthMyDirective /#define/
syn match forthMyDirective /#include/
highlight link forthMyDirective forthDefine

" ===== highlight hex numbers as dec =========================================
syn match forthMyHex /0x[0-9A-Fa-f]\+/
highlight link forthMyHex Number

" ===== highlight boolean ====================================================
syn match forthMyTrue /TRUE/
highlight link forthMyTrue DiffAdd
syn match forthMyFalse /FALSE/
highlight link forthMyFalse SpecialKey

" =====  highlight commands for registers ====================================
syn match forthMyCmd /io@/
syn match forthMyCmd /io!/
highlight link forthMyCmd Function

" =====  highlight commands for address stack ================================
syn match forthMyCmd1 /pc@/
syn match forthMyCmd1 /pc!/
highlight link forthMyCmd1 Operator

" =====  highlight for address variables =====================================
syn match forthMyAddress /\<a_[a-zA-Z_0-9]\+/
highlight link forthMyAddress DiffChange
