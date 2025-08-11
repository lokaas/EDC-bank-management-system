-- ===============================================
-- Insert sample data for EDC (Oracle)
-- Tables: ACCOUNTS, ATMS, ATM_TRANSACTIONS, BRANCHES, CARDS,
--         CUSTOMERS, CUSTOMER_INVESTMENTS, EMPLOYEES,
--         INVESTMENT_PRODUCTS, LOANS, LOAN_PAYMENTS, TRANSACTIONS
-- ===============================================

-- 1) Branches
INSERT INTO Branches (branch_id, branch_code, branch_name, address, city, region, phone, manager_name, opening_date, branch_type, is_active) VALUES
(1, 'BR001', 'Cairo Main Branch', '123 Tahrir Square, Downtown', 'Cairo', 'Greater Cairo', '02-25123456', 'Ahmed Mohamed', DATE '2010-01-15', 'Main', 1);

INSERT INTO Branches (branch_id, branch_code, branch_name, address, city, region, phone, manager_name, opening_date, branch_type, is_active) VALUES
(2, 'BR002', 'Alexandria Branch', '45 Corniche Street', 'Alexandria', 'Alexandria', '03-48712345', 'Sara Hassan', DATE '2012-03-20', 'Sub', 1);

INSERT INTO Branches (branch_id, branch_code, branch_name, address, city, region, phone, manager_name, opening_date, branch_type, is_active) VALUES
(3, 'BR003', 'Giza Branch', '78 Pyramids Road', 'Giza', 'Greater Cairo', '02-35567890', 'Omar Khaled', DATE '2015-06-10', 'Sub', 1);

INSERT INTO Branches (branch_id, branch_code, branch_name, address, city, region, phone, manager_name, opening_date, branch_type, is_active) VALUES
(4, 'BR004', 'Heliopolis Branch', '234 El Hegaz Street', 'Cairo', 'Greater Cairo', '02-22445678', 'Mona Ibrahim', DATE '2018-09-05', 'Sub', 1);

INSERT INTO Branches (branch_id, branch_code, branch_name, address, city, region, phone, manager_name, opening_date, branch_type, is_active) VALUES
(5, 'BR005', 'Mansoura Branch', '56 El Gomhoria Street', 'Mansoura', 'Dakahlia', '050-2234567', 'Hassan Ali', DATE '2020-02-28', 'Sub', 1);


-- 2) Customers
INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (1, '29012345678901', 'Ahmed', 'Hassan', 'ahmed.hassan@example.com', '01012345678', DATE '1990-01-29', 'Male', '15 Nile Street, Zamalek', 'Cairo', 'Egypt', DATE '2020-01-15', 'Individual', 750, 45000.00, 'Employed', 1, 'SYSTEM', TIMESTAMP '2020-01-15 10:30:00');

INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (2, '85073456789012', 'Fatma', 'Ali', 'fatma.ali@example.com', '01098765432', DATE '1985-07-12', 'Female', '28 Port Said Street', 'Alexandria', 'Egypt', DATE '2019-05-22', 'Individual', 680, 38000.00, 'Employed', 1, 'SYSTEM', TIMESTAMP '2019-05-22 14:20:00');

INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (3, '92114567890123', 'Mohamed', 'Farouk', 'mohamed.farouk@example.com', '01155443322', DATE '1992-11-08', 'Male', '67 El Tahrir Street', 'Giza', 'Egypt', DATE '2021-03-10', 'Individual', 720, 52000.00, 'Self-Employed', 1, 'SYSTEM', TIMESTAMP '2021-03-10 09:15:00');

INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (4, '88045678901234', 'Nadia', 'Mahmoud', 'nadia.mahmoud@example.com', '01023456789', DATE '1988-04-15', 'Female', '123 El Nasr Street', 'Cairo', 'Egypt', DATE '2018-11-30', 'Individual', 800, 65000.00, 'Employed', 1, 'SYSTEM', TIMESTAMP '2018-11-30 16:45:00');

INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (5, '95065789012345', 'Omar', 'Said', 'omar.said@example.com', '01134567890', DATE '1995-06-20', 'Male', '89 El Corniche', 'Alexandria', 'Egypt', DATE '2022-08-14', 'Individual', 650, 35000.00, 'Employed', 1, 'SYSTEM', TIMESTAMP '2022-08-14 11:00:00');

INSERT INTO Customers (customer_id, national_id, first_name, last_name, email, phone, date_of_birth, gender, address, city, country, registration_date, customer_type, credit_score, annual_income, employment_status, is_active, created_by, created_date)
VALUES (6, '12345678901234', 'TechCorp Solutions', '', 'info@techcorp.com', '02-25551234', NULL, 'Corporate', '456 Business District', 'Cairo', 'Egypt', DATE '2019-01-20', 'Corporate', 850, 2500000.00, 'Active Business', 1, 'SYSTEM', TIMESTAMP '2019-01-20 10:00:00');


-- 3) Accounts
INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(1, '1001234567890123', 1, 1, 'Savings', 'EGP', 15750.50, DATE '2020-01-15', NULL, 'Active', 3.5, 1000.00, 0.00, 'SYSTEM', TIMESTAMP '2020-01-15 10:30:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(2, '1001234567890124', 1, 1, 'Current', 'EGP', 8420.75, DATE '2020-02-01', NULL, 'Active', 0.0, 500.00, 5000.00, 'SYSTEM', TIMESTAMP '2020-02-01 11:15:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(3, '2002345678901234', 2, 2, 'Savings', 'EGP', 22100.25, DATE '2019-05-22', NULL, 'Active', 3.5, 1000.00, 0.00, 'SYSTEM', TIMESTAMP '2019-05-22 14:20:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(4, '3003456789012345', 3, 3, 'Current', 'EGP', 31500.00, DATE '2021-03-10', NULL, 'Active', 0.0, 500.00, 10000.00, 'SYSTEM', TIMESTAMP '2021-03-10 09:15:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(5, '4004567890123456', 4, 4, 'Savings', 'EGP', 45200.80, DATE '2018-11-30', NULL, 'Active', 4.0, 2000.00, 0.00, 'SYSTEM', TIMESTAMP '2018-11-30 16:45:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(6, '4004567890123457', 4, 4, 'Fixed Deposit', 'EGP', 100000.00, DATE '2020-06-15', DATE '2025-06-15', 'Active', 8.5, 10000.00, 0.00, 'SYSTEM', TIMESTAMP '2020-06-15 10:00:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(7, '5005678901234567', 5, 2, 'Savings', 'EGP', 12800.30, DATE '2022-08-14', NULL, 'Active', 3.5, 1000.00, 0.00, 'SYSTEM', TIMESTAMP '2022-08-14 11:00:00');

INSERT INTO Accounts (account_id, account_number, customer_id, branch_id, account_type, currency, balance, opening_date, closing_date, status, interest_rate, minimum_balance, overdraft_limit, created_by, created_date) VALUES
(8, '6006789012345678', 6, 1, 'Current', 'EGP', 750000.00, DATE '2019-01-20', NULL, 'Active', 0.0, 50000.00, 500000.00, 'SYSTEM', TIMESTAMP '2019-01-20 10:00:00');


-- 4) Employees
-- insert a few managers first (manager_id = NULL)
INSERT INTO Employees (employee_id, employee_code, first_name, last_name, email, phone, hire_date, position, department, branch_id, manager_id, salary, status)
VALUES (1, 'EMP001', 'Ali', 'Kamal', 'ali.kamal@bms.local', '01011223344', DATE '2015-03-01', 'Branch Manager', 'Operations', 1, NULL, 15000.00, 'Active');

INSERT INTO Employees (employee_id, employee_code, first_name, last_name, email, phone, hire_date, position, department, branch_id, manager_id, salary, status)
VALUES (2, 'EMP002', 'Sara', 'Mostafa', 'sara.mostafa@bms.local', '01022334455', DATE '2018-07-10', 'Loan Officer', 'Loans', 4, 1, 12000.00, 'Active');

INSERT INTO Employees (employee_id, employee_code, first_name, last_name, email, phone, hire_date, position, department, branch_id, manager_id, salary, status)
VALUES (3, 'EMP003', 'Mohamed', 'Youssef', 'mohamed.youssef@bms.local', '01033445566', DATE '2019-01-20', 'Teller', 'Operations', 2, 1, 9000.00, 'Active');

INSERT INTO Employees (employee_id, employee_code, first_name, last_name, email, phone, hire_date, position, department, branch_id, manager_id, salary, status)
VALUES (4, 'EMP004', 'Nour', 'Ibrahim', 'nour.ibrahim@bms.local', '01044556677', DATE '2020-11-05', 'IT Specialist', 'IT', 1, NULL, 13000.00, 'Active');


-- 5) Cards
INSERT INTO Cards (card_id, card_number, account_id, card_type, card_brand, issue_date, expiry_date, cvv, pin_hash, status, daily_limit, monthly_limit, credit_limit, available_credit, last_used_date, is_contactless)
VALUES (1, '4532123456789012', 1, 'Debit', 'Visa', DATE '2020-01-20', DATE '2025-01-31', '123', 'hash123', 'Active', 5000.00, 50000.00, 0.00, 0.00, TIMESTAMP '2024-08-05 14:30:00', 1);

INSERT INTO Cards (card_id, card_number, account_id, card_type, card_brand, issue_date, expiry_date, cvv, pin_hash, status, daily_limit, monthly_limit, credit_limit, available_credit, last_used_date, is_contactless)
VALUES (2, '5412345678901234', 2, 'Debit', 'Mastercard', DATE '2020-02-05', DATE '2025-02-28', '456', 'hash456', 'Active', 3000.00, 30000.00, 0.00, 0.00, TIMESTAMP '2024-08-06 09:15:00', 0);

INSERT INTO Cards (card_id, card_number, account_id, card_type, card_brand, issue_date, expiry_date, cvv, pin_hash, status, daily_limit, monthly_limit, credit_limit, available_credit, last_used_date, is_contactless)
VALUES (3, '4532234567890123', 3, 'Debit', 'Visa', DATE '2019-05-25', DATE '2024-05-31', '789', 'hash789', 'Active', 4000.00, 40000.00, 0.00, 0.00, TIMESTAMP '2024-08-04 16:20:00', 1);

INSERT INTO Cards (card_id, card_number, account_id, card_type, card_brand, issue_date, expiry_date, cvv, pin_hash, status, daily_limit, monthly_limit, credit_limit, available_credit, last_used_date, is_contactless)
VALUES (4, '5412456789012345', 5, 'Credit', 'Mastercard', DATE '2018-12-01', DATE '2026-11-30', '321', 'hash321', 'Active', 10000.00, 100000.00, 80000.00, 75200.80, TIMESTAMP '2024-08-07 12:45:00', 1);

INSERT INTO Cards (card_id, card_number, account_id, card_type, card_brand, issue_date, expiry_date, cvv, pin_hash, status, daily_limit, monthly_limit, credit_limit, available_credit, last_used_date, is_contactless)
VALUES (5, '4532345678901234', 7, 'Debit', 'Visa', DATE '2022-08-20', DATE '2027-08-31', '654', 'hash654', 'Active', 2500.00, 25000.00, 0.00, 0.00, TIMESTAMP '2024-08-03 11:10:00', 0);


-- 6) ATMs
INSERT INTO ATMs (atm_id, atm_code, location, address, city, branch_id, installation_date, status, cash_capacity, current_cash, last_refill_date, model, vendor)
VALUES (1, 'ATM001', 'Cairo Main Branch', '123 Tahrir Square, Downtown, Cairo', 'Cairo', 1, DATE '2020-01-20', 'Active', 500000.00, 425000.00, TIMESTAMP '2024-08-07 08:00:00', 'NCR SelfServ 38', 'NCR');

