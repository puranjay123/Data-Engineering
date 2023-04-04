
## Informatica Power Center
* "Database neutral" Will comunitcate with any database
* Powerful data transformations convert one application's data to anaother's format
* Metadata and Lineage Analysis(Reports and Metadata Manager)


What is a decision support system (DSS)?
A decision support system (DSS) is a computer program application used to improve a company's decision-making capabilities. It analyzes large amounts of data and presents an organization with the best possible options available.

* Granularity: The level you want te dataware house to to do the transaction. according to your will.
    Time level  Granularity.
    Space level Granularity.
    
    Log files are generated in case of online(client server achitrurture) for example while in whatsapp logs files are generated, whike in case of mS it will not based o client serever and its offline so there is no need of log files to create.

* select statemenet gendrate 3 types of statement internally
*    * Parsing
*    * Execustion
*    * Fetching

write a query
after it goes for parsing it takes help for metadata




# Informatica

Database is an organized collection of structured data stired in a computer system so that data can be easily accessed and updated or deleted.

[]()

Metadata is "**data that provides information about other data**
", but not the content of the data, such as the text of a message or the image itself. There are many distinct types of metadata, including: Descriptive metadata – the descriptive information about a resource. It is used for discovery and identification.

Data model is logical implemenattion

data Model refers to database

dimension model refers to data ware house

Types of Tables:

- fact table : first phase of analysis of what you do
    - summarized information of storage  that is stored in star schema under data mart
    - A data mart can consist of 1 star schema or multiple star schemas.
    - 
- Dimension table: Dimension are descriptive in nature that is the part of star schema
    - 

granularity: The level of Analysis[xampel : in hyderabad what is sales happend in last 6 months and total reveue generated]

how the data is collecting into my fact table

after that manipulation is done

I am an AI language model and don't have a name, but you can refer to me as the Notion assistant. How can I assist you today?

A dimension table is a descriptive table in a star schema. It contains attributes related to the facts in a fact table, such as time, location, and product. Dimension tables are used to filter and group data in a data warehouse.

Transformation is the process of converting data from its original form into a format that can be loaded into a data warehouse or used for analysis. This can involve cleaning and formatting the data, as well as aggregating and summarizing it to create more meaningful insights. Transformation is a key step in the ETL (extract, transform, load) process used to move data from source systems into a data warehouse.

Mapping is the process of defining the relationships between tables and columns in a data warehouse. This involves identifying which columns in a fact table correspond to which columns in dimension tables, and how they should be joined together. Mapping is a critical step in designing a data warehouse schema, as it determines how data will be queried and analyzed.

- mapping is the set of intsructi

Date formats can be used in data warehouses, but it's important to ensure that the format is consistent across all data sources and that it can be easily parsed and queried. In some cases, it may be necessary to transform date formats to a standard format or to create separate date fields for different parts of the date (e.g. year, month, day) to enable more granular analysis.

what is granularity

Granularity refers to the level of detail or analysis in a dataset. It can refer to the level of aggregation (e.g. monthly, daily, hourly) or the level of specificity (e.g. product, customer, transaction) in the data. The choice of granularity can affect the insights that can be derived from the data and the performance of queries and analyses. It's important to choose the right level of granularity for the specific use case and to ensure that it is consistent across all data sources.
