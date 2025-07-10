" Load vim-be-good
set rtp+=/Users/apple/dev/tools/vim-be-good

" --- Interface ---
set number              " Absolute line numbers
set relativenumber      " Relative numbers (great for movement)
set cursorline          " Highlight the current line
set signcolumn=yes      " Show sign column to avoid shifting text
set showmode            " Show current mode (e.g. -- INSERT --)
set showcmd             " Show partial command below

" --- Aesthetic: hide '~' symbols on empty lines ---
set fillchars=eob:\     " Replace '~' with blank
hi EndOfBuffer guibg=NONE ctermbg=NONE
