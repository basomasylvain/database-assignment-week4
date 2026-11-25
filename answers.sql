-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations
-- Database: sales

USE sales;

-- Question 1: Total payment amount for each payment date (top 5 latest dates)
-- Displays paymentDate and total amount paid on that date, sorted descending
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Average credit limit of each customer
-- Displays customerName, country, and average creditLimit, grouped by customerName and country
SELECT customerName, country, AVG(creditLimit) AS averageCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3: Total price of products ordered
-- Displays productCode, quantityOrdered, and total price (quantityOrdered * priceEach),
-- grouped by productCode and quantityOrdered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4: Highest payment amount for each check number
-- Displays checkNumber and highest amount paid for that check number, grouped by checkNumber
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
