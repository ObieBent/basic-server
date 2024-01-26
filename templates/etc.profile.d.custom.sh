# timestamps in history
export HISTTIMEFORMAT="{{ historytime_format }}"
export HISTIGNORE=ls
export HISTSIZE=10000

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias c='clear -x'
alias dmesg='sudo /bin/dmesg --decode --nopager --color --ctime'
#---- a few journalctl(1) aliases
# jlog: current (from most recent) boot only, everything
alias jlog='/bin/journalctl -b --all --catalog --no-pager'
# jlogr: current (from most recent) boot only, everything in *reverse* chronologically order
alias jlogr='/bin/journalctl -b --all --catalog --no-pager --reverse'
# jlogall: *everything*, all time; --merge => _all_ logs merged
alias jlogall='/bin/journalctl --all --catalog --merge --no-pager'
# jlogf: *watch* log, akin to 'tail -f' mode; very useful to 'watch live' logs
alias jlogf='/bin/journalctl -f'
# jlogk: only kernel messages, this (from most recent) boot
alias jlogk='/bin/journalctl -b -k --no-pager'