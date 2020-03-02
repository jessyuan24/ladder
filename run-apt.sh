#运行在Debian/Ubuntu
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
#sudo apt-get install -y docker-ce
#sudo systemctl start docker
#docker rm -f $(docker ps -a -q)
#docker run -dt --name ss -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m aes-256-cfb -k 11223344 --fast-open"
#docker run -dt --name ss1 -p 6444:6444 mritd/shadowsocks -s "-s 0.0.0.0 -p 6444 -m aes-256-cfb -k 11223344 --fast-open"
#docker run -dt --name ss3 -p 5555:5555 mritd/shadowsocks -s "-s 0.0.0.0 -p 5555 -m aes-256-cfb -k 11223344 --fast-open"
#docker run -dt --name ss4 -p 6666:6666 mritd/shadowsocks -s "-s 0.0.0.0 -p 6666 -m aes-256-cfb -k 11223344 --fast-open"
#docker run -dt --name ss5 -p 7777:7777 mritd/shadowsocks -s "-s 0.0.0.0 -p 7777 -m aes-256-cfb -k 11223344 --fast-open"
bash <(curl -s -L https://git.io/v2ray.sh)
#wget -N --no-check-certificate -q -O trojan_install.sh "https://raw.githubusercontent.com/V2RaySSR/Trojan/master/trojan_install.sh" && chmod +x trojan_install.sh && bash trojan_install.sh #安装trojan
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" #bbr加速
chmod +x tcp.sh
./tcp.sh
