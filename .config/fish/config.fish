# Set env variables
function setenv
    set -gx $argv[1] $argv[2]
end
source $HOME/dotfile/.config/shell/env

#set -gx LESS "R"
#set -gx LESS_TERMCAP_mb (printf '%b' '')
#set -gx LESS_TERMCAP_md (printf '%b' '')
#set -gx LESS_TERMCAP_me (printf '%b' '')
#set -gx LESS_TERMCAP_so (printf '%b' '')
#set -gx LESS_TERMCAP_se (printf '%b' '')
#set -gx LESSP

set -gx LESS "R"
set -gx LESS_TERMCAP_mb (printf '%b' '[1;31m')
set -gx LESS_TERMCAP_md (printf '%b' '[1;36m')
set -gx LESS_TERMCAP_me (printf '%b' '[0m')
set -gx LESS_TERMCAP_so (printf '%b' '[01;44;33m')
set -gx LESS_TERMCAP_se (printf '%b' '[0m')
set -gx LESS_TERMCAP_us (printf '%b' '[1;32m')
set -gx LESS_TERMCAP_ue (printf '%b' '[0m')
set -gx LESSOPEN "| /usr/bin/highlight -O ansi %s 2>/dev/null"

# music player
# mpd > /dev/null 2>&1 &

# Update PATH
if test -d "$HOME/.local/bin"
    set -gx PATH $HOME/.local/bin $PATH
end
if test -d "$HOME/.local/bin/statusbar"
    set -gx PATH $HOME/.local/bin/statusbar $PATH
end

if status is-interactive
	### env
	set -gx ps1 "[\e[31m][\e[m\e[38;5;172m]\u\e[m@\e[38;5;153m]\h\e[m \e[38;5;214m]\w\e[m\e[31m][\e[m]\$ "
end
