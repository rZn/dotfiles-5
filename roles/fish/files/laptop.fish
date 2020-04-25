set -Ua fish_user_paths $HOME/bin
set -Ua fish_user_paths $HOME/go/bin
set -Ua fish_user_paths $HOME/.gem/ruby/2.7.0/bin
set -x BROWSER 'firefox'
set -x VAGRANT_DEFAULT_PROVIDER 'libvirt'
set -x XDG_CURRENT_DESKTOP 'Unity' # waybar workaround for tray
