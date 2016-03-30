# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history history-substring-search terminalapp brew sublime extract)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
export CLOSURE_PATH=/usr/local/Cellar/closure-compiler/20130823/libexec/
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:$PATH

# Aliases to SSH into audible amazon server
alias sshihuli='ssh -i ~/.ssh/onstar.pem ubuntu@ihu.li'
alias scphelp='echo Example: scp -i ~/.ssh/onstar.pem ubuntu@ihu.li:/home/ubuntu/audiobooks/treasure_32kbps.mp3 .'
alias build='grunt compile:local'
alias listconflicts='git diff --name-only --diff-filter=U'
alias sst='sublime ./'
alias mocha='mocha --reporter=spec'
alias npmls='npm ls --depth=0 "$@" 2>/dev/null'
alias weinre='sudo weinre --boundHost 172.17.0.2 --httpPort 80'
alias vim='mvim -v'
alias mantra='node ~/bin/mantra/src/mantra.js'
# alias launchihu='open -n -a Google\ Chrome mockindex.html  --args --disable-web-security --user-data-dir=/Users/shared --window-size=802,552 --allow-file-access-from-files'

alias launchihu='open -n -a Google\ Chrome  --args --disable-web-security --user-data-dir=/Users/shared --app=http://localhost:9000/mockindex.html --app-window-size=802,482 --allow-file-access-from-files'


alias dtrx='/usr/local/Cellar/dtrx/7.1/bin/dtrx'
alias merge='git mergetool -t opendiff'

alias mongostart="launchctl start org.mongodb.mongod"
alias mongostop="launchctl stop org.mongodb.mongod"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=":/usr/local/git/bin/git:$PATH"
source $(brew --prefix nvm)/nvm.sh

export TERM='xterm-256color'

mantra
