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


## Recuperando em outra máquina

```
git clone --bare https://github.com/thiagoserra/dotfiles.git $HOME/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```


## Créditos
Os créditos desse processo vão para o melhor tutorial que achei sobre o assunto:

https://www.atlassian.com/git/tutorials/dotfiles
