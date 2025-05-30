for f in bastion loadbalancer bootstrap master-0 master-1 master-2 worker-0 worker-1 
do
	v=multidev-$f
	echo $v
	virsh destroy $v
	virsh undefine --remove-all-storage $v
done
virsh net-destroy multidev
virsh net-undefine multidev
virsh pool-destroy multidev
virsh pool-undefine multidev
