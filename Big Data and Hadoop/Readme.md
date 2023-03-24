running  the services

`start-dfs.sh`
`start-yarn.sh`
# Big Data
Big data is the data that has high volume, variety, velocity, veracity and value.

## structured Data:
Data will be following single format,with data arranged in a tabular format
## semi structured
Data will have soem format but there is no common format.
* JSON : KEY,VALUE
* XML:tags
* CSV
* Big data file formats: Parquet,avro,ORC

## Unstructured data: 
there are no strcuturess e.g: Audio,video,Images,Flat FIles,signals,PDF,WORD
![WhatsApp Image 2023-03-15 at 5 03 45 PM](https://user-images.githubusercontent.com/55429956/225297627-a7d616fd-24d4-48d0-b442-98ad7daab8e4.jpeg)
 ## Big Data Tools
##1) Data Ingestion: 
    * Migration data from one stored location to another location.
   ### a) SQOOP:[SQL to Hadoop]:
    *  Migrating the data from SQL from your structured storage to Hadoop [HDFS(hadoop dstributed file system)](storage)
    * It is a bidirectional tool
  ![Untitled](https://user-images.githubusercontent.com/55429956/225299165-7eadbe97-3cb2-4d54-9d76-ccf6846b0624.png)
  we can do it Other way also 
  MySQL,SQLlite,orcale DB etc.
  Note: It is only for batch
### b) Flume
stream data means the source will be live it means we are collecting live data and processing it
   - If you want ingest event data such as streaming data ,sensor data or log files then you can use flume
    * flume will having config file {flume.config->source,sink,channel} it has all the configuration in it
 * Kafka: It works on broker
 ## Data collector layer: It is a temporray location where it used to store data before going to data storage layer
 kafka is used to store memory for few days[ it is a tool which provide temporary storage for data]
 
 
 # Data storage layer
 mostly it has batch processing
 
 ## bacth pprocessing [HDFs data storage]: it is a computing stategy that involves processing data on large datasets. This is typically ideal for non time sesnitive work that operates on very large data sets
 * it is time dependent
 * batch processing tools: Hive, mapreduce[programming methodolgy],spark,apache PIG
 
 ## streamprocessing[spark]:
 stream process processing the data on live source . we do processing in real time 
 it does not depend on time it do it in realtime.
 * tools used for streamprocessing: spark streaming
 ## Hybrid processing:
 It is a mixture of bothe real time and batch processing
 
 # data Query Layer
 all of the queries are applied on permamnent storage it is batch processing
 when tool is not dependent on permamenet storage then it is streamprcoessing
 
 ### SparkSQL,Hive,amazon red shift tools - These are Query Tools
 
 # Analytic engine Lyaer
 * stasticcal Analytics
 * semantic analyis
 * predictive modelling
 * text analytics

## languages used by engine layer for analytics
* Python
* Java
* Scala
* [ML Libraries] proviided by spark
<!-- * ![WhatsApp Image 2023-03-15 at 5 47 44 PM](https://user-images.githubusercontent.com/55429956/225307175-5cbf1171-a5cd-4c15-919f-d32b2782cc1d.jpeg)

![WhatsApp Image 2023-03-15 at 5 47 44 PM](https://user-images.githubusercontent.com/55429956/225306822-1d775daf-f021-4f6e-96f0-f051cf9b67e4.jpeg) -->


### Note : SPark is one stop solution for all of data needs.

## Data visulization Layer
Real time dashboard Tableau, intelligent agents recommendations
 
![WhatsApp Image 2023-03-15 at 5 46 10 PM](https://user-images.githubusercontent.com/55429956/225306527-36fe30ef-12ac-402a-960c-fa028ecbe96e.jpeg)


# hadoop is a framwork that allows distributed processing of large datasets across clusters of coomdity computers using simple programming models.
## Haddop chatcrerstics
* Scalable - Can follow both horizontal and vertical scaling
* Flexible - Can store huge data and decide to use it later
* Reliable - Stores copies of the data
* Economical

hadoop Core COmponents:
1) Hadoop Distributed File System(HDFS) [Storage]
2) yet anaother resoucre negotiator(YARN)
3) Map Reduce(programming methodolog)

## Core data processing

 ## SPARK SQL and Data Frames
 * data frame programming abstraction
 * complex analytics with SQL
 
 ## SPARK Streaming
 * process real time data 
 * analyze streaming and historical data
 * use similar code for batch data and real time data

## ML Lib
* provides scalable machine learning
* Works in memory[100 time sfaster than map reduce]

## graphX
* graph computation engine bult on top of spark that eneable working with graph structured data at scale.
* Intoduces a new graph abstraction,the directed multigraph.
* Useful for visuzliaing graphs for social networks.

## Pyspark is written in Scala
pyspark in python wrapper around spark core
## Hadoop

**hadoop is a distributed cluster

* It was the big data platform
* Compute system and storage system closely integrated

![image](https://user-images.githubusercontent.com/55429956/225487138-b8d6c32f-6b4f-473e-b03c-aead9b06a7e6.png)

## COmponenetts oof Hadoop ecosystem
### OOZIE - It makes the JobFlow
OOzie is a workflow or coordination system used to manage the hadoop jobs

## Airlfow : also used for making JObFLOW[but it uses Python]


->Name node(master service)
* name node is a mster service that stores meta data of each data blocks(location,size,no. of replicas,permission
Replicas = dfs.replica = 3(default)
replicas will be such way that no two same blocks are placd within same DataNode
HDFS manages DATA blocks in such a way that it is always highly Available.
``if we wll not have name nodes 
we will dont have condition name nodes run out of storage,avaialibilty``
Clutser --> Collection of racks

# HDFS Version 2:
![Frame 1 (1)](https://user-images.githubusercontent.com/55429956/225543695-20cb0f68-de8e-4e17-97c9-af6152cdeab0.png)

## Edit Logs:
Change in FSImage from last snapshot
## FS Image:
FSImage is point in time snapshot of hhdfs cluster
## Namespaces : One of the content stored in FSImage,HDFS path to datablocks/directroy




* When active namme node is DOwn standby Name Node will automatically be new active namenode

#### Zookeeper:
It is a coordinator whcih check health status of active name node 

* if the zookeper found the particular node is going down it will allocate a different resource as actie node on the basis of resources



![Frame 1 (2)](https://user-images.githubusercontent.com/55429956/225545338-2e614ee9-d4bb-4cd6-9d41-b4001e7c3f75.png)

## HDFS SNAPSHOT
* hadoop 2 adds support for file system snapshots. A snapshot is a point-in-tim image of the entire file system or a sub tree of a file system.
* Portection against user errors: An admin can set up a process to take snapshots peridocally. if a user accidently delete files, these can be restrored from the snapshot that contains file.
* 

## ** Question 1: Is hadoop good for processing small no. of large block size or large number of small block size?**
* HDFS uses large block size to store data,which generates less no. of namespaces resulting into burdon on Name Node.
* Large no. of small size blocks --> More metadata --> More resources required by name node

## ** Question 2: Can multiple clients request to perform. Write to HDFS at same time?**
* HDFC follows write once read many

## ** QUestoon 3: Namenode safemode **
* HDFS goes into read only mode. No clinet will be allowed to perform write or update.
* command :`HDFS dfs admin -safemode leave`.

## ** What is heartbeat in HDFS?
It is a signal which sent from datanode to namenode periodically to Namenode

## WHat is fsck in hadoop?
In Hadoop, fsck (file system check) is a command-line tool used to check the health and status of the Hadoop Distributed File System (HDFS). The fsck command inspects the HDFS filesystem metadata and checks for any inconsistencies or errors in the file system.

The fsck tool analyzes the following aspects of the HDFS:

Blocks: The tool checks the block reports from the DataNodes and verifies that the blocks are available and correctly replicated across the DataNodes.

Files: The tool checks the HDFS namespace for any missing, corrupted, or under-replicated files.

Snapshots: The tool checks the snapshots taken on the HDFS to ensure they are consistent and free from any errors.

Quotas: The tool checks the quota limits set on the HDFS directories to ensure they are not exceeded.

The fsck tool provides a report on the state of the HDFS, including the number of missing blocks, under-replicated blocks, and corrupted blocks. This information can be used to take corrective measures to fix any issues identified in the HDFS.

## what happends when a data nodes goes down to replicas of data blocks?
* WHen data nodes goes down new replicas of blocks present in data node wil be created,
* when the data node which was down is up again the newly create datablocks will automatically deleted.
* 
## How many blocks will be create for a file sze of 130 mb. What will be sizes of Datablocks?

The first block will be 128 MB in size
The second block will be 2 MB in size

## Hadoop types of Nodes
* Name node
* secondry name node
* data node 
* recource manager
* Node manager

# YARN[Yet anaother Resource Negotiator]


1) Job scheduler: It works as pure scheduler . It does not play any role in executing Job.
                * Allocate the resources to each Job.
                * Schedulers scheduler Job by following (Capacity,Fair,FIFO) (FAIR - it will average out the resources to all submit JOB)





# LINUX
* `cat filename.txt` - To display the contents of the file <br>
* `ls -R` - To dipslay the paths of the dircetrory <br>
* `cp ./test/filename.txt ./test/testdir1/testdir2/testdir3/` -  To copy the current file and paste it i the different directory `cp` command is used. <br>
* chmod permission filename/foldername
*       READ    -->  4
*       Write   -->  2
*       Execute -->  1
          chmod 7 4 1
              [user,group,others]

* `grep` command is used to search for a pattern in a the filenames grep `i` is used to remove case sentive files.

# Hadoop Commands linux
`put` command is used to copy the file into different directory

cat be replace the content
append command will add content within a file
r  - replication center it shows how many repliucass of existing file we have 
%Y - overall size
%o - block size
%y - date
%u - 
`hdfs dfs -stat %r /hdfs/dumyfile.txt`
hadoop fs -count -v /
fsck = file system check
 hadoop balancer - It is used to balance out everything in a cluster
 
 
 
 ## 20th March
 # MAP reduce
 when aggregate function is there there is reduce mapping required
 
 
## Maper Job +Recuder Job

![WhatsApp Image 2023-03-20 at 12 19 43 PM](https://user-images.githubusercontent.com/55429956/226267785-07fc15d7-439e-4123-914c-a6c519512f69.jpeg)



![WhatsApp Image 2023-03-20 at 12 19 44 PM](https://user-images.githubusercontent.com/55429956/226267789-40284e53-dd17-4901-bb61-f755245a4904.jpeg)



![WhatsApp Image 2023-03-20 at 12 19 44 PM (1)](https://user-images.githubusercontent.com/55429956/226267794-894e5521-012d-440a-ae48-0da98806a33b.jpeg) <br>
Mapreduce process closer look


![WhatsApp Image 2023-03-20 at 12 27 23 PM](https://user-images.githubusercontent.com/55429956/226269558-f8546bcc-50d8-45fe-b16f-6e46532e3b4c.jpeg)
# SQOOP Commands:
----------------------
command:mysql -u root -p <press enter>
 
 ## 2. Display all DB:
 -------- 
 `show databases;`
 
 ## 3. Select DB to create Table:
 `use dbname;`
 
 ## 4. create a new table:
 `create table table_name(schemas of table with datatype,PRIMARY KEY);`
 create table if not exists emptable(empid int, empname varchar(50),salary int,department varchar(60),designation varchar(60));
 
 ## 5. Insert values into table
 ------------
 syntax:
 INSERT INTO

 
 ## steps in sqoop EXPORT
 ### 3)Create a new dir i HDFS and copy file to HDFS
 -------------------------------
 hdfs dfs -mkdir /Employee
 hdfs dfs -put /hpme/hadoop/Downloads/Employee.csv /Employee
 ### 4)Switch to new terminal:
 sqoop export -connect jdbc:mysql://localhost/databasename --username root --password hadoop@123 -- export-dir /employee.employee.csv --table employee --input-fields-terminated-by ',' --input-lines-terminated-by '\n' --m 1





# 21 march
 ##SQOOP EVAL:
 Running EVAL will return query o/p from database table
 ### Eval: In eval you dont have to mention anythirng related to sqoop eval and we don't have to mention condition [it is only mentoned if we use import}
 
 `sqoop eval --connect jdbc:mysql://localhost/amitdb --username root --password hadoop@123 --query "SELECT * from emptable where salary>150000" `
 
 
 
 # Hive
 ##kill hive
 ``kill 6414``
 Activate the hive through terminal by typing 
 `hive`
 
 ### create a database in Hive
 `create database if not exists hivedb;`
 
 `use hivedb;`
  ## There are 3 Types of tables in HIVE
   * Managed Table
   * External Table
   * Temp Table
 `create table if not exists employee(empid int,firstname varchar(60),lastname varchar(60),age int,gender varchar(30),department varchar(60),country varchar(60)`

 
 
 
 
 
# Load Data  
 `load data local inpath 'home/hadoop/Downloads/EMployee.csv`
 `overwrite into table employee;`
 
 
 # Hive 
 Hive is a designed to enable easy data summarization,ad-hoc querying and analysis of large volumes of data. It provides SQL like whcih enables users to do ad-hoc querying,summarization and data analysis easily.
 
 ## Hive can also store the data inteself.
 * Data will be stored in a file to which we can run the query
 * hive storage is HDFS
 * it is used for performing distributed processing and data anlyiss.
 Apache hive features to provide Hive Query language(HQL)
 
 
## Defination hive
 * Hive tool is used for running ad-hoc queries(similar to SQL)
 * Hive uses default location to store files "/user/hive/warehouse"
       *[ This is the locatio where all DB,tables are stored]
       * This location can be accessed by other Data processing tools
 
 
![Frame 2 (1)](https://user-images.githubusercontent.com/55429956/227127975-f02ae372-d15f-4f92-a196-aeff1a694986.png)

 -> Hive queries will run as mapreduce Job(Mapper +Reducer+sort+reducer)
 
 Hive server2 architureture





![Frame 3](https://user-images.githubusercontent.com/55429956/227135063-3b4d6ef5-2977-48dc-8b30-4edc0ccd3905.png)


![WhatsApp Image 2023-03-23 at 1 08 52 PM](https://user-images.githubusercontent.com/55429956/227135325-e8f77fc3-bad2-4471-a6a9-625f1bb4662b.jpeg)

![WhatsApp Image 2023-03-23 at 1 08 54 PM](https://user-images.githubusercontent.com/55429956/227135328-2f9e2f92-d7b8-48ff-a8ba-33aa25947e6b.jpeg)
 
 metastore can have multiple components if we want to make new hive companent we have to delete the meta store and make a new matea store companent.
 
 Meta store is the comapnenest tahts troe sthe sustem caalog and metadata and about table,columsn,partitions and so on.


# Commands
  
{HADOOP HDFS ASSIGNMENT}
[BIG DATA ,LINUX COMMANDS]
 
 
Big Data (HDFS) Assignment
Problem Statement: Using Command line of HDFS, perform following tasks.
## a)	Create a directory /hadoop/hdfs/ in HDFS
`hdfs dfs -mkdir /user/Hadoop/hdfs/Puranjay_dir
hdfs dfs -ls /user/Hadoop/hdfs/`
 
 ![1](https://user-images.githubusercontent.com/55429956/227432286-f698fc1d-1a0a-48fc-8134-26e9639b685d.png)

b)	Create a temp directory in Hadoop. Run HDFS command to delete “temp” directory.

`Hdfs dfs -rm -r /user/Hadoop/temp
Hdfs dfs -ls /user/hadoop`
![2(delete)](https://user-images.githubusercontent.com/55429956/227432307-c88dc93f-9b92-4c3e-9563-73d6def7ad01.png)

 
c)	List all the files/directories for the given hdfs destination path.
`Hdfs dfs -ls /user/Hadoop/hdfs`
 ![3(list Directories)](https://user-images.githubusercontent.com/55429956/227432321-60155b44-e833-4846-9ec0-cc07aec9d326.png)

d)	Command that will list the directories in /hadoop folder.
 ![4](https://user-images.githubusercontent.com/55429956/227432654-0f35cce9-a839-4c73-a0d3-391647985811.png)

`Hdfs dfs -ls /user/hadoop`
 
e)	Command to list recursively all files in hadoop directory and all subdirectories in hadoop directory
 ![5](https://user-images.githubusercontent.com/55429956/227432680-bb5c94cd-b0d3-404c-9228-2423cfb6962d.png)

`Hdfs dfs -ls -R /user/hadoop`
 
f)	List all the files inside /hadoop/hdfs/ directory which starts with 'dir'.
 ![6 1](https://user-images.githubusercontent.com/55429956/227432689-b40e0128-3503-4e81-86f5-894760cbbdc7.png)

`Hdfs dfs -ls /hadoop |grep dir` 
  
g)	Create a temp.txt file. Copies this file from local file system to HDFS
 ![7](https://user-images.githubusercontent.com/55429956/227432709-add85c3d-6ca2-469c-a26e-882d396973a1.png)

 
`Hdfs dfs -copyFromLocal temp.txt .hadoop.dir
Nano /hdfs/dir
Nano /hdfs/dir/temp.txt
Hdfs dfs -ls /Hadoop/dir
Hdfs dfs -cat /Hadoop/dir/temp.txt`
 
h)	Copies the file from HDFS to local file system.
 ![8](https://user-images.githubusercontent.com/55429956/227432722-0b930dd4-4d37-47f0-9d88-181d496d5eba.png)

`Hdfs dfs -copyToLocal /Hadoop/temp1.txt /`
 
i)	Command to copy from local directory with the source being restricted to a local file reference.
 ![9](https://user-images.githubusercontent.com/55429956/227432730-6275bbe4-ed87-4ab6-a1a4-6757ec7625d0.png)

`Hdfs dfs -put temp.txt /hadoop`
 
j)	Command to copies to local directory with the source being restricted to a local file reference.
 ![10](https://user-images.githubusercontent.com/55429956/227432747-211dc9d2-33ef-4f68-b694-f680f793c179.png)

`Hdfs dfs -get /Hadoop/tempo.txt`
 
k)	Command to move from local directory source to Hadoop directory.
 ![11](https://user-images.githubusercontent.com/55429956/227432761-0dac22b5-6fc1-44d0-be68-61f31dd049a0.png)

`Hdfs dfs -put -f temp1.txt /hadoop`
 
l)	Deletes the directory and any content under it recursively.
 ![12](https://user-images.githubusercontent.com/55429956/227432795-79eec165-9a7b-4498-8f53-c31143a1d841.png)

`Hdfs dfs -rm -r /Hadoop/dir`
 
m)	List the files and show Format file sizes in a human-readable fashion.
 ![13](https://user-images.githubusercontent.com/55429956/227432812-657b08cb-e196-42ca-95f7-c29e4e8a7997.png)

`Hdfs dfs -ls -h /hadoop`
 
n)	Take a source file and outputs the file in text format on the terminal.
 ![14](https://user-images.githubusercontent.com/55429956/227432840-d99d518c-fbdd-4d3b-af25-9b51a9e71f58.png)

`Hdfs dfs -text /Hadoop/temp.txt
Hdfs dfs -cat /Hadoop/tempo.txt`
 
o)	Display the content of the HDFS file test on your /user/hadoop2 directory.
 ![15](https://user-images.githubusercontent.com/55429956/227433114-e7ad389b-6a39-425a-8d41-d5c4dfdc26cf.png)

`Hdfs dfs -put /home/Hadoop/tempo.txt /user/Hadoop/test
Hdfs dfs -cat /user/Hadoop/test/tempo.txt`
 
p)	Append the content of a local file test1 to a hdfs file test2.
 ![16 1](https://user-images.githubusercontent.com/55429956/227433137-95e33d4a-5ac7-4cab-9329-ec79bb296f9d.png)
![16 2](https://user-images.githubusercontent.com/55429956/227433142-effd8b00-3e50-4bcf-ae8c-06a8d8e0a96e.png)

`Hdfs dfs -appendToFile /home/Hadoop/temp.txt /user/Hadoop/test/tempo.txt`
 

 
q)	Show the capacity, free and used space of the filesystem
![17](https://user-images.githubusercontent.com/55429956/227433157-2b1fe9c6-56ea-4728-89e0-18c0458da25c.png)

`Hdfs dfs -df /`
 
r)	Shows the capacity, free and used space of the filesystem.  Add parameter Formats the sizes of files in a human-readable fashion.
 ![18](https://user-images.githubusercontent.com/55429956/227433177-fb4a6eec-1ed0-49cb-8eb7-297a9de266a3.png)

`hdfs -df -h /`
 
s)	Show the amount of space, in bytes, used by the files that match the specified file pattern.
 ![19](https://user-images.githubusercontent.com/55429956/227433192-dd6c5118-ea6a-44bc-bff6-fc57644c42c0.png)

`Hdfs dfs -du /user/Hadoop/h*`
 
t)	Show the amount of space, in bytes, used by the files that match the specified file pattern. Formats the sizes of files in a human-readable fashion.
![20](https://user-images.githubusercontent.com/55429956/227433211-79374c04-472f-48f4-8bdb-e291f99596ea.png)

`Hdfs dfs -du -h /user/*`
 
u)	Check the health of the Hadoop file system.
 ![21](https://user-images.githubusercontent.com/55429956/227433228-bad1e199-6cbc-41c6-920b-138f18a72f0e.png)

`Hdfs fsck`
 
v)	Command to turn off the safemode of Name Node.
 ![22](https://user-images.githubusercontent.com/55429956/227433234-3965b028-1b3b-4c95-874b-920d7b86a5eb.png)

`Hdfs dfsadmin -safemode leave`
 
w)	HDFS command to format NameNode.
 ![23](https://user-images.githubusercontent.com/55429956/227433248-841e4363-df96-4365-9933-1c149553a184.png)

`hdfs namenode -format`
 
x)	Create a file named hdfstest.txt and change it number of replications to 3.
 ![24](https://user-images.githubusercontent.com/55429956/227432609-f0aed146-88ef-44d3-bf23-ad90313d68c5.png)

`Hdfs dfs -touchz /user/Hadoop/hdfstest.txt
Hdfs dfs -setrep -R 3 /user/Hadoop/hdfstest.txt`
 
y)	Write command to display number of replicas for hdfstest.txt file.
 ![26](https://user-images.githubusercontent.com/55429956/227432588-454bca8c-f006-49e7-b12a-4b90db3520d2.png)

`Hdfs fsck /user/Hadoop/pk.txt -files -blocks -racks`
 
z)	Write command to Display the status of file “hdfstest.txt” like block size, filesize in bytes.
 ![25](https://user-images.githubusercontent.com/55429956/227432573-24e577d4-f822-4fe3-adbc-5262633f673a.png)

`hdfs dfs -stat “%o %s” /user/Hadoop/hdfstest.txt`

 
aa)	Write HDFS command to change file permission from 
 rw – r – r to rwx-rw-x for hdfstest.txt.

![27](https://user-images.githubusercontent.com/55429956/227432548-5c06b78c-a5be-4b40-820e-d4b859bcc95d.png)


`Hdfs dfs -chmod 775 /user/Hadoop/hdfstest.txt
Hdfs dfs -ls /user/hadoop`
 


 


