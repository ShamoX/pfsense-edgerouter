#!/bin/sh

FREEBSD_GIT="git@github.com:freebsd/freebsd.git"
FREEBSD_BRANCH="release/10.2.0"
OLDPWD="$(pwd)"

if [ ! -d "src" ]; then
	echo "Creating sources dir."
	mkdir "src"
fi
if [ ! -d "src/freebsd" ] || ! ( cd "src/freebsd" && git status > /dev/null ) ; then
	echo "Getting FreeBSD $FREEBSD_BRANCH sources."
	git clone -b "$FREEBSD_BRANCH" --single-branch "$FREEBSD_GIT" "src/freebsd"
else
	cd -
fi


