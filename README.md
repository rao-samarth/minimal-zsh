# minimal-zsh

Minimal zsh setup with autosuggestions, syntax highlighting, history tweaks, git branch display, and python virtualenv detection.

## Setup

1. Ensure you have zsh installed:
   ```bash
   zsh --version
   ```

2. Install oh-my-zsh:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

3. Copy the custom theme:
   ```bash
   cp themes/minimal.zsh-theme ~/.oh-my-zsh/custom/themes/
   ```

4. Replace your `.zshrc` with the configuration from this repository:
   ```bash
   cp .zshrc ~/.zshrc
   ```

4. Reload your shell:
   ```bash
   source ~/.zshrc
   ```
   OR
   ```bash
   zsh
   ```

The setup script will automatically clone and install zsh-autosuggestions and zsh-syntax-highlighting on first load if they're not already present.

## Features

### Autosuggestions
As you type, zsh will suggest completions based on your command history. Accept a suggestion by pressing the right arrow key or Tab.

### Syntax Highlighting
Commands are highlighted as you type. Valid commands appear in green, invalid ones in red. This helps catch typos before you press Enter.

### Git Branch Display
When you're in a git repository, the current branch name appears in the prompt in square brackets. For example: `[main]` or `[feature-branch]`.

### Python Virtual Environment Detection
When you activate a Python virtual environment, its name appears in the prompt. For example: `(venv)`. This is disabled in the main prompt display to avoid duplication but can be customized.

### Navigation Shortcuts
Quick navigation aliases for moving up directories:
- `..` - go up one directory
- `...` - go up two directories  
and so on.

### Enhanced History
- Stores 50,000 commands in history
- Automatically removes duplicate commands
- Shared history across shell sessions
- You can use ctrl+R for reverse search

### Colored Output
- `ls` output is colored automatically
- Aliases included: `ll` for long format, `la` for hidden files

### Custom Prompt
The prompt displays your username, hostname, current directory, active Python virtual environment (if any), and git branch (if applicable), with color coding for easy reading.


## Customization

You can modify your `.zshrc` file to customize:
- The ZSH theme currently using `robbyrussell`. You can view themes at [https://github.com/ohmyzsh/ohmyzsh/themes](https://github.com/ohmyzsh/ohmyzsh/tree/master/themes)
- The entry message (currently "Hi Samarth!")
- Aliases and shortcuts
- Prompt colors
- History size
