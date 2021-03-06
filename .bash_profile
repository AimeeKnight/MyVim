export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

txtblk='\[\e[0;30m\]' # Black
txtred='\[\e[0;31m\]' # Red
txtgrn='\[\e[0;32m\]' # Green
txtylw='\[\e[0;33m\]' # Yellow
txtblu='\[\e[0;34m\]' # Blue
txtpur='\[\e[0;35m\]' # Purple
txtcyn='\[\e[0;36m\]' # Cyan
txtwht='\[\e[0;37m\]' # White
txtrst='\[\e[0m\]'    # Text Reset

RVM_PATH=$HOME/.rvm/bin
GIT_PATH=/usr/local/git/bin
NODE_PATH=/usr/local/node/bin
MONGODB_PATH=/usr/local/mongodb/bin
REDIS_PATH=/usr/local/redis/bin

alias          l='ls -a'
alias         ll='ls -alh'
alias          b='cd ..'
alias          c='clear'
alias       code='cd ~/Documents/Code'
alias       data='cd ~/Documents/Data'
alias startmongo='mongod --config ~/.mongodb.conf'

export PATH=$RVM_PATH:$GIT_PATH:$NODE_PATH:$MONGODB_PATH:$REDIS_PATH:$PATH
export PATH="/Users/aimeeknight/.built/bin/:$PATH"
export EDITOR=vim

### Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

export PS1="$txtpur\u@\h $txtgrn\W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"
