#!/bin/bash -e
mkdir -p /var/lib/dcos/
TYPE=$(curl -s 169.254.169.254/latest/meta-data/instance-type/ 2>/dev/null)
AZ=$(curl -s 169.254.169.254/latest/meta-data/placement/availability-zone/ 2>/dev/null)
echo "MESOS_ATTRIBUTESinstance-type:$TYPE;availability-zone:$AZ" > /var/lib/dcos/mesos-slave-common
