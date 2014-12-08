#!/bin/bash

set -eu

TMP=/tmp
TARGET=${HOME}/bin

if [ ! -x ${TARGET}/hugo ] ; then
	# download hugo binary
	rm -rf ${TMP}/hugo.zip ${TMP}/hugo_0.12_darwin_amd64
	curl -L -o ${TMP}/hugo.zip https://github.com/spf13/hugo/releases/download/v0.12/hugo_0.12_darwin_amd64.zip
	(cd ${TMP} ; unzip -U hugo.zip)
	
	# create bin directory and add hugo there
	mkdir -p ${TARGET}
	cp ${TMP}/hugo_0.12_darwin_amd64/hugo_0.12_darwin_amd64 ${TARGET}/hugo
	chmod +x ${TARGET}/hugo
	ln -s ${TARGET}/hugo /usr/local/bin/hugo

	echo "hugo installed successfully"
else
	echo "hugo already installed, nothing to do"
fi	




