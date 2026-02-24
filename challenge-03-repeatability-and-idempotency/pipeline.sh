#!/usr/bin/env bash
# Simulate cloning a branch and building a project with repeatability and idempotency in mind
# TODO:
# 1) Read first argument as branch name
# 2) Validate if branch name is not empty and log error
# 2) Clone this repository into a new folder named 'workspace' and only clone a single branch (branch name provided from step 1)
#  (https://stackoverflow.com/questions/1911109/how-do-i-clone-a-specific-git-branch)
# 3) List files from the workspace folder
# 4) Running the script twice should NOT break the script
