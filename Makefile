include ./Makefile.env
export
default: help		# make without parameters

h: help				# short
help:
#clear
#yc version
#@echo
	@echo 'make CMD/N'
	@echo 'c / create-all'
	@echo 'd / delete-all'
	@echo 'i / init		CLI initialization'
	@echo '0 - config		Manage Yandex Cloud CLI configuration'
	@echo '1 - vpc			Manage Yandex Virtual Private Cloud resources'
	@echo '2 - compute		Manage Yandex Compute Cloud resources'
#@echo 'iam                       Manage Yandex Identity and Access Manager resources'
#@echo 'resource-manager          Manage Yandex Resource Manager resources'
#@echo 'dns                       Manage Yandex DNS resources'
#@echo 'managed-kubernetes        Manage Kubernetes clusters.'
#@echo 'ydb                       Manage YDB databases.'
#@echo 'kms                       Manage Yandex Key Management Service resources'
#@echo 'cdn                       Manage CDN resources'
#@echo 'certificate-manager       Manage Certificate Manager resources'
#@echo 'managed-clickhouse        Manage ClickHouse clusters, hosts, databases, backups, users and ml-models.'
#@echo 'managed-mongodb           Manage MongoDB clusters, hosts, databases, backups and users.'
#@echo 'managed-mysql             Manage MySQL clusters, hosts, databases, backups and users.'
#@echo 'managed-sqlserver         Manage SQLServer clusters, databases, backups and users.'
#@echo 'managed-postgresql        Manage PostgreSQL clusters, hosts, databases, backups and users.'
#@echo 'managed-redis             Manage Redis clusters, hosts, databases, backups and users.'
#@echo 'managed-elasticsearch     Manage ElasticSearch clusters, hosts, indexes and backups.'
#@echo 'managed-kafka             Manage Apache Kafka clusters, brokers, topics and users.'
#@echo 'container                 Manage Container resources.'
#@echo 'load-balancer             Manage Yandex Load Balancer resources'
#@echo 'datatransfer              Manage Data Transfer endpoints and transfers'
#@echo 'operation                 Manage operations'
#@echo 'components                Manage installed components'
#@echo 'serverless                Manage Serverless resources.'
#@echo 'iot                       Manage Yandex IoT Core resources'
#@echo 'dataproc                  Manage data processing clusters.'
#@echo 'application-load-balancer [PREVIEW] Manage Yandex Application Load Balancer resources'
#@echo 'logging                   [PREVIEW] Manage Yandex Cloud Logging'
#@echo 'lockbox                   [PREVIEW] Manage Yandex Lockbox resources'
#@echo 'organization-manager      Manage Yandex Organization Manager resources'
#@echo 'cloud-desktop             Manage cloud desktop resources.'
	@echo

i: init
init:
	yc init

#=============#
# config help #
#=============#
0: config
config:
	clear
	@echo 'make N'
	@echo
	@echo yc config:
	@echo '011 - list		List configuration values'
#@echo 'get         Get value for the specified configuration property'
#@echo 'set         Set value for the specified configuration property'
#@echo 'unset       Unset value for the specified configuration property'
	@echo
	@echo yc config profile:
	@echo '021 - list		List configuration profiles'
#@echo 'get         List values for the specified configuration profile'
#@echo 'create      Create a configuration profile'
#@echo 'delete      Delete the specified configuration profile'
#@echo 'activate    Activate the specified configuration profile'
	@echo

#=============#
# config exec #
#=============#
011:
	yc config list
	@echo
021:
	yc config profile list
	@echo

#==========#
# vpc help #
#==========#
1: vpc
vpc:
	clear
	@echo 'make N'
	@echo
	@echo 'yc vpc network		Manage networks.'
	@echo '111 - list		List networks in a folder.'
	@echo '112 - create		Create a network.'
	@echo '113 - delete		Delete a network.'
	@echo '114 - get		Get information about a network.'
#@echo '115 - list-subnets	List subnets in a network.'
#@echo '  update               Modify configuration or attributes of a network.'
#@echo '  add-labels           Assign labels to a network.'
#@echo '  remove-labels        Remove labels from a network.'
#@echo '  list-security-groups List security groups in a network.'
#@echo '  list-route-tables    List route tables in a network.'
#@echo '  list-operations      List operations for a network.'
#@echo '  move                 Move a network to another folder.'#
	@echo '  '
	@echo 'yc vpc route-table	Manage route tables.'
	@echo '121 - list		List route tables in a folder.'
