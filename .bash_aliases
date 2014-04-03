alias gerp=grep
alias mroe=more
alias sl=ls
alias 'ls-ltr'='ls -ltr'
alias 'ls-l'='ls -l'
alias ipconfig=ifconfig
alias gti=git

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias scr='screen -c'

alias vimf='perl ~/bin/vim.pl --skip="blib _build tmp target" --find '

alias ltt='ls -ltr | tail'

if [ -r "${HOME}/bin/eachdir" ]; then
    # Aliasing eachdir like this allows you to use aliases/functions as commands.
    alias eachdir=". eachdir"
    alias gs-all='eachdir git status'
fi

# git aliases
alias gld='git log --decorate --graph --color'
alias gls='git log --decorate --graph --color --pretty=format:"%H %an:%ci:%s:%d"'
alias gco='git checkout'
alias gct='git checkout testing; git pull'
alias gcd='git checkout development; git pull'
alias gcm='git checkout master; git pull'
alias gmd='git merge --no-ff development'
alias gmm='git merge --no-ff master'
alias gpot='git push origin testing'
alias gs='git status'
alias gb='git branch'
alias gba='git branch -a'

# Gzip-enabled `curl`
alias gurl='curl --compressed'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

# Enhanced WHOIS lookups
alias whois="whois -h whois-servers.net"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# URL REQUEST shortcuts
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

# Nscreens aliases
alias cdA='cd ~/Nscreens/NScreens-Auth'
alias cdC='cd ~/Nscreens/NScreens-Content'
alias cdd='cd ~/Nscreens/nscreens-site-digitalvault'
alias cdD='cd ~/Nscreens/NScreens-DigitalVault'
alias cdg='cd ~/Nscreens/nscreens-site-generic'
alias cdm='cd ~/Nscreens/nscreens-site-msc'
alias cdM='cd ~/Nscreens/NScreens-MSC'
alias cdmq='cd ~/Nscreens/poe-component-messagequeue'
alias cdp='cd ~/Nscreens/pcat'
alias cdP='cd ~/Nscreens/Catalyst-Plugins-NScreens'
alias cdr='cd ~/Nscreens/nscreens-site-rewards'
alias cdR='cd ~/Nscreens/NScreens-Rewards'
alias cds='cd ~/Nscreens/nscreens-site-stb'
alias cdS='cd ~/Nscreens/NScreens-STB'
alias cdt='cd ~/Nscreens/thecaw'
alias cdU='cd ~/Nscreens/Utils'
alias cdV='cd ~/Nscreens/Catalyst-Views-NScreens'
alias cdw='cd ~/Nscreens/nscreens-site-widgets'
alias cdz='cd ~/Nscreens/nscreens-site-zoo'
alias cdZ='cd ~/Nscreens/NScreens-ZooScript'
