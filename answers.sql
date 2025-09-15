
-- Question 1
-- Show total payment amount for each payment date
-- Sorted by payment date in descending order, top 5 latest dates
SELECT paymentDate, SUM(amount) AS totalAmount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2
-- Find the average credit limit of each customer
SELECT customerName, country, AVG(creditLimit) AS avgCreditLimit
FROM customers
GROUP BY customerName, country;

-- Question 3 
-- Find total price of products ordered (aggregated per productCode)
-- (total price = SUM(quantityOrdered * priceEach))
SELECT productCode, SUM(quantityOrdered) AS totalQuantity, 
       SUM(quantityOrdered * priceEach) AS totalPrice
FROM orderdetails
GROUP BY productCode;

-- Question 4
-- Find the highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highestAmount
FROM payments
GROUP BY checkNumber;
