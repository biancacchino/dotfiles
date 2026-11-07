# 🛠️ Bianca's Dotfiles

## What's Inside

- `.zshrc` - shell config (oh-my-zsh)
- `nvim` - neovim config (lazy.nvim)
- `ghostty` - Ghostty terminal config
- `AGENTS.md` - global rules for AI coding tools
- `claude/CLAUDE.md` - Claude Code rules, imports `AGENTS.md` and `~/VOICE.md`
- `claude/output-styles/terse.md` - Claude Code output style for short, skimmable replies

`VOICE.md` (my writing voice and samples) lives here but is gitignored, because it's personal.
On a new machine, copy it in by hand before running the setup.

## Setup

```sh
git clone https://github.com/biancacchino/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/ghostty ~/.config/ghostty
ln -s ~/dotfiles/AGENTS.md ~/AGENTS.md
ln -s ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -s ~/dotfiles/claude/output-styles ~/.claude/output-styles
ln -s ~/dotfiles/VOICE.md ~/VOICE.md
```
