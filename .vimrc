"一、基本配置 如行号和高亮
set nu		"set number
syntax on			"设置语法高亮
"set cursorline		"突出当前行，就是当前行会有一个底色阴影
set nocompatible	"设置不与vi兼容"
set encoding=utf-8  "use utf8 charset"
set wrap			"设置自动行换行"
set linebreak		"只有遇到指定的符号（比如空格、连词号和其他标点符号），才发生折行。也就是说，不会在单词内部折行。"

"二、设置缩进相关
set autoindent
set cindent			"以c语言的方式进行缩进
set shiftwidth=4	"设置自动缩进的空格数量为4	在文本上按下>>（增加一级缩进）、<<（取消一级缩进）或者==（取消全部缩进）时，每一级的字符数。

set softtabstop=4	"tab健的实际占用空格格，统一缩进
set tabstop=4		"设置tab健的空格数
set expandtab		"由于 Tab 键在不同的编辑器缩进不一致，该设置自动将 Tab 转为空格。"

"softtabstop是为了统一缩进的。当tabstop,shiftwidth和softtabstop这三个的空格数量不同时，统一使用softtabstop的空格数量。

"三、设置自动补全相关
"设置括号等自动补	inoremap 是 i + nore + map组成的，i表示在插入模式下使用;nore表示不进行递归;map表示按键映射，看下面实例：
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

"四、设置鼠标在不同械下的显示状态（因为在默认模式下，根本区分不出来插入模式和normal模式） Set cursor shape and color
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;blue\x7"
    " REPLACE mode
    let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;black\x7"
    " NORMAL mode
    let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"
endif
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

"五、搜索相关"
set showmatch		"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号。"
set hlsearch		"搜索时高亮显示搜索结果"
set incsearch		"搜索时，每输入一个字符，就自动跳到第一个匹配的结果"


"六、编辑"
"set spell spelllang=en_us       "打开英语单词的拼写检查。"
set undofile                    "保留撤销历史。Vim 会在编辑时保存操作历史，用来供用户撤消更改。默认情况下，操作记录只在本次编辑时有效，一旦编辑结束、文件关闭，操作历史就消失了。打开这个设置，可以在文件关闭后，操作记录保留在一个文件里面，继续存在。撤消文件是跟原文件保存在一起的隐藏文件，文件名以.un~开头"
"set visualbell                  "出错时，发出视觉提示，通常是屏幕闪烁。"
set history=1000                "Vim 需要记住多少次历史操作。"

"set listchars=tab:»■,trail:■
"set list                        "如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块。"
