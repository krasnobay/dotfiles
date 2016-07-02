# Dotfiles

### vim config
```
  cp ./.vimrc ~/.vimrc
```

### vim themes
```
  cp -r ./colors/* ~/.vim/colors/
```
  write to .vimrc
```
  colorscheme Tomorrow-Night-Eighties
```

### vim syntax graph
```
  cp ./syntax/graph.vim  ~/.vim/syntax/
```

To enable automatic backlight record in .vimrc
```
  au BufRead,BufNewFile *.graph set filetype=graph
```
