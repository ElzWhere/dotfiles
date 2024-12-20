eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
#export STARSHIP_CONFIG=~/.config/starship.toml



# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
#source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
#
export XDG_CONFIG_HOME="$HOME/.config"
export K9S_CONFIG_DIR="$HOME/.config/k9s"

# posh tryout
#eval "$(oh-my-posh init zsh --config ~/.oh-my-posh/themes/1_shell.json)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="apple"
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-fold
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(z zsh-autosuggestions zsh-history-substring-search) 


source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
plugins=(kubectl eza thefuck zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Aliases
alias ll="eza --long --header --git --icons -a"
alias lst="eza --tree --level 2"
alias k="kubectl"
#eval $(thefuck --alias)

alias vim=nvim

# Useful git aliases
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcom="git checkout main"
alias gb="git branch"
alias gba="git branch -a"
alias gbd="git branch -d"
alias gbm="git branch -m"
alias gbs="git branch --sort=-committerdate"
alias glog="git log --oneline --decorate --graph"
alias gdiff="git diff"
alias gpull="git pull"
alias gpush="git push"
alias gclone="git clone"
alias gmerge="git merge"
alias greset="git reset"
alias gfetch="git fetch"
alias gtag="git tag"
alias gshow="git show"
alias ghpr="gh pr create -a @me -l"

# Where should I put you?
bindkey -s ^f "tmux-sessionizer\n"






# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export EDITOR="nvim"

#source ~/.cloudflare

#CERT_PATH=$(python -m certifi)
#export SSL_CERT_FILE=${CERT_PATH}
#export REQUESTS_CA_BUNDLE=${CERT_PATH}
#. "$HOME/.cargo/env"
export PATH="$PATH:/usr/local/go/bin"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mathematics/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mathematics/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mathematics/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mathematics/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

. "$HOME/.cargo/env"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
