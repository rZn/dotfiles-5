set -x LANG 'en_US.UTF-8'
set -x EDITOR 'nvim'
set -x VISUAL 'nvim'
set -x PAGER 'most'
set -gx SYSTEMD_PAGER 'less'
set -U fish_greeting ""

# Start starfish prompt
starship init fish | source
