-- 1
UPDATE users SET updated_at = NOW(), created_at = NOW();

-- 2
ALTER TABLE users 
MODIFY COLUMN updated_at DATETIME,
MODIFY COLUMN created_at DATETIME;

-- 3

SELECT * FROM storehouses_products ORDER BY value DESC;

-- 1 Агрегация 

SELECT AVG(id) FROM users;
-- 2 Агрегация

SELECT
    DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(updated_at, 6, 10))) AS week_day,
    COUNT(*) AS amount
FROM
    users
GROUP BY 
    week_day
ORDER BY
	amount DESC;

