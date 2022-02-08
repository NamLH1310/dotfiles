eval "$(starship init zsh)"

autoload -U colors && colors

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} λ%b "

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep

export EDITOR="emacs"
export VISUAL="emacs"
export GOPATH="$HOME/programming/go"
export ANTLR_JAR="/usr/share/java/antlr-complete.jar"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus

path+=(~/.emacs.d/bin/ ~/.local/bin $GOPATH/bin)
export PATH

alias cd..="cd .."
alias ls="lsd"
alias l="lsd"
alias ll="lsd -l"
alias lsa="lsd -A"
alias la="lsd -A"
alias lla="lsd -Al"
alias tree="lsd --tree"

alias pac="paru"
alias pac-u="paru -Syyu" # Update
alias pac-i="paru -S"    # Install
alias pac-s="paru -Ss"	 # Search
alias pac-r="paru -R"	 # Remove

# The following lines were added by compinstall
zstyle :compinstall filename '/home/namle/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# End of lines added by compinstall

vterm_printf() {
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}


bindkey -e
bindkey -M menuselect '^[[Z' reverse-menu-complete

source $HOME/.cargo/env 2>/dev/null
source /usr/share/fzf/key-bindings.zsh 2>/dev/null
source /usr/share/fzf/completion.zsh 2>/dev/null
source /usr/share/nvm/init-nvm.sh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