#@echo '  get             Get information about a route table.'
#@echo '  create          Create a route table.'
#@echo '  update          Modify configuration or attributes of a route table.'
#@echo '  add-labels      Add labels to a route table.'
#@echo '  remove-labels   Remove labels from a route table.'
#@echo '  delete          Delete a route table.'
#@echo '  list-operations List operations for a route table.'
#@echo '  move            Move a route table to another folder.'
	@echo ''
	@echo 'yc vpc security-group	Manage security groups.'
	@echo '131 - list		List security groups in a folder.'
#@echo '  get              Get information about a security group.'
#@echo '  create           Create a security group.'
#@echo '  update           Modify configuration or attributes of a security group.'
#@echo '  add-labels       Add labels to a security group.'
#@echo '  remove-labels    Remove labels from a security group.'
#@echo '  delete           Delete a security group.'
#@echo '  list-operations  List operations for a security group.'
#@echo '  move             Move a security group to another folder.'
#@echo '  update-rules     Update rules of a security group.'
#@echo '  update-rule-meta Update rule of a security group.'
	@echo ''
	@echo 'yc vpc subnet		Manage subnets.'
	@echo '141 - list		List subnets in a folder.'
	@echo '142 - create		Create a subnet in the specified network.'
	@echo '143 - delete		Delete a subnet.'
#@echo '  list-used-addresses List used addresses in subnet.'
#@echo '  get                 Get information about a subnet.'
#@echo '  update              Modify configuration or attributes of a subnet.'
#@echo '  add-range           Add CIDR range to a subnet.'
#@echo '  remove-range        Remove CIDR range from a subnet.'
#@echo '  add-labels          Assign labels to a subnet.'
#@echo '  remove-labels       Remove labels from a subnet.'
#@echo '  list-operations     List operations for a subnet.'
#@echo '  move                Move a subnet to another folder.'
	@echo ''
	@echo 'yc vpc address		Manage addresses.'
	@echo '151 - list		List addresses in a folder.'
#@echo '  get             Get information about an address.'
#@echo '  create          Create an address.'
#@echo '  update          Modify configuration or attributes of the address.'
#@echo '  delete          Delete an address.'
#@echo '  list-operations List operations for an address.'
#@echo '  move            Move an address to another folder.'
	@echo ''

#==========#
# vpc exec #
#==========#
network-list: 111
111:
	yc vpc network list
#yc vpc network list --format yaml
121:
	yc vpc route-table list
131:
	yc vpc security-group list
subnet-list: 141
141:
	yc vpc subnet list
151:
	yc vpc address list

network-create: 112
112:
	yc vpc network create \
		--name $(NETWORK-NAME)
subnet-create: 142
142:
	yc vpc subnet create \
		--name $(SUBNET-NAME-1) \
		--network-name $(NETWORK-NAME) \
		--range 192.168.1.0/24 \
		--zone ru-central1-a
	yc vpc subnet create \
		--name $(SUBNET-NAME-2) \
		--network-name $(NETWORK-NAME) \
		--range 192.168.2.0/24 \
		--zone ru-central1-a
	yc vpc subnet create \
		--name $(SUBNET-NAME-3) \
		--network-name $(NETWORK-NAME) \
		--range 192.168.3.0/24 \
		--zone ru-central1-a

network-delete: 113
113:
	yc vpc network delete \
		--name $(NETWORK-NAME)
	@echo
subnet-delete: 143
143:
	yc vpc subnet delete \
		--name $(SUBNET-NAME-1)
	yc vpc subnet delete \
		--name $(SUBNET-NAME-2)
	yc vpc subnet delete \
		--name $(SUBNET-NAME-3)
	@echo

114:
	yc vpc network get $(NETWORK-NAME)

#==============#
# compute help #
#==============#
2: compute
compute:
	clear
	@echo 'make N'
	@echo
	@echo 'yc compute instance		Manage virtual machine instances'
	@echo '211 - list			List virtual machine instances'
	@echo '212 - create			Create a virtual machine instance'
	@echo '213 - delete			Delete the specified virtual machine instance'
