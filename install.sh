#!/bin/bash

# Função para update
sudo apt update && apt upgrade -y
chmod +x install.sh
chmod +x SubRecon.sh

# Função para instalar o Golang
function install_golang() {
    snap install go --classic
    echo "Finished"
    echo "Checking installation"
    go version
    echo "Verification completed"
    echo "Finished install golang"
}

# Instalação config.txt
apt install dos2unix
dos2unix config.txt

# Instalação das ferramentas Go

echo "Instalando dnsx"
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando alterx"
go install github.com/projectdiscovery/alterx/cmd/alterx@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando Subfinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
mv ~/go/bin/* /usr/local/bin/
subfinder

echo "Instalando Httpx"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando Naabu"
sudo apt install -y libpcap-dev
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando amass"
go install -v github.com/owasp-amass/amass/v4/...@master
mv ~/go/bin/* /usr/local/bin/

echo "Instalando Assetfinder"
go install github.com/tomnomnom/assetfinder@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando chaos"
go install -v github.com/projectdiscovery/chaos-client/cmd/chaos@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando gau"
go install github.com/lc/gau/v2/cmd/gau@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando github-subdomains"
go install github.com/gwen001/github-subdomains@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando gitlab-subdomains"
go install github.com/gwen001/gitlab-subdomains@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando cero"
go install github.com/glebarez/cero@latest
mv ~/go/bin/* /usr/local/bin/

echo "Instalando anew"
go install -v github.com/tomnomnom/anew@latest
mv ~/go/bin/* /usr/local/bin/

# Limpeza e organização
clear
mkdir -p ~/tools 
sudo apt-get install jq -y 
cd ~/tools
wget https://github.com/Findomain/Findomain/releases/download/9.0.4/findomain-linux.zip
apt install unzip
unzip findomain-linux.zip
chmod +x findomain
sudo cp findomain /usr/bin/findomain
findomain -h
rm -r findomain-linux.zip

cd ~/tools
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r
sudo pip3 install -r requirements.txt


echo "Instalação concluída"
