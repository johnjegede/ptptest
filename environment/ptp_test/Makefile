OUTPUT_FILE = ptpd_stats.txt
SLEEP_DELAY = 5
TIME = 600
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
