# dotfiles

ローカル環境用のdotfiles


# shellsの確認

```shell-session
$ cat /etc/shells
# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/dash
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
```


```shell-session
$ which sh
/bin/sh

$ which bash
/bin/bash

$ which zsh
/bin/zsh
```

---

# シェルの変更

```shell-session
chsh -s /bin/zsh
```

---

# ローカルのファイルをdotfilesリポジトリにコピーする場合

```shell-session
$ cp $HOME/.bash_profile $HOME/path/dotfiles/
$ cp $HOME/.bashrc $HOME/path/dotfiles/
$ cp $HOME/.huskyrc $HOME/path/dotfiles/
$ cp $HOME/.tmux.conf $HOME/path/dotfiles/
$ cp $HOME/.vimrc $HOME/path/dotfiles/
```

---


# HOMEディレクトリ直下にdotfilesの設定ファイルのシンボリックリンクを作成する

- `-s` ハードリンクの代わりにシンボリックリンクを作成する
- `-v` 経過を表示する
- `-f` force,強制的に実行

```shell-session
ln -sv ~/path/dotfiles/.bashrc ~/
# or
ln -svf ~/path/dotfiles/.bashrc ~/

ls -la ~/
```

---

# シンボリックリンクの削除

```shell-session
$ unlink ~/.bashrc
```

---

# 構成

```shell-session

```

---


