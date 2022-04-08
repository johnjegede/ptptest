Code to gather latency statistics in the containers.

To run the test, edit the run_test.sh file to set IS_SERVER to 1 for the PTP master and 0 for the PTP slave.
The parameters are:

OUTPUT_FILE = name of the ptpd stats file.

SLEEP_DELAY = time before the slave is started.

TIME = the number of seconds to run clock synchronisation

IP_SRC = the IP address of the master

IP_DST_1= the IP addresses of 1 slave (there can be more or less slaves, as desired).

PORT1 = for changing the port on which PTP event messages are sent.

PORT2 = for chaning the port on which PTP general messages are sent.

(more details see here: https://en.wikipedia.org/wiki/Precision_Time_Protocol#Message_transport)
This will work only using the patched PTPd version available at https://github.com/dapopescu/ptpd, 
which can be installed using install.sh. If you don't want to change the ports on which PTPd runs, 
just install it using sudo apt install ptpd and update the scripts in the source folder to use just ptpd instead of
~/ptpd/src/ptpd2 in the commands.

IF_NAME = the name of the network interface

INT = interval of time for messages (can be 0, 1, 2, ...7, which translate to 1,2,4,...128 messages per second).
