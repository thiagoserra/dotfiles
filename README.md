# dotfiles
Meus arquivos de configuracao - Linux


## Criando um repositório bare
```
git init --bare $HOME/dotfiles
```

## Adicionar no .bashrc
```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```

Para mostrar os arquivos não rastreados:

```
config config --local status.showUntrackedFiles no
```

## Uso básico do config para adicionar os arquivos de interesse
```
config add /path/to/file

config commit -m "A short message"

config push
```
