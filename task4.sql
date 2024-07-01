SELECT DepartmentId, MAX(Salary) AS max
FROM users
GROUP BY DepartmentId

SELECT *
FROM users
WHERE DepartmentId = 3 AND Salary > 90000;

-- В пункте 3 все зависит от "архитектуры", но т.к в предыдущих пунктах юзались департаменты и зп,
-- я бы повесил инюексы на них если таблица связана с бухгалтерией.
-- По id бы в этом случае скорее всего не делал, но здесь большое поле для холивара.
-- Ну например
CREATE INDEX idx_departmentId ON users(DepartmentId);
