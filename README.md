📅# SQL-Data-Warehouse-Project
A layered data warehouse architecture using the Medallion model (Bronze, Silver, Gold) that integrates SQL, CRM, ERP, and CSV sources. It supports ETL, data cleaning, transformation, and delivers business-ready views for BI, SQL queries, and ML.

#👧🏽 About me
I’m Janhavi, an aspiring data professional with a passion for analytics. This is my first hands-on project in the data warehousing domain, built with the help of Bara Khatib Salkini’s Udemy course. I’m excited to keep learning and building scalable data solutions.

#⚙️ General Principles
Use snake_case with lowercase letters and underscores (_) to separate words.
All names must be in English.
Avoid using SQL reserved words as object names.

#🗃️ Table Naming Conventions
🥉 -- Bronze Rules --
Format: <sourcesystem>_<entity>
Use the source system name and retain the original table name.
Example: crm_customer_info → Customer info from CRM system.

🥈 -- Silver Rules --
Format: <sourcesystem>_<entity>
Same as Bronze: retain original names with source system prefix.
Example: erp_order_details → Order details from ERP system.

🥇 -- Gold Rules --
Format: <category>_<entity>
Use business-aligned names with category prefixes:
dim_ → Dimension tables
fact_ → Fact tables
agg_ → Aggregated tables

Examples:
dim_customers → Customer dimension
fact_sales → Sales fact table
agg_sales_monthly → Monthly sales aggregation

#🧱 Column Naming Conventions
🔑 -- Surrogate Keys --
Format: <table_name>_key
Used for primary keys in dimension tables.
Example: customer_key in dim_customers

🛠️ -- Technical Columns --
Format: dwh_<column_name>
Used for system-generated metadata.
Example: dwh_load_date → Load timestamp

#🧪 Stored Procedure Naming Conventions
Format: load_<layer>
Used for loading data into specific layers.
Examples:
load_bronze → Load raw data
load_silver → Load cleaned data
load_gold → Load business-ready views
