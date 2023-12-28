sudo apt install ecryptfs-utils cryptsetup
sudo adduser encrypt_temp
sudo usermod -aG sudo encrypt_temp
# Logout and login to this user
# sudo encryptfs-migrate-home -u daquintero
