!/bin/bash
#!/bin/sh
#This is to identify the IP addresses that are used internally & externally by
#our system.
#Draw external internet address from $ curl icanhazip.com
#Draw internal interface with $ ifconfig

ifconfig enp0s8|grep inet|sed -e 's/.*addr: //' -e 's/.*addr://' -e 's/ .*//'|grep [[:print:]]




i
