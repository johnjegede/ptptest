INT="$1"
TIME="$2"
IP_SRC="$3"
FILE="$4"
I="$5"
QFILE="$6"
PORT1="$7"
PORT2="$8"
sudo ~/ptpd/src/ptpd2 -i ${I} -E -S -U -g -u ${IP_SRC} -S ${FILE} -r ${INT} --global:quality_file=${QFILE} -j ${PORT1} -z ${PORT2} -f log_statistics
sleep ${TIME}
sudo kill -9 $(pgrep -f ptpd)
