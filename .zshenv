. "$HOME/.cargo/env"

export EDITOR="helix"
export VISUAL="helix"
export GOPATH="$HOME/programming/go"
export ANTLR_JAR="/usr/share/java/antlr-4.10.1-complete.jar"
export JAVA_HOME="/usr/lib/jvm/default/"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export XDG_CONFIG_HOME="$HOME/.config/"

path+=(~/.emacs.d/bin/ ~/.local/bin $GOPATH/bin ~/.ghcup/bin ~/Android/Sdk/tools/bin $HOME/.pub-cache/bin)
# export PATH
