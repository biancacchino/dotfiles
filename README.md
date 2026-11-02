# Dotfiles

## What's Inside

- `.zshrc` - shell config (oh-my-zsh)
- `nvim` - neovim config (lazy.nvim)
- `ghostty` - Ghostty terminal config
- `AGENTS.md` - global rules for AI coding tools
- `claude/CLAUDE.md` - Claude Code rules, imports `AGENTS.md` and `~/VOICE.md`

`~/VOICE.md` (my writing voice and samples) is personal, so it stays local and is not tracked here.

## Setup

```sh
git clone https://github.com/biancacchino/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/nvim ~/.config/nvim
ln -s ~/dotfiles/ghostty ~/.config/ghostty
ln -s ~/dotfiles/AGENTS.md ~/AGENTS.md
ln -s ~/dotfiles/claude/CLAUDE.md ~/.claude/CLAUDE.md
```
