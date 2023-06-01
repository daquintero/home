# Download all QUPS project related files
cd $HOME
git clone https://github.com/daquintero/qups.git
git clone https://github.com/daquintero/qups_logic.git
git clone https://github.com/daquintero/qups_visual.git
git clone https://github.com/daquintero/rpt_parser.git
git clone https://github.com/daquintero/gdsfactory.git

# Install in pipx for compatible environments
pip install -e ./rpt_parser
pipx install -e ./gdsfactory
pip install -e ./qups_visual
pip install -e ./qups_logic
pip install -e ./qups




