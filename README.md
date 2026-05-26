# Vim configuration

Personal Vim setup managed with [vim-plug](https://github.com/junegunn/vim-plug). Plugins install under `~/.vim/plugged/` (not tracked in git).

## Layout

| Path | Purpose |
|------|---------|
| `.vimrc` | Main config and plugin list |
| `config/fzf.vim` | [fzf.vim](https://github.com/junegunn/fzf.vim) file search and key mappings |
| `config/coc.vim` | [coc.nvim](https://github.com/neoclide/coc.nvim) mappings and settings |
| `plugged/` | Installed plugins (gitignored) |
| `autoload/plug.vim` | vim-plug loader (gitignored; bootstrapped on first start) |

## Prerequisites

- **Vim 8+** (Python support if you use plugins that need it)
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** (`rg`) — used by fzf for `:Files` (respects `.gitignore`); `fd` is used as a fallback
- **Node.js** — for coc.nvim and Copilot
- **curl** — first-time vim-plug bootstrap in `.vimrc`

## Setup

1. Clone this repo to `~/.vim` (or symlink `.vimrc` to `~/.vimrc`).

   Alternatively, source this config from your main `~/.vimrc`:

   ```vim
   source ~/.vim/.vimrc
   ```

2. Start Vim. On first launch, vim-plug downloads itself and runs `:PlugInstall`.

   Or run manually:

   ```vim
   :PlugInstall
   ```

3. For fzf, install the binary bundled with the fzf plugin:

   ```vim
   :PlugInstall
   ```

   (The `junegunn/fzf` plug definition runs `fzf#install()`.)

4. Install coc extensions as needed, for example:

   ```vim
   :CocInstall coc-tsserver
   ```

## Plugin maintenance

| Command | Action |
|---------|--------|
| `:PlugInstall` | Install plugins |
| `:PlugUpdate` | Update plugins |
| `:PlugClean` | Remove plugins no longer in `.vimrc` |

## Notable mappings

Leader is `_` (underscore).

| Keys | Action |
|------|--------|
| `<C-o>` | fzf file finder (`:Files`) |
| `<C-p>` | fzf recently used files (`:History`, like CtrlP MRU) |
| `<leader>b` | fzf open buffers (`:Buffers`) |
| `<leader>g` | fzf project search (`:Rg`) |
| `<leader>l` | fzf search in buffer (`:BLines`) |
| `<leader>ls` | NERDTree toggle |
| `<leader>h` | Undotree toggle |
| `<F8>` | Tagbar toggle |
| `<C-t>` | TaskList |
| `[g` / `]g` | Previous / next coc diagnostic |
| `gd`, `gr`, … | coc navigation (see `config/coc.vim`) |
| `<space>a` | coc diagnostics list |

Buffer/window/tab shortcuts are defined in `.vimrc` (`<C-b>…`, `<C-w>…`, `<C-t>…`).

## Linting and LSP

- **ALE** — general linting; Java and JavaScript linters are disabled in `.vimrc` where coc handles those languages.
- **coc.nvim** — LSP, completion, and refactorings; extra config in `config/coc.vim`.

## Migration from pathogen

This repo previously used pathogen with git submodules under `bundle/`. That layout has been removed in favor of vim-plug. Clone fresh or run `:PlugInstall` after pulling.

Removed plugins (no longer in `.vimrc`): ack.vim, pydoc.vim, pep8, pytest.vim, rope-vim, vim-makegreen, css3-mod, RootIgnore, gundo (replaced by undotree), Command-T (file open uses fzf instead), ctrlp.vim (MRU uses fzf `:History` on `<C-p>`).
