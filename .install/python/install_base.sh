# Written by Floris.
## Installation checks
if [ "$USER" == root ]; then
    echo
    echo "'python_install' should NOT be run as root, nor should it be run with sudo."
    echo "this script should be run [normally] by a user with sudo privileges."
    exit 0
fi

if [[ "${BASH_SOURCE[-1]}" != "${0}" ]]; then
    echo
    echo "'python_install' should NOT be sourced."
    exit 0
fi


## anaconda python
#-------------------------------------------------------------------------------

CONDAROOT="$HOME/.anaconda"

if [ ! -d "$CONDAROOT" ]; then
    printf "installing anaconda python at %s... " "$CONDAROOT"
    cd "$HOME" || exit 0
    curl -L  https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh --output /tmp/miniconda.sh --silent
    bash /tmp/miniconda.sh -b -p "$CONDAROOT"
    rm /tmp/miniconda.sh
    echo "installed."
fi

chmod u+rwx "$CONDAROOT/etc/profile.d/conda.sh"
source "$CONDAROOT/etc/profile.d/conda.sh"

echo $CONDAROOT/etc/profile.d/mamba.sh >> $HOME/.bashrc

## base environment
#-------------------------------------------------------------------------------

mamba env update -n base -f "$HOME/.install/python/base.yml"

$CONDAROOT/bin/python -m ipykernel install --user --name base --display-name base
$CONDAROOT/bin/jupyter labextension install \
    @arbennett/base15-nord \
    @arbennett/base15-mexico-light \
    @jupyterlab/hdf4
