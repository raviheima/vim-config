# vim-config

My personal Vim and Neovim configuration files.

## 📁 Structure

```
.
├── .vimrc      # Main Vim configuration
└── init.vim    # Neovim configuration (sources .vimrc)
```

## 🚀 Quick Setup

```bash
# Clone the repository
git clone https://github.com/raviheima/vim-config. 

# Create swap directory
mkdir -p ~/.vim/swap

# Create Neovim config directory and copy init.vim
mkdir -p ~/.config/nvim
# Do the needful ^_^
```

## ✨ Features

- **Syntax highlighting** enabled
- **Line numbers** displayed
- **Search highlighting** with incremental search
- **Smart indentation** (4 spaces, tabs expanded)
- **NERDTree** integration with keyboard shortcuts
- **Split window navigation** with `Ctrl+h/j/k/l`
- **Code folding** based on filetype
- **Wildmenu** for enhanced command-line completion
- **Murphy colorscheme**

## ⌨️ Key Mappings

### Window Navigation
- `Ctrl+h` - Move to left split
- `Ctrl+l` - Move to right split
- `Ctrl+k` - Move to top split
- `Ctrl+j` - Move to bottom split

### NERDTree
- `Ctrl+n` - Open NERDTree
- `Ctrl+t` - Toggle NERDTree
- `Ctrl+f` - Find current file in NERDTree
- `<leader>n` - Focus NERDTree

### Buffer Management
- `:Bd` - Close buffer without closing window

## 📦 Plugins

This configuration uses Vim 8+ native package management.  Plugins should be installed in: 
```
~/.vim/pack/plugins/start/
```

Currently configured plugins:
- **NERDTree** - File system explorer
- **vim-unimpaired** - Pairs of handy bracket mappings

## 🔧 Requirements

- Vim 8.0+ or Neovim 0.5+
- Git (for cloning and updates)

## 📝 Notes

- Swap files are stored in `~/.vim/swap/`
- `init.vim` sources the shared `.vimrc` so both Vim and Neovim use the same configuration
- Only need to edit `.vimrc` - changes apply to both editors automatically

## 📄 License

Personal configuration - feel free to use and modify as needed. 
```
