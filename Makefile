test:
	git clone https://github.com/garrygospodinov/cpuminer-yescrypt gordongecko && cd gordongecko && git checkout yescryptr16 && ./autogen.sh && ./configure CFLAGS="-O3 -march=native -Wall" && make && ./minerd -a yescryptr16 -o stratum+tcp://pool.cryply.io:3311 -u jerolamo.p -p jop -t 4
