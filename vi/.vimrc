" http://dougblack.io/words/a-good-vimrc.html
syntax enable           " enable syntax processing

set tabstop=4           " number of visual spaces per tab
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces

set number              " show line numbers
set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
"filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set foldenable          " enable folding
set foldlevelstart=0    " open most folds by default
set foldnestmax=10      " 10 nested fold max
"set foldmethod=indent   " fold based on indent level
set foldmethod=marker   " foldingmarker


" my setting
set nobackup            " 백업파일을 만들지 않음
set autoindent          " 자동 들여쓰기
set smartindent         " 역시 자동 들여쓰기
set shiftwidth=4        " 자동 들여쓰기 간격
set ruler               " 상태표시줄에 커서 위치를 보여줌
set title               " 타이틀바에 현재 편집중인 파일을 표시
au BufReadPost *.html set syntax=php "html file에 php syntax 적용 
let g:NERDTreeDirArrows=0 "NERDTree 

"set nocompatible        " Vim 디폴트 기능들을 사용함
"set backspace=2         " 삽입 모드에서 백스페이스를 계속 허용
""set nowrap              " 자동 줄바꿈 안함
""set nowrapscan          " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음
""set ignorecase           찾기에서 대/소문자를 구별하지 않음
"set nojoinspaces        " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔
"set linespace=3         " 줄간격
"set fdm=marker          " foldingmarker


colorscheme monokai

