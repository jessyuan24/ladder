sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum makecache fast
sudo yum install -y docker-ce
sudo systemctl start docker
docker rm -f $(docker ps -a -q)
sudo modprobe af_key
#docker run \
#    --name l2tp-ipsec-vpn-server \
#    --env-file ./vpn.env \
#    -p 500:500/udp \
#    -p 4500:4500/udp \
#    -v /lib/modules:/lib/modules:ro \
#    -d --privileged \
#    fcojean/l2tp-ipsec-vpn-server
docker run -dt --name ss -p 6443:6443 mritd/shadowsocks -s "-s 0.0.0.0 -p 6443 -m aes-256-cfb -k 11223344 --fast-open"
docker run -dt --name ss1 -p 6444:6444 mritd/shadowsocks -s "-s 0.0.0.0 -p 6444 -m aes-256-cfb -k 11223344 --fast-open"
docker run -dt --name ss2 -p 6445:6445 mritd/shadowsocks -s "-s 0.0.0.0 -p 6445 -m aes-256-cfb -k 11223344 --fast-open"
#docker run -d --privileged -p 1723:1723 -v /root/ladder/chap-secrets:/etc/ppp/chap-secrets mobtitude/vpn-pptp
