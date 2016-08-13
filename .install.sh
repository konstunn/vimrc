#!/bin/bash

SRC_REPO_NAME='konstunn_dotfiles_local'

cd ~/

GIT_REPO_EXISTS=0

if [ -d .git ] ; then
	git stash
	GIT_REPO_EXISTS=1
else
	git init
fi

git remote add $SRC_REPO_NAME $OLDPWD
git fetch $SRC_REPO_NAME
git checkout --orphan backup
git checkout $SRC_REPO_NAME/master .gitignore
git add .
git reset .gitignore
rm .gitignore
git commit -m 'backup existed files'

if [ $GIT_REPO_EXISTS -eq 1 ] ; then
	git checkout --orphan konstunn_dotfiles
	git merge $SRC_REPO_NAME
else
	git checkout master
fi

cd $OLDPWD
