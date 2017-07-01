sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
sudo systemctl start docker
docker rm -f $(docker ps -a -q)
docker run -d --name shadowsocks -p 443:443 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 443 -k lalala.123 -m aes-256-cfb
docker run --name ipsec-vpn-server     --env-file ./vpn.env     --restart=always     -p 500:500/udp     -p 4500:4500/udp     -v /lib/modules:/lib/modules:ro     -d --privileged     hwdsl2/ipsec-vpn-server
