Creating Environment Files
--------------------------

There are two types of environment files here; ``conda-minimal.yaml`` is the unversioned
environment, with only the required packages and no additional dependencies. The other YAML files
are exports of the environment for specific plantforms. The general process for creating the platform
environments is: 



    # 1) Create the environment
    conda env create -n textclass_build -f conda-minimal.yaml
    # 2) Export to a platform file ( & remove the prefix, which we don't need )
    conda env export -n textclass_build  | egrep -v '^prefix'  > conda-<platform>.yaml
    # 3) Remove the  build env 
    conda env remove textclass_build

( Replace '&gt;platform>' with the name of the operating system. )

