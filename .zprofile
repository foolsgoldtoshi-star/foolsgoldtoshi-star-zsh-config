# foolsgoldtoshi-star's Cursor-Compatible Zsh Profile ✨
# Essential shell environment setup with Cursor terminal compatibility

# Cursor compatibility - prevent environment variable conflicts
unset CURSOR_SNAP_ENV_VARS 2>/dev/null || true
unset dump_zsh_state 2>/dev/null || true

# Homebrew environment setup
if [ -f "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Nix environment setup (if Nix is installed)
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

# Single-user Nix setup (alternative)
if [ -e "$HOME/.nix-profile/etc/profile.d/nix.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/nix.sh"
fi

# Add Nix to PATH if installed
if [ -d "/nix/store" ]; then
  export NIX_PATH="nixpkgs=/nix/var/nix/profiles/per-user/root/channels/nixpkgs"
fi

# Ensure basic PATH is set
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Load Homebrew paths if available
if [ -d "/opt/homebrew/bin" ]; then
  export PATH="/opt/homebrew/bin:$PATH"
fi

# Load local bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Cursor terminal compatibility
export SHELL="/bin/zsh"
export TERM="xterm-256color"