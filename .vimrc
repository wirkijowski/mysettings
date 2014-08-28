:syntax on
:set autoindent
:set cindent
:set sw=4
:set tabstop=4
:set expandtab
:set number
":set textwidth=79"
:set printoptions=paper:a4
:set nocompatible
    
:source ~/.vim/minibufexpl.vim
:source ~/.vim/project.vim
nmap <silent> <F12> <Plug>ToggleProject
:source ~/.vim/taglist.vim
let Tlist_Use_Right_Window = 1
nmap <silent> <F10> <Plug>TList


filetype plugin on
set ofu=syntaxcomplete#Complete

	
filetype plugin indent on
autocmd FileType python set complete+=k/usr/share/vim/vim72/syntax/python.vim isk+=.,(
" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>



" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>



if has("autocmd")

	au FileType mail,tex set textwidth=72
endif

if getline(1) =~ 'from django.db import models'
	Snippet addmodel class <{}>(models.Model):<CR><><CR><CR>def __unicode__(self):<CR>return "%s" % (<{}>,)
	Snippet mcf models.CharField(max_length=<{}>)<CR><{}>
	Snippet mff models.FileField(upload_to=<{}>)<CR><{}>
	Snippet mfpf models.FilePathField(path=<{}>, match="<{}>", recursive=<False>)<CR><{}>
	Snippet mfloat models.FloatField(max_digits=<{}>, decimal_places=<{}>)<CR><{}>
	Snippet mfk models.ForeignKey(<{}>)<CR><{}>
	Snippet m2m models.ManyToManyField(<{}>)<CR><{}>
	Snippet o2o models.OneToOneField(<{}>)<CR><{}>
endif

