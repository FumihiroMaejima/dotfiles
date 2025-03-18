# dotfiles

ローカル環境用のdotfiles

# 現在設定されているシェルの確認

* Alpine LinuxのDockerコンテナでは値が設定されていない為注意。

```session
echo $SHELL
/bin/zsh
```

# shellsの確認

```session
cat /etc/shells
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

```shell
which sh
/bin/sh

which bash
/bin/bash

which zsh
/bin/zsh
```

---

# シェルの変更

```session
chsh -s /bin/zsh
```

---

# ローカルのファイルをdotfilesリポジトリにコピーする場合

```shell
cp $HOME/.bash_profile $HOME/path/dotfiles/
cp $HOME/.bashrc $HOME/path/dotfiles/
# cp $HOME/.huskyrc $HOME/path/dotfiles/ @deprecated
cp $HOME/.tmux.conf $HOME/path/dotfiles/
cp $HOME/.vimrc $HOME/path/dotfiles/
cp $HOME/.config/hisky/init.sh $HOME/path/dotfiles/
```

---

# HOMEディレクトリ直下にdotfilesの設定ファイルのシンボリックリンクを作成する

- `-s` ハードリンクの代わりにシンボリックリンクを作成する
- `-v` 経過を表示する
- `-f` force,強制的に実行

```shell
ln -sv ~/path/dotfiles/.bashrc ~/
# or
ln -svf ~/path/dotfiles/.bashrc ~/

ls -la ~/
```

---

# シンボリックリンクの削除

```shell
unlink ~/.bashrc
```

---

# PostManのファイルディレクトリのシンボリックリンクの作成

PostManでファイルアップロードをする場合は専用のディレクトリに画像を格納する必要がある。

```shell
ln -svf /Users/userName/Postman/files ~/Desktop/sampleFiles
/Users/userName/Desktop/sampleFiles/files -> /Users/userName/Postman/files

```

```shell
unlink ~/Desktop/sampleFiles/files
```

---

# 構成

```session

```

---
