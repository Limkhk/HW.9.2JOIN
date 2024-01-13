-- Вараинт 1
SELECT product_name
FROM ORDERS
WHERE customer_id IN (
    SELECT id
    FROM CUSTOMERS
    WHERE LOWER(name) = 'alexey'
);

-- Вараинт 2
SELECT o.product_name
FROM CUSTOMERS c,
     ORDERS o
WHERE c.id = o.customer_id
  AND LOWER(name) = 'alexey';