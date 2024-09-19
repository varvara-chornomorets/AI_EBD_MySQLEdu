CREATE DATABASE EP;

USE EP;


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(30),
    birth_date DATE
);

CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(50),
    balance DECIMAL(10, 2),
    opened_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(50),
    amount DECIMAL(10, 2),
    transaction_date DATE,
    description VARCHAR(255),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);

CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10, 2),
    loan_type VARCHAR(50),
    loan_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_amount DECIMAL(10, 2),
    payment_date DATE,
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id)
);

