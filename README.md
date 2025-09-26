# foolsgoldtoshi-star's Cursor-Compatible Zsh Config ✨

Ultra-minimalist zsh configuration with **Cursor terminal compatibility** and essential shell setup for functional programming workflows.

## 🎯 What it includes

### `.zshrc`
- **Clean lambda prompt**: Just `λ ` - nothing else
- **Cursor compatibility**: Prevents `cursor_snap_ENV_VARS` errors
- **Homebrew integration**: Automatic PATH setup for macOS
- **Nix support**: Multi-user and single-user Nix package manager
- **Environment cleanup**: Removes problematic variables that break Cursor

### `.zprofile`
- **Essential environment setup**: Loads before .zshrc for proper initialization
- **Homebrew path configuration**: For macOS development tools
- **Nix package manager support**: Reproducible environments
- **NIX_PATH configuration**: For Nix flake development
- **Cursor terminal compatibility**: Prevents shell conflicts

### `cursor-shell.sh` (NEW!)
- **Alternative shell script**: For when zsh has issues with Cursor
- **Bash-based**: More compatible with Cursor's terminal
- **Clean environment**: Removes all problematic variables
- **Same functionality**: All the same PATH and environment setup

## 🚀 Setup

### **Option 1: Standard Zsh Setup (Recommended)**
```bash
# Clone this repo
git clone git@github.com:foolsgoldtoshi-star/foolsgoldtoshi-star-zsh-config.git ~/foolsgoldtoshi-star-zsh-config

# Create symlinks
ln -sf ~/foolsgoldtoshi-star-zsh-config/.zshrc ~/.zshrc
ln -sf ~/foolsgoldtoshi-star-zsh-config/.zprofile ~/.zprofile

# Reload your shell
source ~/.zprofile
source ~/.zshrc
```

### **Option 2: Cursor Terminal Fix**
If you're getting `cursor_snap_ENV_VARS` errors in Cursor:

1. **Use the alternative shell script**:
   ```bash
   # Make it executable
   chmod +x ~/foolsgoldtoshi-star-zsh-config/cursor-shell.sh
   
   # In Cursor, go to Settings → Terminal → Shell
   # Set custom shell to: /Users/bhagavan58wappo/foolsgoldtoshi-star-zsh-config/cursor-shell.sh
   ```

2. **Or temporarily disable zsh**:
   ```bash
   # Switch to bash temporarily
   chsh -s /bin/bash
   
   # Restart Cursor terminal
   # Then switch back to zsh when fixed
   chsh -s /bin/zsh
   ```

## 🔧 Troubleshooting

### **Cursor Terminal Issues**
- **Error**: `cursor_snap_ENV_VARS` or `dump_zsh_state`
- **Solution**: Use `cursor-shell.sh` as your Cursor terminal shell
- **Alternative**: Temporarily switch to bash: `chsh -s /bin/bash`

### **Homebrew Not Found**
- **Error**: `brew: command not found`
- **Solution**: Install Homebrew first: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

### **Nix Not Working**
- **Error**: `nix: command not found`
- **Solution**: Install Nix: `sh <(curl -L https://nixos.org/nix/install)`

## 🌱 Philosophy

This configuration embodies **foolsgoldtoshi-star's functional programming principles**:

- **Simple made easy**: Minimal configuration that just works
- **Immutable state**: Clean environment variables, no conflicts
- **Pure functions**: Each component does one thing well
- **Composability**: Works with Cursor, VS Code, and any terminal

## 🎊 Features

- ✅ **Cursor terminal compatible** - No more `cursor_snap_ENV_VARS` errors
- ✅ **Homebrew integration** - Automatic PATH setup for macOS
- ✅ **Nix support** - Multi-user and single-user Nix environments
- ✅ **Clean prompt** - Just `λ ` for maximum focus
- ✅ **Fast startup** - Minimal configuration, maximum speed
- ✅ **Error prevention** - Removes problematic environment variables
- ✅ **Alternative shell** - Bash fallback for maximum compatibility

## 🔄 Updating

```bash
cd ~/foolsgoldtoshi-star-zsh-config
git pull
source ~/.zprofile
source ~/.zshrc
```

## 🆘 Emergency Reset

If your shell is completely broken:

```bash
# Reset to system default
rm ~/.zshrc ~/.zprofile
chsh -s /bin/bash

# Restart terminal, then reinstall
git clone git@github.com:foolsgoldtoshi-star/foolsgoldtoshi-star-zsh-config.git ~/foolsgoldtoshi-star-zsh-config
ln -sf ~/foolsgoldtoshi-star-zsh-config/.zshrc ~/.zshrc
ln -sf ~/foolsgoldtoshi-star-zsh-config/.zprofile ~/.zprofile
source ~/.zprofile
source ~/.zshrc
```

## 🎯 Cursor Integration

This configuration is specifically designed to work with **Cursor's terminal**:

- **Prevents environment variable conflicts**
- **Cleans up problematic variables**
- **Provides bash fallback**
- **Maintains all functionality**

Perfect for **functional farm documentation systems** and **ClojureScript development**! 🌽

---

Made with 🖤🤎💙 by foolsgoldtoshi-star  
*"Simple made easy, shells made functional"*