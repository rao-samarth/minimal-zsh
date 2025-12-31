# minimal-zsh

Minimal zsh setup with autosuggestions, syntax highlighting, history tweaks, git branch display, and python virtual environment detection.

## Setup

1. Install oh-my-zsh (if not already installed):
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

2. Clone this repository and copy the files:
   ```bash
   cp .zshrc ~/.zshrc
   cp themes/minimal.zsh-theme ~/.oh-my-zsh/custom/themes/
   ```

3. Reload your shell:
   ```bash
   source ~/.zshrc
   ```

## Features

- **Autosuggestions**: Get command suggestions based on history (right arrow to accept)
- **Syntax Highlighting**: Commands are colored as you type
- **Git Branch Display**: Shows current branch in the prompt (e.g., `[main]`)
- **Python Virtual Environment Detection**: Shows active venv name (e.g., `(venv)`)
- **Enhanced History**: 50,000 command history with deduplication and Ctrl+R search
- **Colored Output**: Automatic coloring for `ls`, `grep`, and other commands
- **Auto-correction**: Minor command typos are corrected automatically
- **Custom Theme**: simple prompt with color-coded information
