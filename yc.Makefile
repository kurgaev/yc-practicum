default: help	# make without parameters
h: help			# short
help:
	clear
	@ echo 'make -f yc.Makefile N/command:'
	@ echo '	0 - yc resource-manager lists'
	@ echo '	1 - yc compute lists'
	@ echo '	2 - yc vpc lists'
	@ echo '	3 - yc dns lists'
	@ echo '	4 - yc load-balancer lists'
	@ echo '	5 - yc iam lists'
	@ echo '	6 - yc container lists'
	@ echo '	install'
	@ echo

0:
	yc resource-manager cloud list
	yc resource-manager folder list

1:
	yc compute instance list
	yc compute disk list
	yc compute disk-type list
	yc compute image list
	yc compute snapshot list
	yc compute zone list
	yc compute instance-group list
	yc compute placement-group list
	yc compute host-type list
	yc compute host-group list
	yc compute disk-placement-group list

2:
	yc vpc network list
	yc vpc route-table list
	yc vpc security-group list
	yc vpc subnet list
	yc vpc address list

3:
	yc dns zone list

4:
	yc load-balancer network-load-balancer list
	yc load-balancer target-group list

5: 
	yc iam role list
	yc iam service-account list
	yc iam federation list
	yc iam key list

6:
	yc container registry list
	yc container repository list
	yc container image list
	yc container cluster list
	yc container node-group list

install:
	curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -a
