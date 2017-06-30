apt-get update
apt-get install -y --no-install-recommends --no-install-suggests libssl1.1 nginx-light libnginx-mod-http-lua luarocks libssl-dev git gcc pkg-config
luarocks install https://github.com/maxdebayser/luajwt/releases/download/v1.7/luajwtjitsi-1.3-7.src.rock
apt-get remove -y libssl-dev git gcc pkg-config luarocks
apt -y autoremove
apt-get clean
rm -rf /var/lib/apt/lists/*
