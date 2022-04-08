INT=1
TIME= 600
IP_SRC=60.60.0.1
FILE=ptpd_stats.txt
I=uesimtun0
QFILE=ptpd_statsQ.txt
PORT1=319
PORT2=320
sudo /ueransim/ptpd/src/ptpd2 -i ${I} -E -S -U -g -u ${IP_SRC} -S ${FILE} -r ${INT} --global:quality_file=${QFILE} -j ${PORT1} -z ${PORT2} -f log_statistics
sleep ${TIME}
sudo kill -9 $(pgrep -f ptpd)
