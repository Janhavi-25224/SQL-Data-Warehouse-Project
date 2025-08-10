# 📅 SQL Data Warehouse Project

> **A layered data warehouse architecture using the Medallion model** — **Bronze**, **Silver**, **Gold**  
Integrates **SQL**, **CRM**, **ERP**, and **CSV** sources. Supports **ETL**, data cleaning, transformation, and delivers business-ready views for **BI**, **SQL queries**, and **ML**.

---

## 👧🏽 About Me
Hi, I’m **Janhavi** — an aspiring **data professional** with a passion for analytics.  
This is my first **hands-on data warehousing project**, inspired by **Bara Khatib Salkini’s Udemy course**.  
💡 *I’m excited to keep learning and building scalable data solutions!*

---

## ⚙️ General Principles
✔ Use `snake_case` with lowercase letters and underscores (`_`)  
✔ All names must be **in English**  
✔ Avoid using **SQL reserved words** as object names  

---

## 🗃️ Table Naming Conventions

### 🥉 Bronze Layer
| Rule | Example |
|------|---------|
| Format: `<sourcesystem>_<entity>` | `crm_customer_info` → Customer info from CRM |

### 🥈 Silver Layer
| Rule | Example |
|------|---------|
| Same as Bronze: `<sourcesystem>_<entity>` | `erp_order_details` → Order details from ERP |

### 🥇 Gold Layer
| Prefix | Description | Example |
|--------|-------------|---------|
| `dim_` | Dimension tables | `dim_customers` |
| `fact_` | Fact tables | `fact_sales` |
| `agg_` | Aggregated tables | `agg_sales_monthly` |

---

## 🧱 Column Naming Conventions

### 🔑 Surrogate Keys
- **Format**: `<table_name>_key`  
- Example: `customer_key` in `dim_customers`

### 🛠️ Technical Columns
- **Format**: `dwh_<column_name>`  
- Example: `dwh_load_date` → Load timestamp

---

## 🧪 Stored Procedure Naming Conventions
| Format | Purpose | Example |
|--------|---------|---------|
| `load_bronze` | Load raw data | ✅ |
| `load_silver` | Load cleaned data | ✅ |
| `load_gold` | Load business-ready views | ✅ |

---

