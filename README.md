
# 🛒 E-Commerce SQL Project (PostgreSQL)

This project simulates a basic e-commerce database using **PostgreSQL**, including **7 relational tables**, **foreign key constraints**, and **15 SQL queries** categorized as **Basic**, **Intermediate**, and **Advanced**.

---

## 📂 Dataset Overview

| Table Name       | Description                                  |
|------------------|----------------------------------------------|
| customers        | Customer information                         |
| suppliers        | Product suppliers (not yet linked to products) |
| products         | Product details                              |
| orders           | Customer orders                              |
| order_details    | Products within each order                   |
| payments         | Payment info per order                       |
| reviews          | Customer reviews on products                 |

---

## 📌 Project Goals

- Learn database design using PostgreSQL.
- Understand relationships using **foreign keys**.
- Practice SQL queries (from beginner to advanced).
- Import data using **CSV files**.

---

## 🛠️ How to Run This Project

### 1. Create the Tables

Use the provided SQL script (`schema.sql`) to create all the tables with foreign keys.

### 2. Import the CSV Data

Use PostgreSQL’s `COPY` command:

```sql
COPY customers FROM '/your/path/customers.csv' DELIMITER ',' CSV HEADER;
-- Repeat for all 7 files
```

### 3. Run the Queries

Use `queries.sql` or run the 15 SQL queries manually to test your understanding.

---

## 🧪 SQL Query Tasks

### ✅ Basic (1–5)
- Customers from Chittagong
- Electronics category products
- Orders by a specific customer
- Product count by category
- Total number of orders

### 🟡 Intermediate (6–10)
- Total quantity sold by product
- Customers with low ratings
- Orders paid with cash
- Average payment amount
- Top 3 cities by customer count

### 🔴 Advanced (11–15)
- Products never ordered
- Highest spending customer
- Average product ratings
- Total price (price × quantity) per order item
- Customers with more than 2 orders

---

## 🔗 Files Included

| File Name          | Purpose                  |
|--------------------|--------------------------|
| `customers.csv`    | Customer data            |
| `products.csv`     | Product list             |
| `orders.csv`       | Order info               |
| `order_details.csv`| Items in each order      |
| `payments.csv`     | Payment amounts          |
| `reviews.csv`      | Product ratings & reviews|
| `suppliers.csv`    | Supplier information     |
| `schema.sql`       | Table creation script    |
| `queries.sql`      | 15 SQL tasks with solutions |

---

## 👨‍💻 Author

**Rakibul Islam**  
[GitHub Profile](https://github.com/rir-rakib)

---

## 📜 License

Free to use for learning and personal projects.
