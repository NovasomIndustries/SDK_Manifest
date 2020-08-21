# SDK_Manifest

# Install repo:
mkdir \~/bin<br>
PATH=~/bin:$PATH

# Download the Repo script and ensure it is executable:

curl https://storage.googleapis.com/git-repo-downloads/repo > \~/bin/repo<br>
chmod a+x \~/bin/repo

# Initialize NOVAsomIndustries repo and download SDK:

\~/bin/repo init -u https://github.com/NovasomIndustries/SDK_Manifest<br>
\~/bin/repo sync

The script SDK_Create.sh installs repo in \~/bin and creates the directories tree in /Devel ( should exists and word writable )