#@echo 'get                      Show information about the specified virtual machine instance'
#@echo 'create-with-container    Create a virtual machine instance running Docker container'
#@echo 'update                   Update the specified virtual machine instance'
#@echo 'update-container         Update the specified virtual machine instance running Docker container'
#@echo 'add-metadata             Add or update metadata for the specified virtual machine instance'
#@echo 'remove-metadata          Remove keys from metadata for the specified virtual machine instance'
#@echo 'add-labels               Add labels to specified virtual machine instance'
#@echo 'remove-labels            Remove labels from specified virtual machine instance'
#@echo 'get-serial-port-output   Return the serial port output of the specified virtual machine instance'
#@echo 'stop                     Stop the specified virtual machine instance'
#@echo 'start                    Start the specified virtual machine instance'
#@echo 'restart                  Restart the specified virtual machine instance'
#@echo 'attach-disk              Attach existing disk to the specified virtual machine instance'
#@echo 'attach-new-disk          Attach new disk to the specified virtual machine instance'
#@echo 'detach-disk              Detach disk from the specified virtual machine instance'
#@echo 'attach-filesystem        Attach existing filesystem to the specified virtual machine instance'
#@echo 'detach-filesystem        Detach filesystem from the specified virtual machine instance'
#@echo 'update-network-interface Update the specified network interface of virtual machine instance'
#@echo 'add-one-to-one-nat       Add one-to-one NAT to the specified network interface of virtual machine instance'
#@echo 'remove-one-to-one-nat    Remove one-to-one NAT to the specified network interface of virtual machine instance'
#@echo 'move                     Move the specified virtual machine instance into the folder'
#@echo 'list-operations          List operations for the specified instance'
	@echo ''
	@echo 'yc compute disk			Manage disks'
	@echo '221 - list			List disks'
#@echo 'get             Show information about the specified disk'
#@echo 'create          Create a disk'
#@echo 'update          Update the specified disk'
#@echo 'add-labels      Add labels to specified disk'
#@echo 'remove-labels   Remove labels from specified disk'
#@echo 'resize          Resize the specified disk'
#@echo 'delete          Delete the specified disk'
#@echo 'move            Move the specified disk into the folder'
#@echo 'list-operations List operations for the specified disk'
	@echo ''
	@echo 'yc compute disk-type		Show available disk types'
	@echo '231 - list			List disk types'
#@echo 'get         Show information about the specified disk type'
	@echo ''
	@echo 'yc compute image		Manage images'
	@echo '241 - list			List images'
#@echo 'get                    Show information about the specified image'
#@echo 'get-latest-from-family Show information about the latest image that is part of an image family'
#@echo 'create                 Create an image'
#@echo 'update                 Update the specified image'
#@echo 'add-labels             Add labels to specified image'
#@echo 'remove-labels          Remove labels from specified image'
#@echo 'delete                 Delete the specified image'
#@echo 'list-operations        List operations for the specified image'
	@echo ''
	@echo 'yc compute snapshot		Manage snapshots'
	@echo '251 - list			List snapshots'
#@echo 'get             Show information about the specified snapshot'
#@echo 'create          Create a snapshot of the specified disk'
#@echo 'update          Update the specified snapshot'
#@echo 'add-labels      Add labels to specified snapshot'
#@echo 'remove-labels   Remove labels from specified snapshot'
#@echo 'delete          Delete the specified snapshot'
#@echo 'list-operations List operations for the specified snapshot'
	@echo ''
	@echo 'yc compute zone			Show availability zones'
	@echo '261 - list			List availability zones'
#@echo 'get         Show information about the specified availability zone.'
	@echo ''
	@echo 'yc compute instance-group	Manage instance groups'
	@echo '271 - list			List instance groups'
#@echo 'get                   Show information about the specified instance group'
#@echo 'create                Create an instance group'
#@echo 'update                Update the specified instance group'
#@echo 'stop                  Stop the specified instance group'
#@echo 'start                 Start the specified instance group'
#@echo 'add-metadata          Add or update metadata for instance template of the specified instance group'
#@echo 'remove-metadata       Remove keys from metadata for instance template of the specified instance group'
#@echo 'add-labels            Add labels to specified instance group'
#@echo 'remove-labels         Remove labels from specified instance group'
#@echo 'delete                Delete the specified instance group'
#@echo 'list-instances        List instances of the specified instance group'
#@echo 'stop-instances        Stop instances of the specified instance group'
#@echo 'delete-instances      Delete instances of the specified instance group'
#@echo 'list-operations       List operations for the specified instance group'
#@echo 'list-logs             List logs for the specified instance group'
#@echo 'list-access-bindings  List access bindings for the specified instance group'
#@echo 'set-access-bindings   Set access bindings for the specified instance group and delete all existing access bindings if there were any'
#@echo 'add-access-binding    Add access binding for the specified instance group'
#@echo 'remove-access-binding Remove access binding for the specified instance group'
	@echo ''
	@echo 'yc compute placement-group	Manage placement groups'
	@echo '281 - list			List placement groups'
