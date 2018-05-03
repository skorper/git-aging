# Multi-Git Aging
Aging Scripts using Git Pull method
-----------------------------------
From [BetrFS benchmarks.](https://github.com/oscarlab/betrfs/tree/master/benchmarks/aging/git) This is a modification of that code, and except for the modifications is their original work. 

### How to original run test:
0. clone linux kernel repo
1. cp defconfig.sh config.sh
2. Edit config.sh with fs info and test parameters
3. Run "sudo ./first_time_setup.sh" if the test has not been run before.
4. Run "sudo -E python test.py"

### How to run multi-git test:
1. cp multiconfig.sh config.sh
2. In config.sh under 'repos' add the appropriate git repositories
	- It contains 9 repositories already, this doesn't need to be changed unless desired
3. Run "sudo ./first_time_setup.sh" if the test has not been run before.
4. Run "sudo -E python multigit.py"

Original git aging vs multi-git aging

![alt text](https://i.imgur.com/v2RnDMC.png)
