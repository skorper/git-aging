# Configuration file for git test

################################################################################
# General Test Configuration Parameters

test_name=mod_test
total_pulls=800
pulls_per_grep=25
gc_on=False
keep_traces=False
clear_cache=True
grep_random=8TCg8BVMrUz4xoaU
repos='https://github.com/spring-projects/spring-framework.git','https://github.com/swagger-api/swagger-core.git','https://github.com/google/guava.git','https://github.com/hibernate/hibernate-orm.git','https://github.com/google/gson.git','https://github.com/square/retrofit.git','https://github.com/pallets/flask.git','https://github.com/square/okhttp.git','https://github.com/google/protobuf.git'
################################################################################
# System Parameters

user=root:root

################################################################################
# Profiles
# set mntpnt to '' to disable in the test

case "$profile" in
	aged)
		partition=/dev/sdb1
		mntpnt=/mnt/research
		fs_type=btrfs
		# ext4 only
		datastore=agedstore 
		;;
	
	clean)
		partition=/dev/sdb2
		mntpnt=/mnt/clean
		fs_type=btrfs
		# ext4 only
		datastore=cleanstore
		;;

	cleaner)
		partition=/dev/sdb3
		mntpnt=''
		fs_type=btrfs
		# ext4 btrfs
		datastore=cleanerstore
		;;

	
	*)
		echo "Unknown profile $profile"
		exit 1
		;;
esac
	
################################################################################
# betrfs Specific Parameters
# --since only one betrfs filesystem can be mounted at a time, these need not be
# --duplicated as above

dummy_file=dummy.dev
dummy_dev=/dev/loop0
module=/home/conway/ft-index/filesystem/ftfs.ko
circle_size=128
