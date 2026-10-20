USE mydb;


SELECT COUNT(*) AS total_rows
FROM (
    SELECT od.order_id
    FROM order_details AS od
	INNER JOIN orders AS o
		ON od.order_id = o.id
	LEFT JOIN customers AS c
		ON o.customer_id = c.id
	RIGHT JOIN products AS p
		ON od.product_id = p.id
	INNER JOIN categories AS cat
		ON p.category_id = cat.id
	INNER JOIN employees AS e
		ON o.employee_id = e.employee_id
	INNER JOIN shippers AS sh
		ON o.shipper_id = sh.id
	INNER JOIN suppliers AS sup
		ON p.supplier_id = sup.id
	WHERE o.employee_id > 3
		AND o.employee_id <= 10
) AS joined_data;



SELECT
    cat.name,
    COUNT(*) AS row_count,
    AVG(od.quantity) AS average_quantity
FROM order_details AS od
	INNER JOIN orders AS o
		ON od.order_id = o.id
	LEFT JOIN customers AS c
		ON o.customer_id = c.id
	RIGHT JOIN products AS p
		ON od.product_id = p.id
	INNER JOIN categories AS cat
		ON p.category_id = cat.id
	INNER JOIN employees AS e
		ON o.employee_id = e.employee_id
	INNER JOIN shippers AS sh
		ON o.shipper_id = sh.id
	INNER JOIN suppliers AS sup
		ON p.supplier_id = sup.id
GROUP BY cat.name
HAVING AVG(od.quantity) > 21
ORDER BY row_count DESC
LIMIT 4 OFFSET 1;
