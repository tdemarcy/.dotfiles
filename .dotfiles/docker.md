# Docker installatin

## Set up the repository
1. Update the `apt` package index and install packages to allow `apt` to use a repository over HTTPS
```sh
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

2. Add Docker’s official GPG key
```sh
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

3. Set up the stable repository
```sh
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
``` 

## Install
```sh
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
```

## Add user to Docker group
```sh
sudo gpasswd -a $USER docker
sudo reboot
```
