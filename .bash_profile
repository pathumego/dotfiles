## Navigation
#   ---------------------------------------------------------
export PS1="\W \$ "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#   ---------------------------
#   1.  Directory operations
#   ---------------------------

## Navigation
#   ---------------------------------------------------------
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt' # DT:           Pipe content to file on MacOS Desktop


## Recursively remove Apple meta files  ##
#   ---------------------------------------------------------
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"
alias cleanpyc="find . -type f -name '*.pyc' -ls -exec /bin/rm {} \;"

##   extract:  Extract most know archives with one command ##
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }


#   find
#   -----------------------------------------------------------
alias qfind="find . -name "                 # qfind:    Quickly search for file
ff () { /usr/bin/find . -name "$@" ; }      # ff:       Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # ffs:      Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; } # ffe:      Find file whose name ends with a given string

#   spotlight: Search for a file using MacOS Spotlight's metadata
#   -----------------------------------------------------------
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }


## Git  ##
#   ---------------------------------------------------------
alias gs='git status'
alias ga='git add'
alias gau='git add -u' # Removes deleted files
alias gp='git pull'
alias gpu='git push'
alias gc='git commit'
alias gca='git commit -v -a' # Add -m 'blah' for comment
alias gco='git checkout'
alias gl='git log --oneline'


## Misc Apps  ##
#   ---------------------------------------------------------

alias atom='sh /Applications/Atom.app/Contents/Resources/app/atom.sh'
alias trufontupdate='cd;cd src/github/trufont/trufont/;git pull;find . -type f -name '*.pyc' -ls -exec /bin/rm {} \;source ENV_DIR/bin/activate;  pip install .'
alias trufontdev='cd;cd src/github/trufont/trufont/;source ENV_DIR/bin/activate;trufont'
alias ot-sanitise='~/src/github/khaledhosny/ots/ots-sanitize'
alias inkscape='~/Applications/Inkscape.app/Contents/Resources/bin/inkscape-bin'

alias ytmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 -o "%(title)s.%(ext)s"'
alias weasyprint-env='source ~/bin/weasyprint_ENV/weasy_ENV/bin/activate;'

## Misc Apps  ##
#   ---------------------------------------------------------

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
