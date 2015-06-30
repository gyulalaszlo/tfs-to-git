#!/bin/sh

echo --------------------------------------------------------------
echo "  TFS -> GIT DIRECT"
echo
echo "    Usage: $0 <CONFIG_FILE_PATH>"
echo "    For a sample config, check config.sh"
echo
echo "    Note: unmounting TableauFS requires the usage of SUDO..."
echo --------------------------------------------------------------
echo

echo Loading config: $1...
. $1

DIRECT_MOUNT_POINT=${REPO_PATH}/${TFS_MOUNT_DIR}

echo Creating mount point...
mkdir -p ${DIRECT_MOUNT_POINT}

# mount Tableau
echo "Mounting tableauFS... with ${TFS_PARAMS}"
tableaufs ${TFS_FLAGS} -o ${TFS_PARAMS} ${DIRECT_MOUNT_POINT}



COMMIT_MESSAGE="Server state @ `date`"

echo "Adding to git..."
cd ${REPO_PATH}
git add .
git commit -m "${COMMIT_MESSAGE}"


echo "Unmounting TableauFS"
sudo umount ${DIRECT_MOUNT_POINT}
