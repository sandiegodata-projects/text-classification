#!/bin/bash 
# Install the conda packages and pip packages, resolve all versions, 
# and export an environment file, using a disposable conda environment. 


#!/bin/bash 

if [ -z "$1" ] 
then
    outfile=conda-$(uname -s).yaml
else
    outfile=$1
fi

echo "Writting to" $outfile

# exit when any command fails
set -ex


conda env remove -n _env_build || echo

conda env create  -f conda-minimal.yaml -n _env_build

conda env export -n _env_build | egrep -v '^prefix'  > $outfile

conda env remove -n _env_build