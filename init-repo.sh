#!/bin/sh
echo --------------------------------------------------------------
echo "  TFS -> GIT INIT REPO"
echo
echo "    Usage: $0 <CONFIG_FILE_PATH>"
echo "    For a sample config, check config.sh"
echo
echo --------------------------------------------------------------
echo

echo Loading config: $1...
. $1

# Create the repo
mkdir -p ${REPO_PATH}
cd ${REPO_PATH}
git init .
