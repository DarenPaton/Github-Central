#query time source
w32tm /query /source

#Set the NTP servers
w32tm.exe /config /manualpeerlist:”0.uk.pool.ntp.org 1.uk.pool.ntp.org 2.uk.pool.ntp.org 3.uk.pool.ntp.org” /syncfromflags:manual /reliable:YES /update
w32tm.exe /config /update
Restart-Service w32time
