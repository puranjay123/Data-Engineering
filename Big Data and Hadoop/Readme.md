
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
## Namespaces : One of the content stored in FSImage,HDFS path to datablocks




* When active namme node is DOwn standby Name Node will automatically be new active namenode

#### Zookeeper:
It is a coordinator whcih check health status of active name node 

* if the zookeper found the particular node is going down it will allocate a different resource as actie node on the basis of resources



![Frame 1 (2)](https://user-images.githubusercontent.com/55429956/225545338-2e614ee9-d4bb-4cd6-9d41-b4001e7c3f75.png)


















