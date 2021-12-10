" Custom configration for vifm

" set regualar and relative number for faster movement
set number
set relativenumber

" show syntax in preview
fileviewer *[^/] env -uCOLORTERM bat --theme=DarkNeon --color always --wrap never --pager never %c -p


" ------------------------------------------------------------------------------

" Mappings

" Manage splits
nnoremap O :only<cr>
nnoremap \ :vsplit<cr>
nnoremap - :split<cr>

" Alternative for file/dir opening
nnoremap o l

" Mappings for faster renaming
nnoremap r cw<c-a>

" File operators
nnoremap mf :touch<space>
nnoremap md :mkdir<space>

" Vimf window
nnoremap Q :q<cr>
nnoremap x :wq<cr>
nnoremap V :!less %f<cr>

" select like in totalcmd
nnoremap <space> :select<cr>

" directory shortcuts
mark h ~
mark r /
mark t /tmp
mark p ~/Projects/git-symphony/Platoon/
mark d ~/Projects/git-symphony/Platoon/platoon-devops-scripts/

"these are left as mapping as mark only supports one character
nnoremap gpg :cd ~/Projects/git<cr>
nnoremap gpp :cd ~/Projects/Private<cr>
nnoremap gpt :cd ~/Projects/Testing<cr>
nnoremap gpv :cd ~/Projects/vsts<cr>

" Filetypes/directories
set classify=' :dir:/, :exe:, :reg:, :link:,? :?:, ::../::'

" Specific files
set classify+=' ::.Xdefaults,,.Xresources,,.bashprofile,,.bash_profile,,.bashrc,,.dmrc,,.d_store,,.fasd,,.gitconfig,,.gitignore,,.jack-settings,,.mime.types,,.nvidia-settings-rc,,.pam_environment,,.profile,,.recently-used,,.selected_editor,,.xinitpurc,,.zprofile,,.yarnc,,.snclirc,,.tmux.conf,,.urlview,,.config,,.ini,,.user-dirs.dirs,,.mimeapps.list,,.offlineimaprc,,.msmtprc,,.Xauthority,,config::'
set classify+=' ::dropbox::'
set classify+=' ::favicon.*,,README,,readme::'
set classify+=' ::.vim,,.vimrc,,.gvimrc,,.vifm::'
set classify+=' ::gruntfile.coffee,,gruntfile.js,,gruntfile.ls::'
set classify+=' ::gulpfile.coffee,,gulpfile.js,,gulpfile.ls::'
set classify+=' ::ledger::'
set classify+=' ::license,,copyright,,copying,,LICENSE,,COPYRIGHT,,COPYING::'
set classify+=' ::node_modules::'
set classify+=' ::react.jsx::'

" File extensions
set classify+='λ ::*.ml,,*.mli::'
set classify+=' ::*.styl::'
set classify+=' ::*.scss::'
set classify+=' ::*.py,,*.pyc,,*.pyd,,*.pyo::'
set classify+=' ::*.php::'
set classify+=' ::*.markdown,,*.md::'
set classify+=' ::*.json::'
set classify+=' ::*.js::'
set classify+=' ::*.bmp,,*.gif,,*.ico,,*.jpeg,,*.jpg,,*.png,,*.svg,,*.svgz,,*.tga,,*.tiff,,*.xmb,,*.xcf,,*.xpm,,*.xspf,,*.xwd,,*.cr2,,*.dng,,*.3fr,,*.ari,,*.arw,,*.bay,,*.crw,,*.cr3,,*.cap,,*.data,,*.dcs,,*.dcr,,*drf,,*.eip,,*.erf,,*.fff,,*.gpr,,*.iiq,,*.k25,,*.kdc,,*.mdc,,.*mef,,*.mos,,.*.mrw,,.*.obm,,*.orf,,*.pef,,*.ptx,,*.pxn,,*.r3d,,*.raf,,*.raw,,*.rwl,,*.rw2,,*.rwz,,*.sr2,,*.srf,,*.srf,,*.srw,,*.tif,,*.x3f::'
set classify+=' ::*.ejs,,*.htm,,*.html,,*.slim,,*.xml::'
set classify+=' ::*.mustasche::'
set classify+=' ::*.css,,*.less,,*.bat,,*.conf,,*.ini,,*.rc,,*.yml,,*.cfg,,*.rc::'
set classify+=' ::*.rss::'
set classify+=' ::*.coffee::'
set classify+=' ::*.twig::'
set classify+=' ::*.c++,,*.cc,,*.c,,*.cpp,,*.cxx,,*.c,,*.h::'
set classify+=' ::*.hs,,*.lhs::'
set classify+=' ::*.lua::'
set classify+=' ::*.jl::'
set classify+=' ::*.go::'
set classify+=' ::*.ts::'
set classify+=' ::*.db,,*.dump,,*.sql::'
set classify+=' ::*.sln,,*.suo::'
set classify+=' ::*.exe::'
set classify+=' ::*.diff,,*.sum,,*.md5,,*.sha512::'
set classify+=' ::*.scala::'
set classify+=' ::*.java,,*.jar::'
set classify+=' ::*.xul::'
set classify+=' ::*.clj,,*.cljc::'
set classify+=' ::*.pl,,*.pm,,*.t::'
set classify+=' ::*.cljs,,*.edn::'
set classify+=' ::*.rb::'
set classify+=' ::*.fish,,*.sh,,*.bash::'
set classify+=' ::*.dart::'
set classify+=' ::*.f#,,*.fs,,*.fsi,,*.fsscript,,*.fsx::'
set classify+=' ::*.rlib,,*.rs::'
set classify+=' ::*.d::'
set classify+=' ::*.erl,,*.hrl::'
set classify+=' ::*.ai::'
set classify+=' ::*.psb,,*.psd::'
set classify+=' ::*.jsx::'
set classify+=' ::*.vim,,*.vimrc::'
set classify+=' ::*.aac,,*.anx,,*.asf,,*.au,,*.axa,,*.flac,,*.m2a,,*.m4a,,*.mid,,*.midi,,*.mp3,,*.mpc,,*.oga,,*.ogg,,*.ogx,,*.ra,,*.ram,,*.rm,,*.spx,,*.wav,,*.wma,,*.ac3::'
set classify+=' ::*.avi,,*.flv,,*.mkv,,*.mov,,*.mov,,*.mp4,,*.mpeg,,*.mpg,,*.webm::'
set classify+=' ::*.epub,,*.pdf,,*.fb2,,*.djvu::'
set classify+=' ::*.7z,,*.apk,,*.bz2,,*.cab,,*.cpio,,*.deb,,*.gem,,*.gz,,*.gzip,,*.lh,,*.lzh,,*.lzma,,*.rar,,*.rpm,,*.tar,,*.tgz,,*.xz,,*.zip::'
set classify+=' ::*.cbr,,*.cbz::'
set classify+=' ::*.log::'
set classify+=' ::*.doc,,*.docx,,*.adoc::'
set classify+=' ::*.xls,,*.xls,,*.xlsmx::'
set classify+=' ::*.pptx,,*.ppt::'
