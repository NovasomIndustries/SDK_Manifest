#!/bin/sh
DIRS="AutoRun Codeblocks DtbUserWorkArea FileSystems Logs Qt Utils-2020.09 XCompilers-2020.09 Bootloaders Deploy Doc-2020.09 ExternalFileSystems Kernels NOVAembed_Settings Packages-2020.09"

if [ -d NOVAsdk2020.09 ]; then
	echo "Dir NOVAsdk2020.09 is present. Remove it before continuing"
	exit
fi
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

rm -rf ~/bin
mkdir ~/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git config --global color.ui false 

~/bin/repo init -u https://github.com/NovasomIndustries/SDK_Manifest
~/bin/repo sync



