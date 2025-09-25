# foolsgoldtoshi-star's Minimal Zsh Config ✨

Ultra-minimalist zsh configuration with a clean lambda prompt and essential shell setup.

## What it includes

### `.zshrc`
- Sets your prompt to just `λ ` - nothing else
- Pure minimalism, maximum speed  
- No dependencies, no bloat

### `.zprofile`
- Essential shell environment setup
- Loads before .zshrc for proper initialization
- Homebrew path configuration for macOS

## Setup

1. **Clone this repo**:
   ```bash
   git clone git@github.com:foolsgoldtoshi-star/foolsgoldtoshi-star-zsh-config.git ~/foolsgoldtoshi-star-zsh-config
   ```

2. **Create symlinks**:
   ```bash
   ln -sf ~/foolsgoldtoshi-star-zsh-config/.zshrc ~/.zshrc
   ln -sf ~/foolsgoldtoshi-star-zsh-config/.zprofile ~/.zprofile
   source ~/.zprofile
   source ~/.zshrc
   ```

Done! Your terminal now shows a clean `λ` prompt with proper environment setup.

## Updating

```bash
cd ~/foolsgoldtoshi-star-zsh-config
git pull
source ~/.zprofile
source ~/.zshrc
```

Made with 💛 by foolsgoldtoshi-star
