yum install hadoop-0.20 hadoop-0.20-native -y
yum install hadoop-0.20-datanode -y
yum install hadoop-0.20-tasktracker -y
cd /var/opt
#/var/opt/cdh3/cluster/dfs/dn
sudo mkdir -p cdh3/cluster/dfs/dn
sudo mkdir -p cdh3/cluster/mapred/local
sudo chown -R root:hadoop cdh3
sudo chown -R hdfs:hadoop cdh3/cluster/dfs
sudo chown -R mapred:hadoop cdh3/cluster/mapred
sudo chmod -R 700 cdh3/cluster/dfs
sudo chmod -R 755 cdh3/cluster/mapred
sudo mkdir -p cdh3/cluster/dfs/nn

service hadoop-0.20-datanode start
service hadoop-0.20-tasktracker start

