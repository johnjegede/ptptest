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


OUTPUT_FILE = ptpd_stats.txt
SLEEP_DELAY = 5
TIME = 2000
IP_SRC = 60.60.0.1
IP_LOCAL = 192.168.101.3
IP_DST_1 = 60.60.0.2
PORT1 = 319
PORT2 = 320
IF_NAME = uesimtun0
INT = 1

all:
	${MAKE} test_remote
message:  
	@echo " #################################################"
	@echo " #################################################"

test_remote:
	@echo " #################################################"
	@echo " Starting PTP test	                 	 "
	@echo " #################################################"
	sleep $(SLEEP_DELAY)
	./source/run_ptpd_slave.sh $(INT) $(TIME) $(IP_SRC) $(OUTPUT_FILE)_`hostname` $(IF_NAME) $(OUTPUT_FILE)_quality_`hostname`
	@echo " #################################################"
	@echo " Finished PTP test                                "
	@echo " #################################################"
master:
	@echo " #################################################"
	@echo " Starting PTP test in master mode               "
	@echo " #################################################"
	
	./source/run_ptpd_master.sh $(INT) $(TIME) $(IP_DST_1) $(IF_NAME)
	@echo " #################################################"
	@echo " Finished PTP test                                "
	@echo " #################################################"

clean:
	rm -f *$(OUTPUT_FILE)