INSERT INTO ATMs (atm_id, atm_code, location, address, city, branch_id, installation_date, status, cash_capacity, current_cash, last_refill_date, model, vendor)
VALUES (2, 'ATM002', 'Alexandria Branch', '45 Corniche Street, Alexandria', 'Alexandria', 2, DATE '2020-03-15', 'Active', 400000.00, 380000.00, TIMESTAMP '2024-08-06 10:00:00', 'Diebold DN300', 'Diebold');

INSERT INTO ATMs (atm_id, atm_code, location, address, city, branch_id, installation_date, status, cash_capacity, current_cash, last_refill_date, model, vendor)
VALUES (3, 'ATM003', 'City Stars Mall', 'City Stars Mall, Heliopolis, Cairo', 'Cairo', 1, DATE '2021-05-10', 'Active', 300000.00, 285000.00, TIMESTAMP '2024-08-05 12:00:00', 'Wincor ProCash 3000', 'Wincor');


-- 7) Transactions
INSERT INTO Transactions (transaction_id, transaction_reference, account_id, transaction_type, transaction_category, amount, currency, transaction_date, value_date, description, reference_number, channel, location, status, balance_after, fees, exchange_rate, merchant_name, merchant_category, processed_by, authorized_by)
VALUES (1, 'TXN2024080700001', 1, 'Withdrawal', 'ATM', 500.00, 'EGP', TIMESTAMP '2024-08-07 10:15:30', DATE '2024-08-07', 'ATM Cash Withdrawal', 'ATM001', 'ATM', 'Cairo Main Branch ATM', 'Completed', 15250.50, 5.00, 1.0000, NULL, NULL, 'ATM_SYS', 'AUTO');

