#				DocForL's .Bashrc Config
#				All Rights To The Public!
#		You have to install "yay" "exa" "most" and "doas" for this config to function correctly
[[ $- != *i* ]] && return

#	Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

#	Add it don't run on it! * don't append history *
shopt -s histappend

#	Color slave		* forcing terminal colors *
force_color_prompt=yes

#	This is like cd but it lists the directory's contents.
function md()
{
	cd "$*" && exa -al --color=always --group-directories-first
}

# My PS1 (Don't even ask about orbius)
PS1='\[\e[0;38;5;32m\]\h\[\e[0;1;38;5;38m\]@\[\e[0;38;5;160m\]Oribus \[\e[0;38;5;196m\]{\[\e[0;1;38;5;118m\]\w\[\e[0;38;5;196m\]}\[\e[0m\]: \[\e[0m\]'

#	That's a long list
alias al="exa -al --color=always --group-directories-first"	#	List all files with good colors
alias lext="exa -al --color=always | egrep "^\.""		#	Get all .files 
alias letc="exa -al --color=always --group-directories-first"	#	List all of /etc


#	Gunning it to GNUme!					#	Basic movement
alias ..="md .."
alias home="md /home"
alias down="md ~/Downloads"
alias etc="md /etc"

#	Knock Knock, who's there? Sudo, Sudo who? Sudo This Package for me!
alias d="doas"				#	Give admin

#	Hey kid! You want some Packages?
alias ds="doas pacman -S"			#	Install from the standard pkglibrary
alias dup="doas pacman -Syyu"			#	Update standard pkgs
alias auronly="yay -Sua --noconfirm"		#	Update only AUR pakages
alias yapall="yay -Syu --noconfirm"		#	Update all standard and AUR pkgs
alias yas="yay -S"				#	Install using YAY
alias spring="doas pacman -Rns $(pacman -Qtdq)" #	Removes orphaned pakages *Never use it
alias lockoff="doas rm /var/lib/pacman/db.lock"	#	Removes database locks *Just in case

#	I'm gonna alter the deal, Pray I don't alter it further!
alias dim="doas nvim"

#	Turn down for what?
alias deboot="doas poweroff"
alias dstart="doas reboot"

#	Gitting It
alias glone="git clone"

#	Picture This!
alias tss="scrot -d 2 ~/Pictures/"

#	Color LSD
alias la='els -laH --els-icons=fontawesome'	
alias du='du -kh'
alias df='df -kTh'
alias grep='grep --color=auto'
alias mkdir='mkdir --parents'
alias free='free -h'
alias less='less -r'

#	FBI Go Away	* If you don't have this setup then just disable it.
alias tor="cd ~/Garbage/Tor/ && ./start-tor-browser.desktop"

#	Exports
export EDITOR="nvim"			# Neovim
export VISUAL="nvim"			# Neovim
export BROWSER="firefox"		# Firefox
export PAGER="most"			# Man Pages Colors

#	Honny It's 4AM and you need to extratct...
[ -f $HOME/bashfunctions/ex.sh ] && . $HOME/bashfunctions/ex.sh # This is a basic extract funcion, Disable it if you don't have it

#	Tab Config * This is like Fish's or ZSH tab complete
bind TAB:menu-complete
source ~/.inputrc


# 	OH BOY, This is my ls colors that I use.

