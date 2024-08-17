
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian stretch stable" | \
  sudo tee /etc/apt/sources.list.d/docker-engine.list

sudo apt-get update -y
sudo apt-get install -y docker-ce

# Run docker.
sudo systemctl start docker
sudo systemctl enable docker

# Add user to docker group for using docker without sudo command.
sudo gpasswd -a "${USER}" docker

# Reboot
sudo reboot
