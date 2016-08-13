#!/bin/bash

SRC_REPO_NAME='konstunn_dotfiles_local'
DEST_BRANCH='konstunn_dotfiles_installation'

cd ~/

GIT_REPO_EXISTS=0

if [ -d .git ]
then
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

if [ $GIT_REPO_EXISTS -eq 1 ]
then
	BRANCH_EXISTS=`git branch | grep " $DEST_BRANCH$" | wc -l`
	if [ $BRANCH_EXISTS -eq 0 ]
	then
		git checkout --orphan $DEST_BRANCH
	else
		git checkout $DEST_BRANCH
	fi
fi

git merge --no-edit -X 'theirs' $SRC_REPO_NAME/master

cd $OLDPWD
