#!/bin/bash

#
# Purpose:  Creates the structure for a development directory
#
# Author:  Gonzalo Vazquez
#
# Parameters:
#   None noted
#

cd ~/Downloads
mkdir src
cd src

# Create first level directories
mkdir Xcode build-to-learn orgs projects test

# Create common orgs
cd ~/Downloads/src/orgs
mkdir gonzalovazquez usmakestwo beyondinsights

# Create test languages
declare -a languages=("bash" "docker" "c#" "clojure" "go" "haskell" "js" "lisp" "python" "react" "ruby" "terraform" "ts")
test="-test"
cd ~/Downloads/src/test
for i in "${languages[@]}"
do
    mkdir ${i}${test}
done