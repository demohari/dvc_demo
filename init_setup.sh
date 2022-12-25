echo [$(date)]: "START"
echo [$(date)]: "creating environment"
conda create --prefix ./env python=3.8 -y
echo [$(date)]: "activate environment"
#conda activate ./env
source activate ./env
echo [$(date)]: "install dev requirements"
pip install -r requirements_dev.txt
echo [$(date)]: "initializing git repositories"
git init
echo [$(date)]: "dvc initialization"
dvc init
echo [$(date)]: "END"

# to remove everything -
# rm -rf env/ .gitignore conda.yaml README.md .git/