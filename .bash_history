sudo apt -u curl git
sudo apt install -y curl git
sudo apt remove docker docker-engine docker.ir containerd runc
run apt update
sudo apt install -y apt-transport-https ca-certificates
curl gnupg lsb-release curl -fsSL http://download.cocker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
