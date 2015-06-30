#!/bin/sh

# Parameters for TableauFS

# The parameters passed to TableauFS's -o swtich
TFS_PARAMS="ro,pguser=readonly,pgpass=onlyread,pghost=54.203.245.18,pgport=8060"

# Any other command line switches for TableauFS
TFS_FLAGS="-s"

# The name of the directory to mount the tableauFS under
TFS_MOUNT_DIR=tableau-server

# The path of the mount point of the TableuFS when using RSync
TFS_MOUNT_POINT=/tmp/${TFS_MOUNT_DIR}

# The path of the Git repo to use
REPO_PATH=/tmp/tabfs-repo

