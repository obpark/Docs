#!/bin/bash 

if [ "$1" == "" ] ; then
  echo "사용법 : $0 장치명 [delay]"
  echo "예) $0 eth0 3 "
  exit 1
fi
if [ "$2" == "" ] ; then delay=3 ; else delay=$2 ; fi

echo "시간 : 수신(Kbit/Sec) / 송신(Kbit/Sec)"
while ( true ) ; do
  rx1=`grep $1 /proc/net/dev | awk '{print $1}' | sed 's/.*://'`
  tx1=`grep $1 /proc/net/dev | awk '{print $9}'`
  sleep $delay
  rx2=`grep $1 /proc/net/dev | awk '{print $1}' | sed 's/.*://'`
  tx2=`grep $1 /proc/net/dev | awk '{print $9}'`

  # 1024/8 == 128 
  rx3=$(((rx2-rx1)/128/delay))
  tx3=$(((tx2-tx1)/128/delay))

  echo "`date '+%k:%M:%S'` : $rx3 / $tx3"
done

# https://www.linux.co.kr/home/lecture/index.php?cateNo=&secNo=&theNo=&leccode=11062
