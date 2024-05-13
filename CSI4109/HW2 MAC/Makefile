all:
	gcc mac.c -o mac
	
owner:
	sudo chown root:root test.sh
	sudo chown root:root mac
	sudo chown root:root top_secret.data
	sudo chown root:root secret.data
	sudo chown root:root confidential.data
	sudo chown root:root unclassified.data
	sudo chown root:root mac.policy

ursa:
	sudo chown ursamajor:ursamajor test.sh
	sudo chown ursamajor:ursamajor mac
	sudo chown ursamajor:ursamajor top_secret.data
	sudo chown ursamajor:ursamajor secret.data
	sudo chown ursamajor:ursamajor confidential.data
	sudo chown ursamajor:ursamajor unclassified.data
	sudo chown ursamajor:ursamajor mac.policy

jmtgr:
	sudo chown jmtgr:ursamajor mac
	sudo chown jmtgr:ursamajor top_secret.data
	sudo chown jmtgr:ursamajor secret.data
	sudo chown jmtgr:ursamajor confidential.data
	sudo chown jmtgr:ursamajor unclassified.data
	sudo chown jmtgr:ursamajor mac.policy
	
permission:
	sudo chmod 6755 test.sh
	sudo chmod 6755 mac	
	sudo chmod 0640 top_secret.data
	sudo chmod 0640 secret.data
	sudo chmod 0640 confidential.data
	sudo chmod 0640 unclassified.data
	sudo chmod 0640 mac.policy

clean:
	sudo rm *.log

.PHONY:
	all mac clean
	