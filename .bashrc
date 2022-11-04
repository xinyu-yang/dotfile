# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
. ~/dotfile/.local/share/lf.bash

### alias
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias ls2vi='fc -s "ls "="vim "'

### env
#PS1='[\u@\h \w]\$ '
export PS1="\[\e[31m\][\[\e[m\]\[\e[38;5;172m\]\u\[\e[m\]@\[\e[38;5;153m\]\h\[\e[m\] \[\e[38;5;214m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
#export PATH=/home/yang/.local/bin/statusbar:/home/yang/.local/bin:$PATH


# Default setting
ALL_PROXY='socks5://127.0.0.1:60001'
HTTP_PROXY='socks5://127.0.0.1:60001'
HTTPS_PROXY='socks5://127.0.0.1:60001'
alias proxyshow='source ~/dotfile/.local/bin/setproxy'
alias proxyon='source ~/dotfile/.local/bin/setproxy on'
alias proxyoff='source ~/dotfile/.local/bin/setproxy off'


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