LS_COLORS='no=01;34;1;244:fi=00:rs=0:di=00;38;5;33:ln=01;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=01;38;5;64:*.tar=00;38;5;61:*.tgz=01;38;5;61:*.arj=01;38;5;61:*.taz=01;38;5;61:*.lzh=01;38;5;61:*.lzma=01;38;5;61:*.tlz=01;38;5;61:*.txz=01;38;5;61:*.zip=01;38;5;61:*.zst=01;38;5;61:*.z=01;38;5;61:*.Z=01;38;5;61:*.dz=01;38;5;61:*.gz=01;38;5;61:*.lz=01;38;5;61:*.xz=01;38;5;61:*.bz2=01;38;5;61:*.bz=01;38;5;61:*.tbz=01;38;5;61:*.tbz2=01;38;5;61:*.tz=01;38;5;61:*.deb=01;38;5;61:*.rpm=01;38;5;61:*.jar=01;38;5;61:*.rar=01;38;5;61:*.ace=01;38;5;61:*.zoo=01;38;5;61:*.cpio=01;38;5;61:*.7z=01;38;5;61:*.rz=01;38;5;61:*.apk=01;38;5;61:*.gem=01;38;5;61:*.jpg=00;38;5;136:*.JPG=00;38;5;136:*.jpeg=00;38;5;136:*.gif=00;38;5;136:*.bmp=00;38;5;136:*.pbm=00;38;5;136:*.pgm=00;38;5;136:*.ppm=00;38;5;136:*.tga=00;38;5;136:*.xbm=00;38;5;136:*.xpm=00;38;5;136:*.tif=00;38;5;136:*.tiff=00;38;5;136:*.png=00;38;5;136:*.PNG=00;38;5;136:*.svg=00;38;5;136:*.svgz=00;38;5;136:*.mng=00;38;5;136:*.pcx=00;38;5;136:*.dl=00;38;5;136:*.xcf=00;38;5;136:*.xwd=00;38;5;136:*.yuv=00;38;5;136:*.cgm=00;38;5;136:*.emf=00;38;5;136:*.eps=00;38;5;136:*.CR2=00;38;5;136:*.ico=00;38;5;136:*.nef=00;38;5;136:*.NEF=00;38;5;136:*.webp=00;38;5;136:*.tex=01;38;5;245:*.rdf=01;38;5;245:*.owl=01;38;5;245:*.n3=01;38;5;245:*.ttl=01;38;5;245:*.nt=01;38;5;245:*.torrent=01;38;5;245:*.xml=01;38;5;245:*Makefile=01;38;5;245:*Rakefile=01;38;5;245:*Dockerfile=01;38;5;245:*build.xml=01;38;5;245:*rc=01;38;5;245:*1=01;38;5;245:*.nfo=01;38;5;245:*README=01;38;5;245:*README.txt=01;38;5;245:*readme.txt=01;38;5;245:*.md=01;38;5;245:*README.markdown=01;38;5;245:*.ini=01;38;5;245:*.yml=01;38;5;245:*.cfg=01;38;5;245:*.conf=01;38;5;245:*.h=01;38;5;245:*.hpp=01;38;5;245:*.c=01;38;5;245:*.cpp=01;38;5;245:*.cxx=01;38;5;245:*.cc=01;38;5;245:*.objc=01;38;5;245:*.sqlite=01;38;5;245:*.go=01;38;5;245:*.sql=01;38;5;245:*.csv=01;38;5;245:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.lof=00;38;5;240:*.lol=00;38;5;240:*.lot=00;38;5;240:*.out=00;38;5;240:*.toc=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:*.aac=00;38;5;166:*.au=00;38;5;166:*.flac=00;38;5;166:*.mid=00;38;5;166:*.midi=00;38;5;166:*.mka=00;38;5;166:*.mp3=00;38;5;166:*.mpc=00;38;5;166:*.ogg=00;38;5;166:*.opus=00;38;5;166:*.ra=00;38;5;166:*.wav=00;38;5;166:*.m4a=00;38;5;166:*.axa=00;38;5;166:*.oga=00;38;5;166:*.spx=00;38;5;166:*.xspf=00;38;5;166:*.mov=01;38;5;166:*.MOV=01;38;5;166:*.mpg=01;38;5;166:*.mpeg=01;38;5;166:*.m2v=01;38;5;166:*.mkv=01;38;5;166:*.ogm=01;38;5;166:*.mp4=01;38;5;166:*.m4v=01;38;5;166:*.mp4v=01;38;5;166:*.vob=01;38;5;166:*.qt=01;38;5;166:*.nuv=01;38;5;166:*.wmv=01;38;5;166:*.asf=01;38;5;166:*.rm=01;38;5;166:*.rmvb=01;38;5;166:*.flc=01;38;5;166:*.avi=01;38;5;166:*.fli=01;38;5;166:*.flv=01;38;5;166:*.gl=01;38;5;166:*.m2ts=01;38;5;166:*.divx=01;38;5;166:*.webm=01;38;5;166:*.axv=01;38;5;166:*.anx=01;38;5;166:*.ogv=01;38;5;166:*.ogx=01;38;5;166:';
export LS_COLORS

