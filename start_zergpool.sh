#!/bin/bash
cpu_threads=$(grep -c '^processor' /proc/cpuinfo)
echo "Start SRBMiner-MULTI with Parameters: --algorithm $yespower2b --pool $stratum+tcp://power2b.mine.zergpool.com:7445 --wallet $DLs3MGs8jBaQUftCeiTWmU6g7WdMzFdnpq --password $c=DOGE 
./SRBMiner-MULTI --algorithm yespower2b --pool stratum+tcp://power2b.mine.zergpool.com:7445 --wallet DLs3MGs8jBaQUftCeiTWmU6g7WdMzFdnpq --password c=DOGE --cpu-threads $cpu_threads
