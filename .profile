export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
# export BROWSER=/usr/bin/palemoon


# =================== File Info =====================
#  Author: jessun1990@gmail.com
#  Desc: profile
#  Location: ~/.profile
# ===================================================
case "$(uname)" in
    Linux*)     machine="linux";;
    Darwin*)    machine="mac";;
    CYGWIN*)    machine="cygwin";;
    MINGW*)     machine="mingw";;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ -f "/usr/bin/nvim" ]; then
    export EDITOR="/usr/bin/nvim"
elif [ -f "/usr/bin/vim" ]; then
    export EDITOR="/usr/bin/vim"
fi

if [ "$machine" == "linux" ]; then 
    # if [ -x "$(command -v setxkbmap)" ]; then
    #     setxkbmap -option 'caps:ctrl_modifier'
    # fi
    if [ -x "$(command -v google-chrome-stable)" ]; then
        export BROWSER=google-chrome-stable
    elif [ -x "$(command -v google-chrome-beta)" ]; then
        export BROWSER=google-chrome-beta
    elif [ -x "$(command -v google-chrome-unstable)" ]; then
        export BROWSER=google-chrome-unstable
    elif [ -x "$(command -v microsoft-edge-dev)" ]; then
        export BROWSER=microsoft-edge-dev
    fi

    export LANG=zh_CN.UTF-8

    export GLFW_IM_MODULE=fcitx
    export GTK_IM_MODULE=fcitx
    export XMODIFIERS=@im=fcitx
    export QT_IM_MODULE=fcitx

    export LC_ALL=zh_CN.UTF-8
    export LC_CTYPE=
fi

[ -d "$HOME/.cargo/bin" ] && export PATH="$HOME/.cargo/bin:$PATH"
#export TERM="xterm-256color"


xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 2560x359 --rotate right --output DP-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1 --off --output DVI-D-1 --off
export PATH=/home/jessun/.tiup/bin:$PATH

if [ -x "hsetroot" ]; then
    hsetroot -solid "#2E3440"
fi

export GPG_TTY=$(tty)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
