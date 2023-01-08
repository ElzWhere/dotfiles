set fish_greeting ""

#set -gx TERM xterm-256color

#set SPACEFISH_TIME_SHOW true
starship init fish | source

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases 

alias clear 'clear && fg && pf'
alias pf 'pfetch | lolcat'
alias fg 'figlet RZA | lolcat'
clear

if type -q exa
    alias ll "exa --long --header --git --icons -a"
    alias lla "ll -a"
end
complete --command aws --no-files --arguments '(begin; set --local --export COMP_SHELL fish; set --local --export COMP_LINE (commandline); aws_completer | sed \'s/ $//\'; end)'

# go
set -x PATH $PATH /usr/local/go/bin

