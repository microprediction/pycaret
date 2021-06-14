# Commands for installing pycaret on Apple M1-chip June 2021
# Likely to be out of date quickly
# Use at your own risk
# It is suggested that you cut and paste one at a time don't just run this script

# Suggest doing this in virtualenv (or conda if you prefer)
python3 -m env pycaretenv
sh pycartenv/bin/activate

# Get homebrew if you don't have it already (you may want to add to your path also)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
# (you might also need to get developer command line tools)

# No need to ask for trouble....
pip install --upgrade pip


# numpy/scipy
pip install cython
pip install pybind11
pip install openblas
pip install gfortran
pip install libomp
pip install --no-binary :all: --no-use-pep517 numpy
pip3 install --no-binary :all: --no-use-pep517 scipy


# The usual suspects
# If you have trouble try adding --no-use-pep517  
pip install git+https://github.com/numpy/numpy.git 
pip install git+https://github.com/numpy/pandas.git



# Install LightGBM (https://lightgbm.readthedocs.io/en/latest/Installation-Guide.html) 
brew install cmake
brew install cmake libomp
brew install cmake op
git clone --recursive https://github.com/microsoft/LightGBM
cd LightGBM
mkdir build
cd build
cmake ..
make -j4

# Seaborn might not be "fixed" at the time you read this so go direct and get the latest
pip install git+https://github.com/mwaskom/seaborn.git#egg=seaborn


# Sklearn
pip install micromlgen
pip install sklearn

# pyLDavis
pip install pyLDavis --no-dependencies


# spacy
pip install spacy==2.3.7

