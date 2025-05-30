for f in bastion loadbalancer bootstrap master-0 master-1 master-2 worker-0 worker-1 
do
	v=ocp4-$f
	echo $v
	virsh destroy $v
	virsh undefine --remove-all-storage $v
done
virsh net-destroy ocp4
virsh net-undefine ocp4
virsh pool-destroy ocp4
virsh pool-undefine ocp4
