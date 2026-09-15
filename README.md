# PostgreSQL — From Zero to Advanced

A complete, hands-on PostgreSQL learning repository organized into progressive parts — from the absolute basics to advanced real-world patterns.

---

## 📁 Repository Structure

```
postgresql/
├── part1/                                    # Fundamentals
│   ├── 01_first_database.sql                 # Create & drop a database
│   ├── 02_first_schema.sql                   # Schemas and extensions (pgcrypto)
│   ├── 03_first_table.sql                    # First table with INSERT & SELECT
│   ├── 04_data_types.sql                     # Common data types (VARCHAR, DECIMAL, BOOLEAN, TIMESTAMP)
│   ├── 05_other_data_types.sql               # Advanced types (UUID, JSONB)
│   ├── 06_null_empty_string_zero.sql         # NULL vs empty string vs zero
│   ├── 07_constraints.sql                    # NOT NULL, UNIQUE, DEFAULT, CHECK
│   └── 08_primary_keys.sql                   # SERIAL PRIMARY KEY & uniqueness enforcement
│
├── part2/                                    # Querying & DML
│   ├── 01_sql_concepts_base_file.sql         # Base table setup & seed data (products)
│   ├── 02_insert_multiple_rows.sql           # Bulk INSERT statements
│   ├── 03_alias.sql                          # Column & table aliases
│   ├── 04_where_basic_filter.sql             # WHERE clause fundamentals
│   ├── 05_and_or_not_filter.sql              # Combining filters with AND / OR / NOT
│   ├── 06_like_alike.sql                     # Pattern matching with LIKE & ILIKE
│   ├── 07_in_not_in_between.sql              # IN, NOT IN, BETWEEN operators
│   ├── 08_order_by.sql                       # Sorting results with ORDER BY
│   ├── 09_limit_offset_pagination.sql        # Pagination using LIMIT & OFFSET
│   ├── 10_update_single_row.sql              # UPDATE a single record
│   ├── 11_update_multiple_row.sql            # UPDATE multiple records at once
│   ├── 12_delete_row.sql                     # DELETE with conditions
│   └── 13_returning.sql                      # RETURNING clause after INSERT/UPDATE/DELETE
│
└── part3/                                    # Relationships, Joins & Advanced Topics
    ├── 01_reset_and_seed_relationships.sql   # Multi-table schema (users, posts, tags, comments) & seed data
    ├── 02_foreign_key.sql                    # Foreign key concept & inspection
    ├── 03_one_to_many_relationship.sql       # One-to-many pattern (user → posts)
    ├── 04_inner_join.sql                     # INNER JOIN across related tables
    ├── 05_left_join.sql                      # LEFT JOIN to include unmatched rows
    ├── 06_many_to_many.sql                   # Many-to-many via junction table (post_tags)
    ├── 07_table_aliases.sql                  # Table aliases in JOIN queries
    ├── 08_aggregate.sql                      # Aggregate functions: COUNT, AVG, MIN, MAX, SUM
    ├── 09_group_by.sql                       # GROUP BY with aggregates
    ├── 10_count_distinct.sql                 # COUNT DISTINCT for unique values
    ├── 11_sub_queries.sql                    # Subqueries in WHERE clauses
    ├── 12_indexing.sql                       # CREATE INDEX & composite indexes for performance
    └── 13_transaction.sql                    # BEGIN / ROLLBACK / COMMIT transaction control
```

---

## 🗂️ Parts Overview

### Part 1 — Fundamentals
> Core building blocks every PostgreSQL developer must know.

- Creating databases, schemas, and extensions
- Defining tables with the right data types
- Inserting and querying data
- Understanding `NULL`, empty strings, and `0`
- Applying constraints: `NOT NULL`, `UNIQUE`, `DEFAULT`, `CHECK`
- Using `SERIAL PRIMARY KEY` for auto-incrementing IDs

### Part 2 — Querying & DML
> Practical SQL for reading, filtering, sorting, and modifying data.

- Inserting single and multiple rows
- Column and table aliases for readable queries
- Filtering with `WHERE`, `AND`, `OR`, `NOT`
- Pattern matching with `LIKE` and `ILIKE`
- Set membership with `IN`, `NOT IN`, `BETWEEN`
- Sorting with `ORDER BY` and paginating with `LIMIT`/`OFFSET`
- Updating single and multiple rows
- Deleting rows safely with conditions
- Using the `RETURNING` clause to get results from write operations

### Part 3 — Relationships, Joins & Advanced Topics
> Relational design, multi-table queries, aggregation, and performance.

- Designing multi-table schemas with foreign keys
- One-to-many and many-to-many relationships
- `INNER JOIN` and `LEFT JOIN` for combining tables
- Many-to-many queries via junction tables
- Aggregate functions: `COUNT`, `AVG`, `MIN`, `MAX`, `SUM`
- Grouping results with `GROUP BY` and `COUNT DISTINCT`
- Writing subqueries in `WHERE` clauses
- Creating single-column and composite indexes for query performance
- Transaction control with `BEGIN`, `ROLLBACK`, and `COMMIT`

---

## 🚀 Getting Started

### Prerequisites
- PostgreSQL 13+
- `psql` CLI

### Running the Scripts

Files within each part are numbered and should be run **in order**:

```bash
# Part 1 — create the database first, then run individual scripts
psql -U postgres -f part1/01_first_database.sql

# Part 2 — run the base file first to create & seed the products table
psql -U postgres -d part2_advanced_topics -f part2/01_sql_concepts_base_file.sql

# Part 3 — run the seed file first to set up all relational tables
psql -U postgres -d part3_advanced_topics -f part3/01_reset_and_seed_relationships.sql
```

> **Note:** Always run the `01_*` seed/setup file first within each part before running subsequent scripts.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| PostgreSQL 13+ | Database engine |
| psql | CLI for running SQL scripts |
| pgcrypto | Extension for UUID generation (`gen_random_uuid()`) |

---

## 📌 Notes

- Each `.sql` file is self-contained and focused on a single concept.
- Files are designed to be **re-runnable** — they `DROP` tables/databases before recreating them.
- Comments inside each file explain the *why*, not just the *what*.

---

## 📜 License

MIT — feel free to use these scripts for learning, teaching, or reference.
