#!/bin/sh

# The MIT License (MIT)

# Copyright (c) 2015 Gyula László

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

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