INSERT INTO Transactions (transaction_id, transaction_reference, account_id, transaction_type, transaction_category, amount, currency, transaction_date, value_date, description, reference_number, channel, location, status, balance_after, fees, exchange_rate, merchant_name, merchant_category, processed_by, authorized_by)
VALUES (2, 'TXN2024080700002', 3, 'Deposit', 'Branch', 2000.00, 'EGP', TIMESTAMP '2024-08-07 11:30:00', DATE '2024-08-07', 'Cash Deposit at Branch', 'DEP001', 'Branch', 'Alexandria Branch', 'Completed', 24100.25, 0.00, 1.0000, NULL, NULL, 'EMP002', 'EMP002');

INSERT INTO Transactions (transaction_id, transaction_reference, account_id, transaction_type, transaction_category, amount, currency, transaction_date, value_date, description, reference_number, channel, location, status, balance_after, fees, exchange_rate, merchant_name, merchant_category, processed_by, authorized_by)
VALUES (3, 'TXN2024080700003', 4, 'Transfer', 'Online', 1500.00, 'EGP', TIMESTAMP '2024-08-07 14:20:15', DATE '2024-08-07', 'Online Transfer', 'TRF001', 'Internet', 'Online Banking', 'Completed', 30000.00, 10.00, 1.0000, NULL, NULL, 'ONLINE_SYS', 'AUTO');

INSERT INTO Transactions (transaction_id, transaction_reference, account_id, transaction_type, transaction_category, amount, currency, transaction_date, value_date, description, reference_number, channel, location, status, balance_after, fees, exchange_rate, merchant_name, merchant_category, processed_by, authorized_by)
VALUES (4, 'TXN2024080600004', 5, 'Purchase', 'POS', 250.75, 'EGP', TIMESTAMP '2024-08-06 18:45:22', DATE '2024-08-06', 'POS Purchase', 'POS123', 'POS', 'Carrefour Mall', 'Completed', 44950.05, 0.00, 1.0000, 'Carrefour', 'Supermarket', 'POS_SYS', 'AUTO');

