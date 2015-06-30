#!/bin/sh
. ./config.sh

# Create the repo
mkdir -p ${REPO_PATH}
cd ${REPO_PATH}
git init .
