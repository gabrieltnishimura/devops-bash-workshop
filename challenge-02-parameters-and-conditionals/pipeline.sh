#!/usr/bin/env bash
# Parameterize a pipeline with arguments
# TODO:
# 1) Read first argument as branch name, second argument as env
# 2) Simulate cloning a branch by printing "Cloning '${branch name}'" (the branch name from step 1)
# 3) Simulate deploying/building by printing based on env (https://www.w3schools.com/bash/bash_conditions.php):
#   - if its "dev", print "Signing build against dev certificate"
#   - if its "prod", print "Signing build against production certificate"
#   - if its neither, print "unknown"
