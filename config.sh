#!/bin/sh

# Parameters for TableauFS
TFS_PARAMS="ro,pguser=readonly,pgpass=onlyread,pghost=54.203.245.18,pgport=8060"
TFS_FLAGS="-s"

TFS_MOUNT_DIR=tableau-server
TFS_MOUNT_POINT=/tmp/${TFS_MOUNT_DIR}

REPO_PATH=/tmp/tabfs-repo

