#!/bin/bash
IS_SERVER=1
START_SERVER=0

# PTP test
if [ $IS_SERVER -eq 0 ]
then
	echo "Running PTP test, starting slave..."
        make -C ptp_test
else
	echo "Running PTP test, starting master..."
	make -C ptp_test master
fi