INSERT INTO Transactions (transaction_id, transaction_reference, account_id, transaction_type, transaction_category, amount, currency, transaction_date, value_date, description, reference_number, channel, location, status, balance_after, fees, exchange_rate, merchant_name, merchant_category, processed_by, authorized_by)
VALUES (5, 'TXN2024080500005', 8, 'Payment', 'Online', 25000.00, 'EGP', TIMESTAMP '2024-08-05 09:30:00', DATE '2024-08-05', 'Salary Payment', 'SAL001', 'Internet', 'Corporate Banking', 'Completed', 725000.00, 15.00, 1.0000, NULL, NULL, 'CORP_SYS', 'EMP001');


-- 8) ATM_Transactions (referencing Transactions, ATMs, Cards)
INSERT INTO ATM_Transactions (atm_transaction_id, transaction_id, atm_id, card_id, transaction_type, amount, fee, transaction_time, status, error_code, receipt_printed)
VALUES (1, 1, 1, 1, 'Withdrawal', 500.00, 5.00, TIMESTAMP '2024-08-07 10:15:30', 'Completed', NULL, 1);

INSERT INTO ATM_Transactions (atm_transaction_id, transaction_id, atm_id, card_id, transaction_type, amount, fee, transaction_time, status, error_code, receipt_printed)
VALUES (2, 2, 2, 2, 'Balance Inquiry', NULL, 0.00, TIMESTAMP '2024-08-06 11:00:00', 'Completed', NULL, 1);

INSERT INTO ATM_Transactions (atm_transaction_id, transaction_id, atm_id, card_id, transaction_type, amount, fee, transaction_time, status, error_code, receipt_printed)
VALUES (3, 3, 3, 3, 'PIN Change', NULL, 0.00, TIMESTAMP '2024-08-05 15:00:00', 'Completed', NULL, 1);


-- 9) Investment_Products
INSERT INTO Investment_Products (product_id, product_code, product_name, product_type, risk_level, minimum_investment, expected_return, maturity_period_months, currency, is_active, launch_date, description)
VALUES (1, 'INV001', 'High Yield Savings Certificate', 'Certificate of Deposit', 'Low', 10000.00, 7.50, 12, 'EGP', 1, DATE '2020-01-01', 'Safe investment with guaranteed returns');

INSERT INTO Investment_Products (product_id, product_code, product_name, product_type, risk_level, minimum_investment, expected_return, maturity_period_months, currency, is_active, launch_date, description)
VALUES (2, 'INV002', 'Equity Growth Fund', 'Mutual Fund', 'High', 5000.00, 12.00, 60, 'EGP', 1, DATE '2019-06-15', 'Diversified equity portfolio for long-term growth');

INSERT INTO Investment_Products (product_id, product_code, product_name, product_type, risk_level, minimum_investment, expected_return, maturity_period_months, currency, is_active, launch_date, description)
VALUES (3, 'INV003', 'Government Bond Fund', 'Bond', 'Low', 1000.00, 6.80, 36, 'EGP', 1, DATE '2021-03-01', 'Investment in government securities');


-- 10) Customer_Investments
INSERT INTO Customer_Investments (investment_id, customer_id, product_id, account_id, investment_amount, purchase_date, maturity_date, current_value, units_owned, unit_price, status)
VALUES (1, 1, 1, 1, 15000.00, DATE '2022-01-10', DATE '2023-01-10', 15750.00, 150.0000, 105.0000, 'Matured');

INSERT INTO Customer_Investments (investment_id, customer_id, product_id, account_id, investment_amount, purchase_date, maturity_date, current_value, units_owned, unit_price, status)
VALUES (2, 2, 2, 3, 10000.00, DATE '2021-06-01', DATE '2026-06-01', 12000.00, 200.0000, 60.0000, 'Active');

INSERT INTO Customer_Investments (investment_id, customer_id, product_id, account_id, investment_amount, purchase_date, maturity_date, current_value, units_owned, unit_price, status)
VALUES (3, 6, 3, 8, 500000.00, DATE '2019-02-10', DATE '2022-02-10', 530000.00, 5000.0000, 106.0000, 'Redeemed');


