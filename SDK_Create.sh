#!/bin/sh
DIRS="AutoRun Codeblocks DtbUserWorkArea FileSystems Logs Qt Utils-2020.09 XCompilers-2020.09 Bootloaders Deploy Doc-2020.09 ExternalFileSystems Kernels NOVAembed_Settings Packages-2020.09"

mkdir NOVAsdk2020.09
ln -s NOVAsdk2020.09 NOVAsdk
cd NOVAsdk
for i in ${DIRS}; do
	mkdir ${i}
done
ln -s Utils-2020.09 Utils
ln -s XCompilers-2020.09 XCompilers
ln -s Doc-2020.09 Doc
ln -s Packages-2020.09 Packages

if ! [ -f ~/bin/repo ]; then
	mkdir ~/bin
	curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
	chmod a+x ~/bin/repo
fi

~/bin/repo init -u https://github.com/NovasomIndustries/SDK_Manifest
~/bin/repo sync



