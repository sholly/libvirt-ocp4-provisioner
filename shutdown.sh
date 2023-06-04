#!/bin/bash 

nodes=$(oc get nodes -o jsonpath='{.items[*].metadata.name}')

#for node in ${nodes[@]}
#do
#    echo "==== Shut down $node ===="
#    ssh -i ~/ocp4helper/ocp4 core@$node.ocp4.lab.unixnerd.org  sudo shutdown -h 1
#done

for node in $(oc get nodes -o jsonpath='{.items[*].metadata.name}'); 
do 
	oc debug node/${node} -- chroot /host shutdown -h 1; 
done