-- 11) Loans
INSERT INTO Loans (loan_id, loan_number, customer_id, branch_id, loan_type, loan_amount, currency, interest_rate, term_months, monthly_payment, outstanding_balance, application_date, approval_date, disbursement_date, maturity_date, status, collateral_type, collateral_value, purpose, approved_by, loan_officer)
VALUES (1, 'LN2021001', 3, 3, 'Personal', 50000.00, 'EGP', 12.5, 36, 1666.67, 35000.00, DATE '2021-03-15', DATE '2021-04-01', DATE '2021-04-05', DATE '2024-04-05', 'Active', 'Salary Assignment', 52000.00, 'Personal expenses', 'LOAN_MGR_001', 'Omar Khaled');

INSERT INTO Loans (loan_id, loan_number, customer_id, branch_id, loan_type, loan_amount, currency, interest_rate, term_months, monthly_payment, outstanding_balance, application_date, approval_date, disbursement_date, maturity_date, status, collateral_type, collateral_value, purpose, approved_by, loan_officer)
VALUES (2, 'LN2020002', 4, 4, 'Home', 800000.00, 'EGP', 8.75, 240, 7245.50, 750000.00, DATE '2020-03-01', DATE '2020-04-15', DATE '2020-05-01', DATE '2040-05-01', 'Active', 'Real Estate', 900000.00, 'Home Purchase', 'LOAN_MGR_002', 'Mona Ibrahim');

INSERT INTO Loans (loan_id, loan_number, customer_id, branch_id, loan_type, loan_amount, currency, interest_rate, term_months, monthly_payment, outstanding_balance, application_date, approval_date, disbursement_date, maturity_date, status, collateral_type, collateral_value, purpose, approved_by, loan_officer)
VALUES (3, 'LN2022003', 1, 1, 'Car', 180000.00, 'EGP', 10.25, 60, 3850.00, 155000.00, DATE '2022-01-10', DATE '2022-02-01', DATE '2022-02-15', DATE '2027-02-15', 'Active', 'Vehicle', 180000.00, 'Car Purchase', 'LOAN_MGR_003', 'Ahmed Mohamed');


-- 12) Loan_Payments
INSERT INTO Loan_Payments (payment_id, loan_id, payment_date, due_date, amount_due, amount_paid, principal_amount, interest_amount, late_fee, payment_status, payment_method, receipt_number, processed_by)
VALUES (1, 1, DATE '2024-07-01', DATE '2024-07-01', 1666.67, 1666.67, 1400.00, 266.67, 0.00, 'Paid', 'Bank Transfer', 'RCPT20240701_001', 'EMP001');

INSERT INTO Loan_Payments (payment_id, loan_id, payment_date, due_date, amount_due, amount_paid, principal_amount, interest_amount, late_fee, payment_status, payment_method, receipt_number, processed_by)
VALUES (2, 1, DATE '2024-08-01', DATE '2024-08-01', 1666.67, 1600.00, 1350.00, 250.00, 16.67, 'Partial', 'Cash', 'RCPT20240801_002', 'EMP002');

INSERT INTO Loan_Payments (payment_id, loan_id, payment_date, due_date, amount_due, amount_paid, principal_amount, interest_amount, late_fee, payment_status, payment_method, receipt_number, processed_by)
VALUES (3, 2, DATE '2024-07-15', DATE '2024-07-15', 7245.50, 7245.50, 7000.00, 245.50, 0.00, 'Paid', 'Cheque', 'RCPT20240715_003', 'EMP003');

INSERT INTO Loan_Payments (payment_id, loan_id, payment_date, due_date, amount_due, amount_paid, principal_amount, interest_amount, late_fee, payment_status, payment_method, receipt_number, processed_by)
VALUES (4, 3, DATE '2024-07-20', DATE '2024-07-20', 3850.00, 3850.00, 3500.00, 350.00, 0.00, 'Paid', 'Bank Transfer', 'RCPT20240720_004', 'EMP001');


-- Finalize
COMMIT;
