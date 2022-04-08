INT=1
TIME=600
IP_DST1=60.60.0.2
I=uesimtun0
PORT1=319
PORT2=320
sudo /ueransim/ptpd/src/ptpd2 -i ${I} -E -M -U -g -u ${IP_DST1} -r ${INT} -j ${PORT1} -z ${PORT2}
sleep ${TIME}
sudo kill -9 $(pgrep -f ptpd)
