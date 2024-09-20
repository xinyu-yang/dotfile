# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
source ~/dotfile/.local/share/lf.bash

# alias
. $HOME/dotfile/.config/shell/alias.bash

# set env in .config/shell/env
#PS1='[\u@\h \w]\$ '
export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# To stop Ctrl-r flow control on bash
if [[ -t 0 && $- = *i* ]]
then
	stty -ixon
fi

cat<<'EOF'
           _..._
         .'     '.
        /  _   _  \
        | (o)_(o) |
         \(     ) /
         //'._.'\ \
        //   .   \ \
       ||   .     \ \
       |\   :     / |
       \ `) '   (`  /_
     _)``".____,.'"` (_
     )     )'--'(     (
      '---`      `---`
EOF