#@echo 'get             Show information about the specified placement group'
#@echo 'create          Create a placement group'
#@echo 'update          Update the specified placement group'
#@echo 'add-labels      Add labels to the specified placement group'
#@echo 'remove-labels   Remove labels from the specified placement group'
#@echo 'delete          Delete the specified placement group'
#@echo 'list-instances  List instances of the specified placement group'
#@echo 'list-operations List operations for the specified placement group'
	@echo ''
	@echo 'yc compute host-type		Show available host types'
	@echo '291 - list			List host types'
#@echo 'get         Show information about the specified host type'
	@echo ''
	@echo 'yc compute host-group		Manage host groups'
	@echo '2101 - list			List host groups'
#@echo 'get             Show information about the specified host group'
#@echo 'create          Create a host group'
#@echo 'update          Update the specified host group'
#@echo 'add-labels      Add labels to the specified host group'
#@echo 'remove-labels   Remove labels from the specified host group'
#@echo 'delete          Delete the specified host group'
#@echo 'list-hosts      List hosts of the specified host group'
#@echo 'list-instances  List instances of the specified host group'
#@echo 'list-operations List operations for the specified host group'
	@echo ''
	@echo 'yc compute disk-placement-group	Manage disk placement groups'
	@echo '2111 - list	            	List disk placement groups'
#@echo 'get             Show information about the specified disk placement group'
#@echo 'create          Create a disk placement group'
#@echo 'update          Update the specified disk placement group'
#@echo 'add-labels      Add labels to the specified disk placement group'
#@echo 'remove-labels   Remove labels from the specified disk placement group'
#@echo 'delete          Delete the specified disk placement group'
#@echo 'list-disks      List disks of the specified disk placement group'
#@echo 'list-operations List operations for the specified disk placement group'
	@echo ''
	@echo 'yc compute filesystem		Manage filesystems'
	@echo '2121 - list			List filesystems'
#@echo 'get             Show information about the specified filesystem'
#@echo 'list-operations List operations for the specified filesystem'
#@echo 'create          Create a filesystem'
#@echo 'delete          Delete the specified filesystem'
#@echo 'update          Update the specified filesystem'
#@echo 'resize          Resize the specified filesystem'
#@echo 'add-labels      Add labels to specified filesystem'
#@echo 'remove-labels   Remove labels from specified filesystem'
	@echo ''

#==============#
# compute exec #
#==============#
instance-list: 211
211:
	yc compute instance list
221:
	yc compute disk list
231:
	yc compute disk-type list
241:
	yc compute image list
251:
	yc compute snapshot list
261:
	yc compute zone list
271:
	yc compute instance-group list
281:
	yc compute placement-group list
291:
	yc compute host-type list
2101:
	yc compute host-group list
2111:
	yc compute disk-placement-group list
2121:
	yc compute filesystem list

instance-create: 212
212:
	yc compute instance create --name $(INSTANCE-NAME-1) \
  		--hostname $(INSTANCE-NAME-1) \
  		--zone ru-central1-a \
  		--create-boot-disk image-family=ubuntu-2004-lts,size=30,type=network-nvme \
  		--image-folder-id standard-images \
  		--memory 4 --cores 2 --core-fraction 100 \
  		--network-interface subnet-name=my-subnet-1,nat-ip-version=ipv4
#--async 
	yc compute instance create --name $(INSTANCE-NAME-2) \
		--hostname $(INSTANCE-NAME-2) \
		--zone ru-central1-a \
		--create-boot-disk image-family=ubuntu-2004-lts,size=30,type=network-nvme \
		--image-folder-id standard-images \
		--memory 4 --cores 2 --core-fraction 100 \
		--network-interface subnet-name=my-subnet-2,nat-ip-version=ipv4
#--async 
	yc compute instance create --name $(INSTANCE-NAME-3) \
		--hostname $(INSTANCE-NAME-3) \
		--zone ru-central1-a \
		--create-boot-disk image-family=ubuntu-2004-lts,size=30,type=network-nvme \
		--image-folder-id standard-images \
		--memory 4 --cores 2 --core-fraction 100 \
		--network-interface subnet-name=my-subnet-3,nat-ip-version=ipv4
#--async 

instance-delete: 213
213:
	-yc compute instance delete $(INSTANCE-NAME-1)
	-yc compute instance delete $(INSTANCE-NAME-2)
	-yc compute instance delete $(INSTANCE-NAME-3)

#===========#
# tmpl help #
#===========#
#===========#
# tmpl exec #
#===========#

c: create-all
create-all: create-vpc create-compute
create-vpc: network-create network-list subnet-create subnet-list
create-compute: instance-create instance-list

d: delete-all
delete-all: delete-compute delete-vpc
delete-compute: instance-delete instance-list
delete-vpc: subnet-delete subnet-list network-delete network-list