# Set XDG Base Directories according to
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-0.6.html

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export -T XDG_DATA_DIRS xdg_data_dirs=(
	/usr/local/share
	/usr/share
)

export -T XDG_CONFIG_DIRS xdg_config_dirs=(
	/etc/xdg
)

# Preference variables

export EDITOR="nvim"
export VISUAL="nvim"

# Paths

# Add unversioned python bins pointing to python3
path+=(/usr/local/opt/python/libexec/bin)
