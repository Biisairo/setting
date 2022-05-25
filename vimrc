" Editor
set number " 라인 넘버 표시. (= nu)
set showcmd " 입력된 명령어 표시
set showmatch " 괄호쌍 하이라이팅
"set cursorline " 커서가 있는 라인을 강조 표시. (= cul)
set ruler " 커서 위치 표시. (= ru)
set mouse=a " 마우스로 스크롤 및 리사이즈 가능. [n : Normal mode / v : Visual mode / i	: Insert mode / a : All modes]
set laststatus=0 " 상태바 표시. (= ls) [0: 상태바 미표시 / 1: 2개 이상의 윈도우에서 표시 / 2: 항상 표시]
"set statusline=%F\ %y%m%r\ %=Line:\ %l/%L\ [%p%%]\ Col:%c\ Buf:%n " 상태바 커스터마이징 %<item>으로 사용하며, \는 구분자로 공백을 넣을 경우는 구분자를 넣어줘야함.
"hi statusline ctermfg=White ctermbg=4 cterm=none "활성화된 상태바 배경색 및 폰트색 설정
"hi statuslineNC ctermfg=White ctermbg=8 cterm=none " 윈도우가 2개 이상인 경우 비활성화된 윈도우의 배경색 및 폰트색 설정
set encoding=utf-8 " Necessary to show Unicode glyphs

" Indent
set autoindent " 새로운 라인이 추가될 때, 이전 라인의 들여쓰기에 자동으로 맞춤. (= ai)
set expandtab  " Tab을 Space로 변경. (= et)
set tabstop=4 " 탭으로 들여쓰기시 사용할 스페이스바 개수. (= ts)
set shiftwidth=4 " <<, >> 으로 들여쓰기시 사용할 스페이스바 개수. (= sw)
set softtabstop=4 " 스페이스바 n개를 하나의 탭으로 처리. (= sts)
set nofoldenable " 시작시 내용을 모두 펼침
set cindent " c 언어 들여쓰기
set paste

" Search
set hlsearch " 검색된 결과 강조 표시. (= hls) <-> nohlsearch (= nohls)
set ignorecase " 검색시 대소문자를 구분하지 않음. (= ic) <-> noignorecase (= noic)
set incsearch " 검색어를 입력할 때마다 일치하는 문자열을 강조해서 표시. (= is) <-> noincsearch (= nois)
set smartcase " 검색어에 대문자가 있다면 정확히 일치하는 문자열을 찾음. ignorecase 옵션이 on이어도 됨. (= scs) <-> nosmartcase (= noscs)

" Input
set backspace=eol,start,indent " 라인의 시작과 끝의 들여쓰기를 백스페이스로 지움.
set history=256 " 편집한 내용 저장 개수 (되돌리기 제한 설정)
set clipboard=unnamed
set nrformats= "0이 앞에 붙은 숫자일 때, 8진수가 아닌 10진수값으로 계산되도록 설정
set t_Co=256 "256 컬러 사용

" Smart tool
set smartcase
set smarttab
set smartindent

" 추가기능
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴

" Syntax Highlighting
if has("syntax")
    syntax on
endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
