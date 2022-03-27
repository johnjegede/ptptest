INT="$1"
TIME="$2"
IP_DST1="$3"
IP_DST2="$4"
IP_DST3="$5"
I="$6"
PORT1="$7"
PORT2="$8"
sudo ~/ptpd/src/ptpd2 -i ${I} -E -M -U -g -u ${IP_DST1},${IP_DST2},${IP_DST3} -r ${INT} -j ${PORT1} -z ${PORT2}
sleep ${TIME}
sudo kill -9 $(pgrep -f ptpd)
