#!/bin/sh

echo ---------------------
echo "TFS -> RSYNC -> GIT"
echo ---------------------


echo Loading config...
. ./config.sh

echo Creating mount point...
mkdir -p ${TFS_MOUNT_POINT}

# mount Tableau
echo "Mounting tableauFS... with ${TFS_PARAMS}"
tableaufs ${TFS_FLAGS} -o ${TFS_PARAMS} ${TFS_MOUNT_POINT}



# rsync the contents
echo RSync contents...
rsync -azv ${TFS_MOUNT_POINT} ${REPO_PATH}

COMMIT_MESSAGE="Server state @ `date`"


echo "Adding to git..."
cd ${REPO_PATH}
git add .
git commit -m "${COMMIT_MESSAGE}"


echo "Unmounting TableauFS"
sudo umount ${TFS_MOUNT_POINT}