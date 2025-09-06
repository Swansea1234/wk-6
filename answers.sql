Question 1:
This query uses an INNER JOIN to combine the 'employees' and 'offices' tables.
It retrieves the first name, last name, email, and office code for all employees
where there is a matching officeCode in both tables.

SELECT
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM
    employees AS e
INNER JOIN
    offices AS o ON e.officeCode = o.officeCode;

Question 2:
This query uses a LEFT JOIN to combine the 'products' and 'productlines' tables.
It retrieves all products, along with their product vendor and product line details.
If a product does not have a matching product line, the product line columns will be NULL.

SELECT
    p.productName,
    p.productVendor,
    pl.productLine
FROM
    products AS p
LEFT JOIN
    productlines AS pl ON p.productLine = pl.productLine;

Question 3:
This query uses a RIGHT JOIN to combine the 'customers' and 'orders' tables.
It retrieves the order date, shipped date, status, and customer number for all orders,
along with matching customer data. It is then limited to the first 10 orders.

SELECT
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM
    customers AS c
RIGHT JOIN
    orders AS o ON c.customerNumber = o.customerNumber
LIMIT 10;



