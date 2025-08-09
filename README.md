# EDC-bank-management-system



# EDC Metadata Sample Database – Phase 1

## Overview
This repository is part of an **Enterprise Data Catalog (EDC)** project using **Informatica**.  
The current phase (**Phase 1**) focuses on creating a **sample database schema** to be scanned by EDC for metadata discovery purposes.  
The data is **synthetic** and for **testing/demo** only – not production data.

## Purpose
- Prepare the source database structure for EDC metadata scanning.
- Provide a realistic schema for testing connectivity and profiling in Informatica EDC.
- Support future phases where sample data and ETL mappings will be added.

## Tools & Technologies
- **Oracle Database** (DDL scripts for schema creation)
- **SQL** (Table creation scripts)
- **Informatica EDC** (for metadata cataloging)

## Contents
- `create_schema.sql` → Creates all required tables for the banking domain simulation (Accounts, Customers, Loans, etc.).
- (Future) `insert_sample_data.sql` → Will insert sample records for testing data profiling in EDC.
