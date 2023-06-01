sudo apt install klayout

git clone https://github.com/gdsfactory/gdsfactory.git
cd gdsfactory
pip install -e . pre-commit
pip install -e .[full,gmsh,tidy3d,devsim,meow,database]
pre-commit install
gf install klayout-genericpdk
