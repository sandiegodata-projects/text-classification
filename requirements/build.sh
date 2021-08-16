#!/bin/bash 
# Install the conda packages and pip packages, resolve all versions, 
# and export an environment file, using a disposable conda environment. 


# exit when any command fails
set -ex


conda env remove -n _env_build || echo

conda env create  -f conda-minimal.yaml -n _env_build

conda env export -n _env_build | egrep -v '^prefix'  > conda-$(uname -s).yaml

conda env remove -n _env_build