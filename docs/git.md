# Git Memo

---

# Mac環境でアップグレードする方法

```shell
brew upgrade git
```

---

# SSH経由でgithubリポジトリをclone

```shell
git clone git@github.com:accountName/RepositoryName.git
```

---

# Git管理に追加

```shell
# 初期化
git init

# 変更のステージ
git add -A
git add .

# コミット
git commit -m "first commit"
```

---

# 直前のCommit メッセージの修正

コマンドを実行すると`vi`などで直前のコミットメッセージを修正出来る。

```shell
git commit --amend
```

---

# commitのrevert

指定したコミットIDのコミットをrevertする。

```shell
git revert --no-edit commitId
```

---

# リモートリポジトリの最新の履歴の取得

```shell
git fetch origin develop
```

---

# (ローカルに履歴として残っている)リモートで削除されているリモートブランチの削除

```shell
git remote prune origin
```

---

# リモートリポジトリの最新の履歴の取得

```shell
git fetch origin develop
```

---

# ブランチ一覧

```shell
git branch
```

---

# チェックアウト

```shell
git checkout -b feature/branch-name-b feature/branch-name-a
```

---
# rebase

リベースされる対象のブランチを最新にして、変更が無い状態で下記のコマンドを実行されるとrebaseが実行される。


```shell
git rebase develop
```

競合がある場合、競合を解決した上で下記のコマンドを実行すると続きのrebase処理を実行してくれる。

```shell
git rebase --continue
```

```shell
# 失敗したrebaseの取り消し
git rebase --aborts
```

```shell
# commitをまとめる
git rebase -i HEAD~
```

---

# ブランチ間のdiffをファイル出力

```shell
git diff feature/branch-name-a feature/branch-name-b > ./test.txt
```

---

# 現在のブランチのコミット一覧

```shell
git log --online --first-parent
```

---

# 直前のコミットの打ち消し

```shell
git reset --sort HEAD^
```

---

# 直前のコミットを削除(revert)

```shell
git revert HEAD

# 特定のコミットを削除する(ID指定)
git revert testCommitId
```

---

# squash merge(コマンド実行後に手動commitが必須)

```shell
git merge --squash feature/branch/name
```

---

# 完了していないマージを中止

```shell
git merge --abort
```

---

# merge commitのrevert

```shell
# -mオプションには1,2の値を指定する
# 1=マージされた側のブランチ
# 2=マージする側のブランチ
# マージしたコミットそのものをrevertする時は1を指定する
# コミットIDは直前のもので無くても良い
git revert -m 1 testCommitID
```

---

# ローカルの作業ブランチを削除してしまった時

```shell
# 履歴の確認
git reflog

# 履歴のHEAD@{*}を参考に、branchをチェックアウトすると、復旧出来る。

git branch feature/recover_target_banch HEAD@{1}
```

---

# ブランチのコミット履歴の確認

```shell
git log
```

---

# check global config

```shell
git config --global -l
```

---
# リモートリポジトリのURLチェック

```shell
git remote -v
origin  https://github.com/user_name/repository_name (fetch)
origin  https://github.com/user_name/repository_name (push)
```

---

# リモートリポジトリのURLの変更

```shell
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
# brew install
brew install git-flow

# init
git flow init

# feature branch
git flow feature start branch-name
# release
git flow release start branch-name
### 基準のブランチを指定してリリースブランチの作成
git flow release start v1.0.0 develop
### 全ての対応がマージされたらfinishを掛ける
git flow release finish 'v1.0.0'
#### 実行後に`main`,`develop`ブランチ両方にreleaseブランチがマージされる。
#### タグはmain側に設定される。
### releaseのpublishの実行
git flow release publish v1.0.0
# hotfix
git flow hotfix start branch-name

```

---


---
