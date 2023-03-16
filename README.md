# Data-Engineering
Todo : hive 
        talend
        
Introduction to Datawarehouse


DWH is built by combining data from multiple sources(variety of data) and that support analytical reporting

charchterstics of DWH
* Subjeced-orienened
* time variant
* Integrated---[meta data is considered aas schema of the data]
* persitent and non -volatile

![WhatsApp Image 2023-03-13 at 3 25 58 PM](https://user-images.githubusercontent.com/55429956/224667953-116ea9d6-f51c-4037-ad6e-7376634e1220.jpeg)



Slicing and Dicing
1) Smaller View             1) Combining multiple smaller view
2) Filtering                2) To Zoom into multiple features
    
    
    Ingestion <br>
    exploration <br>
    prepare and train <br> 
    model and serve <br>
    
## fact vs Dimentional Tbale
_> A fact table contains measurments,Facts,Foreignkeys, to dimension Table. Fact Table is primary table in dimesnional table.
Dimensional Table: Companion Table to fact table that contains descriptive attributes ,to be used as query
* A dimensional table contains dimesion of fact table
* How dimensional table are joins-> Through foreign keys
* Dimensional Table can also contain one or more hierarichal relationships

![Frame 1](https://user-images.githubusercontent.com/55429956/224671916-cb67317a-36b3-40bd-a72c-dea2ae274741.png)


# Facts vs DImeniosnla Table:
### Keys:
3) primary Key us fact table is maped as foerign key to dimensional Table    3) Dimensional table has primary key column that
                                                                             
![Frame 1](https://user-images.githubusercontent.com/55429956/224672304-d05e3222-3123-40d1-8da2-8212c9cd1d30.png)
uniquely identifies each dimension

### Design:
4) defined by their grain or its most atomic level          4) Dimension able should be wordl






# Star schema vs Snowflake
  
Noramlization is present   ----------------                 No data noramizon is prent <br>
more data storeage is required --------------------                less storgage fiel s required <br>
in start schema the keys are in fact table -------------- in snowflake schema the keys are presnet in other dimesion as well <br>
Query execution should be less in star schema  ------------  query execution echema is more in snowflake shcema <br>


characterstics of SNow flake
snowflake uses smaller disk space
easier to implemet a dimension is added to the schema
more maintencance efforts are needed 


# Normalization in DBMS

Normialization s used to reduce data reduandcey

* Insert anaomiles
* updateing anaomlies
* Deletion anomalies

First Normal Form(1NF)
* Every attribute hold only an atomic(formaing a single unit) value.
* each records need to be unique record.

Second Normal Form(2NF)
* In the second normal form, all non-key attributes are fully functional 
  dependent on the primary key.
  
 third Normal Form(3NF)
 * A relation will be in #NF if it is 2NF and not  contain any transitive partial dependecy.
 X->Y
 y-> not X
 y->Z
 so X->Z then not 3NF
 
 Non prime atttribute us transitelively dependent on primary key
 
 # BCNF(boyce codd normal form)
 
 A given relation is said to be in its third normal form when it’s in 2NF but has no transitive partial dependency. Meaning, when no transitive dependency exists for the attributes that are non-prime, then the relation can be said to be in 3NF.
 
 # day 3[16th March]
 I have started course in linkedin learning APache spark by example
 
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
