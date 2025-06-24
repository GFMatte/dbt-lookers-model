# dbt-lookers-model

This repository contains a **dbt project** for transforming and modeling data from the **Looker Ecommerce** dataset. The goal is to build a reliable and analytics-ready data model for reporting, product insights, and customer behavior analysis.

---

## 📦 Project Overview

This project follows a standard **dbt structure**, using raw source data to build well-documented staging and mart-level models.

### 🧩 Key Sources
- `users.csv`
- `events.csv`
- `inventory_items.csv`
- `order_items.csv`
- `orders.csv`
- `products.csv`

These are loaded as seeds or external sources and transformed through layered dbt models.

---

## 🗺️ Model Structure

### `staging/`
Cleans and standardizes raw source data.

- `stg_users`
- `stg_events`
- `stg_orders`
- `stg_order_items`
- `stg_products`

### `marts/`
Joins and aggregates data for business use ca
