#!/bin/bash
#!/bin/sh
#This is to identify the IP addresses that are used internally & externally by
#our system.
#Draw external internet address from $ curl icanhazip.com
#Draw internal interface with $ ifconfig

#ifconfig enp0s8|grep inet|sed -e 's/.*addr: //' -e 's/.*addr://' -e 's/ .*//'|grep [[:print:]]

echo -n "enp0s3"
enp0s3|grep 'inet '|awk '{print $2}'|sed 's,/.*,,'|echo -n "External IP: "
curl icanhazip.com
