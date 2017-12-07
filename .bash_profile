
export PATH=$PATH:/path/to/dir

## Directory operations ##
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'


## Recursively remove Apple meta files  ##
alias cleanupds="find . -type f -name '*.DS_Store' -ls -exec /bin/rm {} \;"


## Git  ##
alias gs='git status'
alias ga='git add'
alias gau='git add -u' # Removes deleted files
alias gp='git pull'
alias gpu='git push'
alias gc='git commit'
alias gca='git commit -v -a' # Add -m 'blah' for comment
alias gco='git checkout'
alias gl='git log --oneline'
