#!/bin/bash 

vms=(bastion loadbalancer master-0 master-1 master-2 worker-0 worker-1 worker-2)

#for node in ${nodes[@]}
#do
#    echo "==== Shut down $node ===="
#    ssh -i ~/ocp4helper/ocp4 core@$node.ocp4.lab.unixnerd.org  sudo shutdown -h 1
#done

for vm in "${vms[@]}"
do 
	virsh start $vm
done
