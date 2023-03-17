
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










