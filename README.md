# TFS -> Git

These scripts are designed to help with keeping the contents of a
Tableau server in git using TableauFS and create periodic commits.

### Configuration

All three tools use the same invocation:

```
# <script> <config-file>

$ ./init-repo.sh ./config.sh
$ ./tfs-rsync.sh ./config.sh
$ ./tfs-direct-git.sh ./config.sh
```

Look at `config.sh` for details on how to set up the repo and
tableauFS.



### Initializing the repo

Use the `init-repo.sh` script to create the repository. This only needs
to be ran once on initializing the repo...


### Using RSync (recommended)

Use the `tfs-rsync.sh` script to:
* mount the tableau server to a directory
* rsync the contents of that directory with the repository
* create a new commit with the current timestamp in the repository

Since it uses RSync, it will copy the contents to the local directory,
but will try to copy only the changed content.


### Using Direct (sloooowww)

Use the `tfs-direct-git.sh` script to:
* mount the tableau server directly into the git repo
* create a new commit with the current timestamp in the repository

Since it uses Git, it'll try to access more files in a less effective
way, hence the sluggishness.
