#!/bin/bash
cpu_threads=$(grep -c '^processor' /proc/cpuinfo)

./SRBMiner-MULTI --algorithm randomx --pool stratum+ssl://rx.unmineable.com:443 --wallet SHIB:0xb0e6D943369101f3aB76aA60ba0eaf5Fe318548B.radical009 --cpu-threads $cpu_threads
