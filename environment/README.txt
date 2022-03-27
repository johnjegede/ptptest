# Copyright (c) 2017, Diana Popescu
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the project, the copyright holder nor the names of its
#  contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Code to gather latency and packet loss statistics in the cloud.

To run the test, edit the run_test.sh file to set IS_SERVER to 1 for the PTP master and 0 for the PTP slave.
The parameters are:
OUTPUT_FILE = name of the ptpd stats file.
SLEEP_DELAY = time before the slave is started.
TIME = the number of seconds to run clock synchronisation
IP_SRC = the IP address of the master
IP_DST_1, IP_DST_2, IP_DST_3 = the IP addresses of 3 slaves (there can be more or less slaves, as desired).
PORT1 = for changing the port on which PTP event messages are sent.
PORT2 = for chaning the port on which PTP general messages are sent.
(more details see here: https://en.wikipedia.org/wiki/Precision_Time_Protocol#Message_transport)
This will work only using the patched PTPd version available at https://github.com/dapopescu/ptpd, 
which can be installed using install.sh. If you don't want to change the ports on which PTPd runs, 
just install it using sudo apt install ptpd and update the scripts in the source folder to use just ptpd instead of
~/ptpd/src/ptpd2 in the commands.
IF_NAME = the name of the network interface
INT = interval of time for messages (can be 0, 1, 2, ...7, which translate to 1,2,4,...128 messages per second).
