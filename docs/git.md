# Git Memo

---

# Mac環境でアップグレードする方法

```shell--sesshion
brew upgrade git
```

---

# SSH経由でgithubリポジトリをclone

```shell--sesshion
git clone git@github.com:accountName/RepositoryName.git
```
---

# 直前のCommit メッセージの修正

コマンドを実行すると`vi`などで直前のコミットメッセージを修正出来る。

```shell--sesshion
git commit --amend
```

---

# commitのrevert

指定したコミットIDのコミットをrevertする。

```shell--sesshion
git revert --no-edit commitId
```

---

# リモートリポジトリの最新の履歴の取得

```shell--sesshion
$ git fetch origin develop
```

---

# (ローカルに履歴として残っている)リモートで削除されているリモートブランチの削除

```shell--sesshion
git remote prune prigin
```
---

# リモートリポジトリの最新の履歴の取得

```shell--sesshion
git fetch origin develop
```

---
# rebase

リベースされる対象のブランチを最新にして、変更が無い状態で下記のコマンドを実行されるとrebaseが実行される。


```shell--sesshion
git rebase develop
```

競合がある場合、競合を解決した上で下記のコマンドを実行すると続きのrebase処理を実行してくれる。

```shell--sesshion
git rebase --continue
```

失敗したrebaseの取り消し

```shell--sesshion
git rebase --aborts
```

---
# check global config

```shell--sesshion
git config --global -l
```

---
# リモートリポジトリのURLチェック

```shell--sesshion
git remote -v
origin  https://github.com/user_name/repository_name (fetch)
origin  https://github.com/user_name/repository_name (push)
```

---

# リモートリポジトリのURLの変更

```shell--sesshion
git remote -v
origin  https://github.com/user_name/repository_name (fetch)
origin  https://github.com/user_name/repository_name (push)

git remote set-url origin git@github.com:user_name/repository_name.git

git remote -v
origin  git@github.com:user_name/repository_name.git (fetch)
origin  git@github.com:user_name/repository_name.git (push)

```

---

# git flow


```shell
# init
git flow init

# feature branch
git flow feature start branch-name
# release
git flow release start branch-name
# hotfix
git flow hotfix start branch-name

```

---


---
