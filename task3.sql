SELECT u.name AS name,
       u.phone AS phone,
       SUM(ord.subtotal) AS sum,
       AVG(ord.subtotal) AS avrege_pay,
       MAX(ord.created) AS date
FROM users u
    JOIN orders ord ON u.id = ord.userid
GROUP BY u.id, u.name, u.phone