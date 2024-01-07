sudo apt install cmake libevdev-dev libudev-dev libconfig++-dev
sudo apt-get install libglib2.0-dev
sudo apt-get update && sudo apt-get install build-essential
cd ~/.install
sudo cp logid.cfd /etc/
git clone https://github.com/PixlOne/logiops.git
cd logiops
mkdir build
cd build
cmake ..
make
sudo make install
sudo systemctl enable --now logid
