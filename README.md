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