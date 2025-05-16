for f in bastion loadbalancer bootstrap master-0 master-1 master-2 worker-0 worker-1 worker-2
do
	echo $f
	virsh destroy $f
	virsh undefine --remove-all-storage $f
done
virsh net-destroy ocdev
virsh net-undefine ocdev
virsh pool-destroy ocdev
virsh pool-undefine ocdev
