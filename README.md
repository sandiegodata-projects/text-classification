# text-classification

Classify text in contracts and research papers for the San Diego Tax Payers Association and the Charter Cities Institute

## Setting up environment

The Jupyter notebooks in this depends on a set of Python packages that are included in the environments
specified in the `requirements` directory. The ``conda-minimal.yaml`` file has the unversioned package
names, and the other ``.yaml`` files are exports of environments for specific platforms. The platform specifications
will provide locked, repeatable versioning, but can fail if your platform is configured differently. In those
cases, the ``conda-minimal.yaml`` should work. 

To install these files, you will need to install [Anaconda](https://docs.anaconda.com/anaconda/install/index.html), but if you are skilled with the command line, you might prefer [miniconda](https://docs.conda.io/en/latest/miniconda.html). With Anaconda, you can run the Navigator and import one of the environment files. Or, from the command line you can run: 

    conda env create -n text_class -f conda-minimal.yaml

Or, for the Mac OS X environment: 

    conda env create -n text_class -f conda-minimal.yaml

## Datasets

Datasets for the project are under the [text_classification](https://data.sandiegodata.org/dataset/sdcta-org-hl-contracts/) tag in the SDRDL data repository