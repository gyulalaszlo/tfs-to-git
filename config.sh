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

